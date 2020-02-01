package tools;
import sys.io.File;
import sys.FileSystem;
import tools.xcode.PBXProject;

class IPhoneBuilder extends CPPBuilder {

    public function new(project:Project) {
        super(project);
    }

    override function generateHaxeCodes() {
        var d = project.haxeDefs;
        d.push('-D objc');

        super.generateHaxeCodes();
    }

    override function build() {
        generateHaxeCodes();

        var pbxProject = new PBXProject(project);
        for(code in codeFiles)
            pbxProject.addSourceFile("generated", code);

        pbxProject.addHeaderPath(hxcppRoot+"include/**");
        pbxProject.addHeaderPath('${project.buildPath}/generated/include/**');
        var out = new SourceWriter();
        pbxProject.export(out);

        var path = '${project.buildPath}/project.xcodeproj';
        FileSystem.createDirectory(path);
        File.write('${path}/project.pbxproj', false).writeString(out.code());
    }
}