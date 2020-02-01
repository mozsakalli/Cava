package tools.xcode;

class PBXProduct extends PBXNode {
    
    public function new(project:PBXProject, name:String) {
        super(project, name);
    }

    override public function dump(out:SourceWriter) {
        out.println('${this.name} = {isa = PBXFileReference; explicitFileType = wrapper.application; includeInIndex = 0; path = "${uuidWithComment()}"; sourceTree = BUILT_PRODUCTS_DIR; };');
    }
    
    
}