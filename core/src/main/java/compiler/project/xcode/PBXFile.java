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
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

public class PBXFile extends PBXNode {

    private final File file;

    public PBXFile(PBXProject project, File file) {
        super(project, file.getName());
        this.file = file;
    }

    public PBXFile(PBXProject project, String name, File file) {
        super(project, name);
        this.file = file;
    }

    @Override
    public void dump(SourceWriter out) {
        String line;

        line = uuidWithComment() + " = {isa = PBXFileReference;";
        String fileType = getFileType();
        if (fileType != null) {
            line += " lastKnownFileType = " + fileType + ";";
        }
        line += " name = \"" + getName() + "\"";
        if (getName().endsWith(".framework") && file == null) {
            // special case -- system framework (without path)
            line += "; path = System/Library/Frameworks/" + getName() + "; sourceTree = SDKROOT; };";
        } else {
            // try make relative path
            String relativePath = getRelativePath(getProject().getProjectDir(), file);
            if (relativePath != null) {
                line += "; path = \"" + relativePath + "\"; sourceTree = SOURCE_ROOT; };";
            } else {
                line += "; path = \"" + file.getAbsolutePath() + "\"; sourceTree = \"<absolute>\"; };";
            }
        }
        out.println(line);
    }

    private String getFileType() {
        String fileName = getName();
        if (fileName.endsWith(".xib")) {
            return "file.xib";
        } else if (fileName.endsWith(".h")) {
            return "sourcecode.c.h";
        } else if (fileName.endsWith(".m")) {
            return "sourcecode.c.objc";
        } else if (fileName.endsWith(".c")) {
            return "sourcecode.c.c";
        } else if (fileName.endsWith(".storyboard")) {
            return "file.storyboard";
        } else if (fileName.endsWith(".xcassets")) {
            return "folder.assetcatalog";
        } else if (fileName.endsWith(".strings")) {
            return "text.plist.strings";
        } else if (fileName.endsWith(".framework")) {
            return "wrapper.framework";
        } else if (fileName.endsWith(".plist")) {
            return "text.plist.xml";
        } else if (file != null && file.isDirectory()) {
            return "folder";
        }
        return null;
    }

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
    }

}
