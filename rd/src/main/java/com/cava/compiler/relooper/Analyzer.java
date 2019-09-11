/*
 * Copyright (C) 2019 Digitoy Games.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.cava.compiler.relooper;

import java.util.HashSet;
import java.util.Set;
import java.util.Map;

/**
 *
 * @author mustafa
 */
public class Analyzer extends RelooperRecursor {

    public Analyzer(ReLooper parent) {
        super(parent);
    }

    // Add a shape to the list of shapes in this Relooper calculation
    void notice(Shape New) {
        New.id = parent.shapeIdCounter++;
        parent.shapes.add(New);
    }

    // Create a list of entries from a block. If LimitTo is provided, only results in that set
    // will appear
    void getBlocksOut(Block source, Set<Block> entries, Set<Block> limitTo) {
        for (Block iter : source.branchesOut.keySet()) {
            if (limitTo == null || limitTo.contains(iter)) {
                entries.add(iter);
            }
        }
    }

    // Converts/processes all branchings to a specific target
    void solipsize(Block target, Branch.FlowType type, Shape ancestor, Set<Block> from) {
        for (Block iter : target.branchesIn) {
            Block prior = iter;
            if (!from.contains(prior)) {
                continue;
            }
            Branch priorOut = prior.branchesOut.get(target);
            priorOut.ancestor = ancestor;
            priorOut.type = type;
            MultipleShape multiple;
            if ((multiple = Shape.isMultiple(ancestor)) != null) {
                multiple.breaks++; // We are breaking out of this Multiple, so need a loop
            }
            //iter++; // carefully increment iter before erasing
            target.branchesIn.remove(prior);
            target.processedBranchesIn.add(prior);
            prior.branchesOut.remove(target);
            prior.processedBranchesOut.put(target, priorOut);
        }
    }

    Shape makeSimple(Set<Block> blocks, Block inner, Set<Block> nextEntries) {
        SimpleShape simple = new SimpleShape();
        notice(simple);
        simple.inner = inner;
        inner.parent = simple;
        if (blocks.size() > 1) {
            blocks.remove(inner);
            getBlocksOut(inner, nextEntries, blocks);
            Set<Block> justInner = new HashSet();
            justInner.add(inner);
            for (Block iter : nextEntries) {
                solipsize(iter, Branch.FlowType.Direct, simple, justInner);
            }
        }
        return simple;
    }

    Shape makeLoop(Set<Block> blocks, Set<Block> entries, Set<Block> nextEntries) {
        // Find the inner blocks in this loop. Proceed backwards from the entries
        // until
        // you reach a seen block, collecting as you go.
        Set<Block> innerBlocks = new HashSet();
        Set<Block> queue = entries;
        while (!queue.isEmpty()) {
            Block curr = queue.iterator().next();
            queue.remove(curr);
            if (!innerBlocks.contains(curr)) {
                // This element is new, mark it as inner and remove from outer
                innerBlocks.add(curr);
                blocks.remove(curr);
                // Add the elements prior to it
                for (Block iter : curr.branchesIn) {
                    queue.add(iter);
                }
            }
        }
        assert (!innerBlocks.isEmpty());

        for (Block curr : innerBlocks) {
            for (Block iter : curr.branchesOut.keySet()) {
                Block possible = iter;
                if (!innerBlocks.contains(possible)) {
                    nextEntries.add(possible);
                }
            }
        }

        LoopShape loop = new LoopShape();
        notice(loop);

        // Solipsize the loop, replacing with break/continue and marking branches
        // as Processed (will not affect later calculations)
        // A. Branches to the loop entries become a continue to this shape
        for (Block iter : entries) {
            solipsize(iter, Branch.FlowType.Continue, loop, innerBlocks);
        }
        // B. Branches to outside the loop (a next entry) become breaks on this
        // shape
        for (Block iter : nextEntries) {
            solipsize(iter, Branch.FlowType.Break, loop, innerBlocks);
        }
        // Finish up
        Shape inner = process(innerBlocks, entries, null);
        loop.inner = inner;
        return loop;
    }
    
    // For each entry, find the independent group reachable by it. The
    // independent group is the entry itself, plus all the blocks it can
    // reach that cannot be directly reached by another entry. Note that we
    // ignore directly reaching the entry itself by another entry.
    //   @param Ignore - previous blocks that are irrelevant
    void findIndependentGroups(Set<Block> entries,
                               Map<Block,Set<Block>> independentGroups,
                               Set<Block> ignore) {

      struct HelperClass {
        BlockBlockSetMap &IndependentGroups;
        BlockBlockMap Ownership; // For each block, which entry it belongs to.
                                 // We have reached it from there.

        HelperClass(BlockBlockSetMap &IndependentGroupsInit)
            : IndependentGroups(IndependentGroupsInit) {}
        void InvalidateWithChildren(Block *New) {
         DEBUG(dbgs() << "InvalidateWithChildren" << "\n");
          // Being in the list means you need to be invalidated
          BlockList ToInvalidate;
          ToInvalidate.push_back(New);
          while (!ToInvalidate.empty()) {
            Block *Invalidatee = ToInvalidate.front();
            ToInvalidate.pop_front();
            Block *Owner = Ownership[Invalidatee];
            // Owner may have been invalidated, do not add to
            // IndependentGroups!
            if (contains(IndependentGroups, Owner))
              IndependentGroups[Owner].remove(Invalidatee);
            if (Ownership[Invalidatee]) { // may have been seen before and
                                          // invalidated already
              Ownership[Invalidatee] = nullptr;
              for (const auto &iter : Invalidatee->BranchesOut) {
                Block *Target = iter.first;
                BlockBlockMap::iterator Known = Ownership.find(Target);
                if (Known != Ownership.end()) {
                  Block *TargetOwner = Known->second;
                  if (TargetOwner)
                    ToInvalidate.push_back(Target);
                }
              }
            }
          }
        }
      };
      HelperClass Helper(IndependentGroups);

      // We flow out from each of the entries, simultaneously.
      // When we reach a new block, we add it as belonging to the one we got to
      // it from.
      // If we reach a new block that is already marked as belonging to someone,
      // it is reachable by two entries and is not valid for any of them.
      // Remove it and all it can reach that have been visited.

      // Being in the queue means we just added this item, and
      // we need to add its children
      BlockList Queue;
      for (const auto &Entry : Entries) {
        Helper.Ownership[Entry] = Entry;
        IndependentGroups[Entry].insert(Entry);
        Queue.push_back(Entry);
      }
      while (!Queue.empty()) {
        Block *Curr = Queue.front();
        Queue.pop_front();
        Block *Owner = Helper.Ownership[Curr]; // Curr must be in the ownership
                                               // map if we are in the queue
        if (!Owner)
          continue; // we have been invalidated meanwhile after being reached
                    // from two entries
        // Add all children
        for (const auto &iter : Curr->BranchesOut) {
          Block *New = iter.first;
          BlockBlockMap::iterator Known = Helper.Ownership.find(New);
          if (Known == Helper.Ownership.end()) {
            // New node. Add it, and put it in the queue
            Helper.Ownership[New] = Owner;
            IndependentGroups[Owner].insert(New);
            Queue.push_back(New);
            continue;
          }
          Block *NewOwner = Known->second;
          if (!NewOwner)
            continue; // We reached an invalidated node
          if (NewOwner != Owner)
            // Invalidate this and all reachable that we have seen - we reached
            // this from two locations
            Helper.InvalidateWithChildren(New);
          // otherwise, we have the same owner, so do nothing
        }
      }

      // Having processed all the interesting blocks, we remain with just one
      // potential issue:
      // If a->b, and a was invalidated, but then b was later reached by
      // someone else, we must invalidate b. To check for this, we go over all
      // elements in the independent groups, if an element has a parent which
      // does *not* have the same owner, we/ must remove it and all its
      // children.

      for (const auto &iter : Entries) {
        BlockSet &CurrGroup = IndependentGroups[iter];
        BlockList ToInvalidate;
        for (const auto &iter : CurrGroup) {
          Block *Child = iter;
          for (const auto &iter : Child->BranchesIn) {
            Block *Parent = iter;
            if (Ignore && contains(*Ignore, Parent))
              continue;
            if (Helper.Ownership[Parent] != Helper.Ownership[Child])
              ToInvalidate.push_back(Child);
          }
        }
        while (!ToInvalidate.empty()) {
          Block *Invalidatee = ToInvalidate.front();
          ToInvalidate.pop_front();
          Helper.InvalidateWithChildren(Invalidatee);
        }
      }

      // Remove empty groups
      for (const auto &iter : Entries)
        if (IndependentGroups[iter].empty())
          IndependentGroups.erase(iter);
    }    
}
