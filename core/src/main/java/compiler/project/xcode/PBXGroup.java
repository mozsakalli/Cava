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

package compiler.project.xcode;

/**
 *
 * @author mustafa
 */
import compiler.backend.SourceWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PBXGroup extends PBXNode {
    private final List<PBXNode>children = new ArrayList<>();
    private final Map<String, PBXGroup> childrenGroups = new HashMap<>();
    private final Map<String, PBXFile> childrenFiles = new HashMap<>();
    private final Type groupType;

    /** possible group types */
    public enum Type {
        GROUP("PBXGroup"),
        VARIANT_GROUP("PBXVariantGroup");

        private String value;
        Type(String s) {
            value = s;
        }
    }

    public PBXGroup(PBXProject project, String name) {
        super(project, name);
        groupType = Type.GROUP;
    }

    public PBXGroup(PBXProject project, String name, Type type) {
        super(project, name);
        groupType = type;
    }

    public <T extends PBXNode> T addChild(T child) {
        this.children.add(child);
        if (child instanceof PBXGroup)
            childrenGroups.put(child.getName(), (PBXGroup) child);
        if (child instanceof PBXFile)
            childrenFiles.put(child.getName(), (PBXFile) child);
        return child;
    }

    public List<PBXNode> getChildren() {
        return children ;
    }

    public List<PBXNode> getSortedChildren(Comparator<? super PBXNode> comparator) {
        List<PBXNode> sortedList = new ArrayList<>();
        sortedList.addAll(children);
        Collections.sort(sortedList, comparator);
        return sortedList;
    }

    public PBXFile getChildFile(String name) {
        return childrenFiles.get(name);
    }

    public PBXGroup getChildGroup(String name) {
        return childrenGroups.get(name);
    }

    public Type getGroupType() {
        return groupType;
    }

    @Override
    public void dump(SourceWriter out) {
        dump(out, null);
    }

    public void dump(SourceWriter out, Comparator<? super PBXNode> comparator) {
        out.println(this.uuidWithComment() + " = {").indent()
        .println("isa = " + groupType.value + ";")
        .println("children = (").indent();

        List<PBXNode> sortedNodes = comparator != null ? getSortedChildren(comparator) : children;
        for (PBXNode node : sortedNodes)
            out.println(node.uuidWithComment() + ",");
        
        out.undent().println(");")
        .println("name = \"" + this.getName() + "\";")
        .println("sourceTree = \"<group>\";")
        .undent()
        .println("};");
    }
}