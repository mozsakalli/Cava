package tools.xcode;

import tools.SourceWriter;

class PBXBuildFile extends PBXNode {
    private var ref:PBXFile;

    public function new(project:PBXProject, ref:PBXFile) {
        super(project, ref.getName());
        this.ref = ref;
    }

    override public function dump(out:SourceWriter) {
        out.println(uuidWithComment() + " = {isa = PBXBuildFile; fileRef = " + ref.uuidWithComment() + "; };");
    }
}