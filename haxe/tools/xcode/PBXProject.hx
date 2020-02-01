package tools.xcode;

import tools.Project;

class PBXProject extends PBXNode {

    var linkerFlags:Array<String> = [];
    var headerSearchPaths:Array<String> = [];
    var compilerFlags:Array<String> = [];
    
    var proj:Project;
    var rootGroup:PBXGroup;
    var sourcesGroup:PBXGroup; 
    var resourcesGroup:PBXGroup;
    var frameworksGroup:PBXGroup;
    var productGroup:PBXGroup;
    
    var buildFilesGroup:PBXGroup;
    var buildConfigurationList:PBXNode; 
    var buildConfigurationCava:PBXNode;
    var sourcesBuildPhaseCava:PBXNode;
    var frameworksBuildPhaseCava:PBXNode;
    var buildNativeTarget:PBXNode;
    var buildResourcesGroup:PBXGroup;
    var resourcesBuildPhase:PBXNode;    
    var productNode:PBXProduct;

    public function new(proj:Project) {
        super(null, "Project");
        this.proj = proj;
        rootGroup = new PBXGroup(this, "root");
        sourcesGroup = cast(rootGroup.addChild(new PBXGroup(this, "Sources")), PBXGroup);
        resourcesGroup = cast(rootGroup.addChild(new PBXGroup(this, "Resources")), PBXGroup);
        frameworksGroup = cast(rootGroup.addChild(new PBXGroup(this, "Frameworks")), PBXGroup);
        productGroup = cast(rootGroup.addChild(new PBXGroup(this, "Products")), PBXGroup);
        buildFilesGroup = new PBXGroup(this, "buildFileGroup");
        buildConfigurationList = new PBXNode(this, "Build configuration list for PBXProject");
        buildConfigurationCava = new PBXNode(this, "Release");
        sourcesBuildPhaseCava = new PBXNode(this, "Sources");
        frameworksBuildPhaseCava = new PBXNode(this, "Frameworks");
        buildNativeTarget = new PBXNode(this, proj.name);
        buildResourcesGroup = new PBXGroup(this, "buildResourcesGroup");
        resourcesBuildPhase = new PBXNode(this, "Resources");
        productNode = cast(productGroup.addChild(new PBXProduct(this, "cava.app")), PBXProduct);
    }

    public function addHeaderPath(path:String) {
        headerSearchPaths.push(path);
    }
    public function addSourceFile(groupId:String, path:String = '') {
        var group = groupId=='' ? sourcesGroup : sourcesGroup.getChildGroup(groupId);
        if (group == null)
            group = cast(sourcesGroup.addChild(new PBXGroup(this, groupId)), PBXGroup);
        var fileNode = cast(group.addChild(new PBXFile(this, path)), PBXFile);

        // add to build group if it is .m file
        if (isSourceFile(path))
            buildFilesGroup.addChild(new PBXBuildFile(this, fileNode));
    }

    public function addResourceFile(groupId:String,path:String):PBXFile {
        var group = groupId=='' ? resourcesGroup : resourcesGroup.getChildGroup(groupId);
        if (group == null)
            group = cast(resourcesGroup.addChild(new PBXGroup(this, groupId)), PBXGroup);

        var pbxFile:PBXFile = null;
        // special case -- files in lproj folders has to be exported as name of .lproj
        /* todo:
        String parenName = path.getParentFile().getName();
        if (parenName.endsWith(".lproj")) {
            // add variant group instead
            String name = parenName.substring(0, parenName.length() - ".lproj".length());
            PBXGroup variantGroup = group.getChildGroup(path.getName());
            if (variantGroup == null) {
                variantGroup = group.addChild(new PBXGroup(this, path.getName(), PBXGroup.Type.VARIANT_GROUP));
            }
            
            variantGroup.addChild(pbxFile = new PBXFile(this, name, path));
        } else*/ {
            group.addChild(pbxFile = new PBXFile(this, path));

        }
        return pbxFile;
    }

    public function export(out:SourceWriter) {
        out.println("// !$*UTF8*$!");
        out.println("{");

        out.indent()
        .println("archiveVersion = 1;")
        .println("classes = {")
        .println("};")
        .println("objectVersion = 46;")
        .println("objects = {")
        .indent();

        // dump file refs
        out.println("/* Begin PBXFileReference section */");
        this.dumpPBXfiles(rootGroup, out);
        out.println("/* End PBXFileReference section */").ln();

        // dump groups
        out.println("/* Begin PBXGroup section */");
        this.dumpPBXgroups(rootGroup, out, PBXGroup.Type_PBXGroup);
        out.println("/* End PBXGroup section */").ln();

        // dump now variant groups
        out.println("/* Begin PBVariantXGroup section */");
        this.dumpPBXgroups(rootGroup, out, PBXGroup.Type_PBXVariantGroup);
        out.println("/* End PBVariantXGroup section */").ln();

        // dump PBXBuildFile refs
        out.println("/* Begin PBXBuildFile section */");
        this.dumpPBXBuildFilesfiles(out);
        this.dumpPBXBuildResourcesFiles(out);
        out.println("/* End PBXBuildFile section */").ln();

        // dump source build phases
        out.println("/* Begin PBXSourcesBuildPhase section */");
        this.dumpSourcesBuildPhase(out);
        out.println("/* End PBXSourcesBuildPhase section */").ln();

        // dump frameworks build phases
        out.println("/* Begin PBXFrameworksBuildPhase section */");
        this.dumpFrameworksBuildPhase(out);
        out.println("/* End PBXFrameworksBuildPhase section */").ln();

        // dump resources build phases
        out.println("/* Begin PBXResourcesBuildPhase section */");
        this.dumpResourcesBuildPhase(out);
        out.println("/* End PBXResourcesBuildPhase section */").ln();
        
        // dump native targets
        out.println("/* Begin PBXNativeTarget section */");
        this.dumpBuildNativeTarget(out);
        out.println("/* End PBXNativeTarget section */").ln();

        // dump BuildConfiguration
        out.println("/* Begin XCBuildConfiguration section */");
        this.dumpBuildConfigurationCava(out);
        out.println("/* End XCBuildConfiguration section */").ln();

        // dump BuildConfigurationList
        out.println("/* Begin XCConfigurationList section */");
        this.dumpBuildConfigurationList(out);
        out.println("/* End XCConfigurationList section */").ln();

        // dump project object -- e.g. self
        out.println("/* Begin PBXProject section */");
        this.dump(out);
        out.println("/* End PBXProject section */").ln();

        out.undent().println("};")
        .println("rootObject = " + this.uuidWithComment() + ";")

        .undent().println("}");
    }

    private function dumpPBXfiles(group:PBXGroup, out:SourceWriter) {
        for (node in group.getChildren()) {
            if (Std.is(node,PBXFile) || Std.is(node,PBXProduct))
                node.dump(out);
            else if (Std.is(node,PBXGroup))
                dumpPBXfiles(cast(node,PBXGroup), out);
        }
    }

    private function dumpPBXgroups(group:PBXGroup, out:SourceWriter, groupType:String) {
        if (group.getGroupType() == groupType)
            group.dump(out/*todo:, PROJECT_ITEM_COMPARATOR*/);
        for (node in group.getChildren()) {
            if (Std.is(node,PBXGroup)) {
                dumpPBXgroups(cast(node,PBXGroup), out, groupType);
            }
        }
    }

    private function dumpPBXBuildFilesfiles(out:SourceWriter) {
        for (node in buildFilesGroup.getChildren())
            node.dump(out);
    }

    private function dumpPBXBuildResourcesFiles(out:SourceWriter) {
        for (node in buildResourcesGroup.getChildren())
            node.dump(out);
    }
    
    private function dumpBuildConfigurationList(out:SourceWriter) {
        out.println(buildConfigurationList.uuidWithComment() + " = {");
        out.indent().println("isa = XCConfigurationList;")
        .println("buildConfigurations = (")
        .indent().println(buildConfigurationCava.uuidWithComment() + ",").undent()
        .println(");")
        .println("defaultConfigurationName = " + buildConfigurationCava.getName() + ";")
        .undent().println("};");
    }

    private function dumpBuildConfigurationCava(out:SourceWriter) {
        out.println(buildConfigurationCava.uuidWithComment() + " = {")
        .indent().println("isa = XCBuildConfiguration;")
        .println("buildSettings = {")
        .indent().println("SDKROOT = iphoneos;")
        .println('PRODUCT_NAME = "${proj.name}";')
        .println("WRAPPER_EXTENSION = app;")
        .println('INFOPLIST_FILE = "Info.plist";')
        .println("IPHONEOS_DEPLOYMENT_TARGET = 8.0;")
        .println("CLANG_ENABLE_OBJC_ARC = NO;")
        //.println("OTHER_CFLAGS = \"-fshort-wchar %s\";", CavaOptions.debug() ? "-DJVM_DEBUG" : "")
        .println("ENABLE_BITCODE = NO;")
        .println("GCC_OPTIMIZATION_LEVEL = s;")        
        .println("COPY_PHASE_STRIP = NO;") 
        .println("DEBUG_INFORMATION_FORMAT = \"dwarf-with-dsym\";") 
        .println("ENABLE_NS_ASSERTIONS = NO;") 
        .println("TARGETED_DEVICE_FAMILY = \"1,2\";") 
        .println("VALID_ARCHS = arm64;");

        //.println("CODE_SIGN_STYLE = Automatic;")
        //.println("DEVELOPMENT_TEAM = 7TN55SRW8B;")
        
        dumpStaticLibraries(out);
        dumpLinkerFlags(out);
        dumpHeaderSearchPaths(out);
        //.println("OTHER_LDFLAGS = \"-lgc\";")
        
        out.undent().println("};")
        .println("name = \"" + buildConfigurationCava.getName() +"\";")
        .undent().println("};");
    }

    private function dumpStaticLibraries(out:SourceWriter) {
        /* todo:
        for(Arch arch : Arch.values()) {
            Set<File> set = staticLibs.get(arch);
            if(set != null) {
                out.println("\"LIBRARY_SEARCH_PATHS[arch=%s]\" = (",arch.getName()).indent()
                   .println("\"$(inherited)\",");
                for(File file : set) {
                    out.println("\"%s\",", file.getAbsolutePath());
                }
            }
            out.undent().println(");");
        }*/
    }
    
    private function dumpLinkerFlags(out:SourceWriter) {
        out.println("OTHER_LDFLAGS = (").indent()
           .println("\"$(inherited)\",");
        for(flag in linkerFlags) {
            out.println('"${flag}",');
        }
        out.undent().println(");");
    }

    function dumpHeaderSearchPaths(out:SourceWriter) {
        out.println("HEADER_SEARCH_PATHS = (").indent()
        .println("\"$(inherited)\",");
        for(flag in headerSearchPaths) {
            out.println('"${flag}",');
        }
        out.undent().println(");");
    }
    
    private function dumpSourcesBuildPhase(out:SourceWriter) {
        out.println(sourcesBuildPhaseCava.uuidWithComment() + " = {")
        .indent().println("isa = PBXSourcesBuildPhase;")
        .println("buildActionMask = 2147483647;")
        .println("files = (").indent();
        for (node in buildFilesGroup.getChildren())
            if (isSourceFile(node.getName()))
                out.println(node.uuidWithComment() + ",");
        out.undent().println(");")
        .println("runOnlyForDeploymentPostprocessing = 0;")
        .undent().println("};");
    }

    private function dumpFrameworksBuildPhase(out:SourceWriter) {
        out.println(frameworksBuildPhaseCava.uuidWithComment() + " = {")
        .indent().println("isa = PBXFrameworksBuildPhase;")
        .println("buildActionMask = 2147483647;")
        .println("files = (").indent();
        for (node in buildFilesGroup.getChildren())
            if (StringTools.endsWith(node.getName(),".framework"))
                out.println(node.uuidWithComment() + ",");
        out.undent().println(");")
        .println("runOnlyForDeploymentPostprocessing = 0;")
        .undent().println("};");
    }
    
    private function dumpResourcesBuildPhase(out:SourceWriter) {
        out.println(resourcesBuildPhase.uuidWithComment() + " = {")
        .indent().println("isa = PBXResourcesBuildPhase;")
        .println("buildActionMask = 2147483647;")
        .println("files = (").indent();
        for (node in buildResourcesGroup.getChildren())
            out.println(node.uuidWithComment() + ",");
        out.undent().println(");")
        .println("runOnlyForDeploymentPostprocessing = 0;")
        .undent().println("};");
        
    }

    private function dumpBuildNativeTarget(out:SourceWriter) {
        out.println(buildNativeTarget.uuidWithComment() + " = {")
        .indent().println("isa = PBXNativeTarget;")
        .println("buildPhases = (")
        .indent().println(sourcesBuildPhaseCava.uuidWithComment() + ",")
        .println(frameworksBuildPhaseCava.uuidWithComment() + ",")
        .println(resourcesBuildPhase.uuidWithComment() + ",")        
        .undent().println(");")
        .println("buildRules = (")
        .println(");")
        .println("dependencies = (")
        .println(");")
        .println("name = \"" + buildNativeTarget.getName() +"\";")
        .println("productName = \"" + buildNativeTarget.getName() +"\";")
        .println('productReference = ${productNode.uuidWithComment()};')
        .println("productType = \"com.apple.product-type.application\";")
        .undent().println("};");
    }

    override public function dump(out:SourceWriter) {
        out.println(uuidWithComment() + " = {")
        .indent().println("isa = PBXProject;")
        .println("buildConfigurationList = " + buildConfigurationList.uuidWithComment() + ";")
        .println("compatibilityVersion = \"Xcode 3.2\";")
        .println("developmentRegion = English;")
        .println("hasScannedForEncodings = 0;")
        .println("knownRegions = (")
        .indent().println("en,").undent()
        .println(");")
        .println("mainGroup = " + this.rootGroup.getUuid() + ";")
        .println('productRefGroup = ${productGroup.uuidWithComment()};')
        .println("projectDirPath = \"\";")
        .println("projectRoot = \"\";")
        .println("targets = (")
        .indent().println(buildNativeTarget.uuidWithComment() + ",").undent()
        .println(");")
        .undent().println("};");
    }

    function isSourceFile(path:String) return StringTools.endsWith(path,'.mm') || StringTools.endsWith(path,'.m') || StringTools.endsWith(path,'.c') || StringTools.endsWith(path,'.cpp');
}