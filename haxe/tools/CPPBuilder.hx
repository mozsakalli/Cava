package tools;

import haxe.xml.Access;
import sys.io.File;
import sys.FileSystem;

class CPPBuilder extends Builder {

    public var hxcppRoot:String;
    public var codeFiles:Array<String> = [];

    public function new(project:Project) {
        super(project);
        hxcppRoot = Cmd.runCommand("","haxelib",["libpath","hxcpp"]);
        Sys.println("Using HXCPP: "+hxcppRoot);
    }

    function generateHaxeCodes() {
        var d = project.haxeDefs;
        d.push('-D no-compilation');
        var path = '${project.buildPath}/generated';
        if(!FileSystem.exists(path)) FileSystem.createDirectory(path);
        d.push('-cpp $path');

        d.push('-D HXCPP_STACK_LINE');
        d.push('-D HXCPP_STACK_TRACE');
        d.push('-D HXCPP_CHECK_POINTER');
        d.push('-D HXCPP_CPP11');

        var hxml = "";
        for(it in d) {
            hxml += '$it\n';
        }

        File.write('${project.buildPath}/build.hxml', false).writeString(hxml);
        Cmd.runCommand("", "haxe", ['${project.buildPath}/build.hxml']);
        parseBuildXml('${project.buildPath}/generated/Build.xml');
    }

    function parseBuildXml(path:String) {
        var root = new Access(Xml.parse(File.getContent(path)).firstElement());
        for(e in root.elements) {
            if(e.name == "files" && e.att.id == "haxe") {
                for(f in e.elements) {
                    var skip = false;
                    if(f.name == "file") {
                        if(f.has.resolve('if')) {
                            switch(f.att.resolve('if')) {
                                case "HXCPP_DEBUGGER": skip = !project.isDebug;
                            }
                        }
                        if(f.has.resolve('unless')) {
                            switch(f.att.resolve('unless')) {
                                case "HXCPP_DEBUGGER": skip = project.isDebug;
                            }
                        }


                        if(skip) continue;
                        var n = f.att.name;
                        if(n.substr(0,4)=='src/') n = '${project.buildPath}/generated/$n';
                        n = StringTools.replace(n, "${HXCPP}", hxcppRoot);
                        codeFiles.push(n);
                        Sys.println(n);
                    }
                }
            }
        }
    }
    override function build() {
    }
}