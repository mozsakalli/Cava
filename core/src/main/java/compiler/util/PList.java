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

package compiler.util;

import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 *
 * @author mustafa
 */
public class PList {
    
    RootItem root;
    
    public void parse(File file) throws Exception {
        DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
        parse(dBuilder.parse(file));
    }
    
    public void parse(Document doc) {
        Element el = doc.getDocumentElement();
        if(!el.getNodeName().equals("plist")) throw new RuntimeException("Invalid plist file tag: "+el.getNodeName());
        root = (RootItem)parse(el);
    }
    
    Item parse(Element el) {
        switch(el.getNodeName()) {
            case "plist":
                return parseArray(filterElementNodes(el.getChildNodes()), true);
                
            case "array":    
                return parseArray(filterElementNodes(el.getChildNodes()), false);
                
            case "dict":
                return parseDict(filterElementNodes(el.getChildNodes()));

            case "string":
                return new StringItem(el.getTextContent().trim());
              
            case "true":
                return new BoolItem(true);
                
            case "false":
                return new BoolItem(false);
                
            default:
                throw new RuntimeException("Unknown tag: "+el.getNodeName());
        }
    }
    
    Item parseArray(List<Node> list, boolean isRoot) {
        ArrayItem root = isRoot ? new RootItem() : new ArrayItem();
        for(int i=0; i<list.size(); i++) {
            root.add(parse((Element)list.get(i)));
        }
        return root;
    }
    
    Item parseDict(List<Node> list) {
        DictItem root = new DictItem();
        int i=0;
        while(i < list.size()-1) {
            Element key = (Element)list.get(i++);
            if(!key.getNodeName().equals("key")) throw new RuntimeException(key.getNodeName()+" must be key tag");
            root.add(key.getTextContent().trim(), parse((Element)list.get(i++)));
        }
        return root;
    }
    
   private static List<Node> filterElementNodes(NodeList list) {
        List<Node> result = new ArrayList(list.getLength());
        for (int i = 0; i < list.getLength(); i++) {
            if (list.item(i).getNodeType() == Node.ELEMENT_NODE) {
                result.add(list.item(i));
            }
        }
        return result;
    }
   
    public ArrayItem getRoot() {
        return root;
    }
    
    public String toString() {
        StringBuilder buf = new StringBuilder("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
        "<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">\n<plist version=\"1.0\">\n");
        
        for(Item it : root.nodes) {
            it.dump(buf);
        }
        buf.append("</plist>\n");
        return buf.toString();
    }
    
    public static class Item {
        public void dump(StringBuilder buf){}
    }
    public static class StringItem extends Item {
        String value;
        public StringItem(){}
        public StringItem(String value) { this.value = value; }
        @Override public void dump(StringBuilder buf){
            buf.append("<string>").append(value).append("</string>\n");
        }
        
    }
    public static class BoolItem extends Item {
        boolean value;
        public BoolItem(){}
        public BoolItem(boolean value) { this.value = value; }
        @Override public void dump(StringBuilder buf){
            buf.append("<").append(value).append("/>\n");
        }
    }
    public static class DictItem extends Item {
        Map<String,Item> nodes = new LinkedHashMap();
        public DictItem add(String key, Item value) {
            nodes.put(key, value);
            return this;
        }
        public DictItem remove(String key) {
            nodes.remove(key);
            return this;
        }
        @Override public void dump(StringBuilder buf){
            buf.append("<dict>\n");
            for(Map.Entry<String,Item> e : nodes.entrySet()) {
                buf.append("<key>").append(e.getKey()).append("</key>\n");
                e.getValue().dump(buf);
            }
            buf.append("</dict>\n");
        }
        
    }
    public static class ArrayItem extends Item {
        List<Item> nodes = new ArrayList();
        public void add(Item node) {
            nodes.add(node);
        }
        public int size() {
            return nodes.size();
        }
        public Item item(int index) {
            return nodes.get(index);
        }
        public List<Item> getItems() {
            return nodes;
        }
        @Override public void dump(StringBuilder buf){
            buf.append("<array>\n");
            for(Item it : nodes) {
                it.dump(buf);
            }
            buf.append("</array>\n");
        }        
    }
    public static class RootItem extends ArrayItem {}
    
}
