package tools.xcode;

import haxe.ds.StringMap;

class PBXGroup extends PBXNode {
    var children:Array<PBXNode> = [];
    var childrenGroups:StringMap<PBXGroup> = new StringMap<PBXGroup>();
    var childrenFiles:StringMap<PBXFile> = new StringMap<PBXFile>();
    var groupType:String;

    public inline static var Type_PBXGroup = "PBXGroup";
    public inline static var Type_PBXVariantGroup = "PBXVariantGroup";

    public function new(project:PBXProject, name:String, type:String = "PBXGroup") {
        super(project, name);
        groupType = type;
    }

    public function addChild(child:PBXNode):PBXNode {
        this.children.push(child);
        if (Std.is(child,PBXGroup))
            childrenGroups.set(child.getName(), cast(child,PBXGroup));
        if (Std.is(child,PBXFile))
            childrenFiles.set(child.getName(), cast(child,PBXFile));
        return child;
    }

    public function getChildren():Array<PBXNode> {
        return children ;
    }

    /*
    public function getSortedChildren(Comparator<? super PBXNode> comparator) {
        List<PBXNode> sortedList = new ArrayList<>();
        sortedList.addAll(children);
        Collections.sort(sortedList, comparator);
        return sortedList;
    }*/

    public function getChildFile(name:String):PBXFile {
        return childrenFiles.get(name);
    }

    public function getChildGroup(name:String):PBXGroup {
        return childrenGroups.get(name);
    }

    public function getGroupType():String {
        return groupType;
    }

    override public function dump(out:SourceWriter) {
        out.println(this.uuidWithComment() + " = {").indent()
        .println("isa = " + groupType + ";")
        .println("children = (").indent();

        var sortedNodes = children;
        for (node in sortedNodes)
            out.println(node.uuidWithComment() + ",");
        
        out.undent().println(");")
        .println("name = \"" + this.getName() + "\";")
        .println("sourceTree = \"<group>\";")
        .undent()
        .println("};");
    }
}