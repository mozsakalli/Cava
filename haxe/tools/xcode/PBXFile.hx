package tools.xcode;

import sys.FileSystem;

class PBXFile extends PBXNode {

    private var file:String;

    public function new(project:PBXProject, file:String, name:String = '') {
        super(project, name != '' ? name : file);
        this.file = file;
    }

    override public function dump(out:SourceWriter) {
        var line = uuidWithComment() + " = {isa = PBXFileReference;";
        var fileType = getFileType();
        if (fileType != null) {
            line += " lastKnownFileType = " + fileType + ";";
        }
        line += " name = \"" + getName() + "\"";
        if (StringTools.endsWith(getName(),".framework") && file == null) {
            // special case -- system framework (without path)
            line += "; path = System/Library/Frameworks/" + getName() + "; sourceTree = SDKROOT; };";
        } else {
            // try make relative path
            var relativePath = null;//getRelativePath(getProject().getProjectDir(), file);
            if (relativePath != null) {
                line += "; path = \"" + relativePath + "\"; sourceTree = SOURCE_ROOT; };";
            } else {
                line += "; path = \"" + FileSystem.absolutePath(file) + "\"; sourceTree = \"<absolute>\"; };";
            }
        }
        out.println(line);
    }

    private function getFileType():String {
        var fileName = getName();
        if (StringTools.endsWith(fileName,".xib")) {
            return "file.xib";
        } else if (StringTools.endsWith(fileName,".h")) {
            return "sourcecode.c.h";
        } else if (StringTools.endsWith(fileName,".m")) {
            return "sourcecode.c.objc";
        } else if (StringTools.endsWith(fileName,".c")) {
            return "sourcecode.c.c";
        } else if (StringTools.endsWith(fileName,".storyboard")) {
            return "file.storyboard";
        } else if (StringTools.endsWith(fileName,".xcassets")) {
            return "folder.assetcatalog";
        } else if (StringTools.endsWith(fileName,".strings")) {
            return "text.plist.strings";
        } else if (StringTools.endsWith(fileName,".framework")) {
            return "wrapper.framework";
        } else if (StringTools.endsWith(fileName,".plist")) {
            return "text.plist.xml";
        } else if (file != null && FileSystem.isDirectory(file)) {
            return "folder";
        }
        return null;
    }

    /*
    public static String getRelativePath(File basePath, File path) {
        Path pathFile = Paths.get(path.getAbsolutePath());
        Path pathProject = Paths.get(basePath.getAbsolutePath());
        String relative = pathProject.relativize(pathFile).toString();
        // if there is too much of back path return null to use absolute path
        String str = relative.toString();
        if (relative.length() - relative.replace("../", "").length() > 3 * 5) {
            return null;
        }

        return relative;
    }*/

}
