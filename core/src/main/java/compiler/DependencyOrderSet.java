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

package compiler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author mustafa
 */
public class DependencyOrderSet<K,V> {
    
    class D {
        public int order;
        public Set<D> children = new HashSet();
        public V data;
        
        public D(V data) {
            this.data = data;
        }
    }
    final Map<K, D> map = new HashMap();
    
    public void add(K key, V value) {
        map.put(key, new D(value));
    }
    
    public void depends(K child, K parent) {
        D c = map.get(child);
        D p = map.get(parent);
        if(c != null && p != null && !p.children.contains(c)) {
            p.children.add(c);
            c.order += p.order + 1;
            c.children.forEach(cc -> cc.order += c.order);
        }
    }
    
    public List<V> sort() {
        List<D> tmp = new ArrayList();
        tmp.addAll(map.values());
        tmp.sort((d1,d2) -> d1.order - d2.order);
        
        final List<V> result = new ArrayList();
        tmp.forEach(d -> result.add(d.data));
        return result;
        
    }
}
