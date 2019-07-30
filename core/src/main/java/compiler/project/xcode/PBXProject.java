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
import compiler.Arch;
import compiler.CavaOptions;
import compiler.backend.SourceWriter;
import compiler.project.XCodeProject;
import java.io.File;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class PBXProject extends PBXNode {
    private final XCodeProject xcodeProject;
    private final File projectDir;
    private final Set<String> linkerFlags = new HashSet();
    private final Map<Arch, Set<File>> staticLibs = new HashMap();
    
    private final PBXGroup rootGroup = new PBXGroup(this, "root");;
    private final PBXGroup sourcesGroup = rootGroup.addChild(new PBXGroup(this, "Sources"));;
    private final PBXGroup resourcesGroup = rootGroup.addChild(new PBXGroup(this, "Resources"));
    private final PBXGroup frameworksGroup = rootGroup.addChild(new PBXGroup(this, "Frameworks"));
    private final PBXGroup productGroup = rootGroup.addChild(new PBXGroup(this, "Products"));
    
    private final PBXGroup buildFilesGroup = new PBXGroup(this, "buildFileGroup");;
    private final PBXNode buildConfigurationList = new PBXNode(this, "Build configuration list for PBXProject");
    private final PBXNode buildConfigurationCava = new PBXNode(this, "Release");
    private final PBXNode sourcesBuildPhaseCava = new PBXNode(this, "Sources");
    private final PBXNode frameworksBuildPhaseCava = new PBXNode(this, "Frameworks");
    private final PBXNode buildNativeTarget = new PBXNode(this, CavaOptions.applicationName());
    private final PBXGroup buildResourcesGroup = new PBXGroup(this, "buildResourcesGroup");
    private final PBXNode resourcesBuildPhase = new PBXNode(this, "Resources");
    
    private final PBXProduct productNode = productGroup.addChild(new PBXProduct(this, "cava.app"));
    
    public PBXProject(XCodeProject project) {
        super(null, "Project object");
        this.xcodeProject = project;
        projectDir = project.getProjectDir().getParentFile();
        addResourceFile("", CavaOptions.infoPList());
        
    }

    public File getProjectDir() {
        return projectDir;
    }

    public void addSourceFile(String groupId, File path) {
        PBXGroup group = groupId.isEmpty() ? sourcesGroup : sourcesGroup.getChildGroup(groupId);
        if (group == null)
            group = sourcesGroup.addChild(new PBXGroup(this, groupId));
        PBXFile fileNode = group.addChild(new PBXFile(this, path));

        // add to build group if it is .m file
        if (path.getName().endsWith(".m") || path.getName().endsWith(".c"))
            buildFilesGroup.addChild(new PBXBuildFile(this, fileNode));
    }

    public PBXFile addResourceFile(String groupId, File path) {
        PBXGroup group = groupId.isEmpty() ? resourcesGroup : resourcesGroup.getChildGroup(groupId);
        if (group == null)
            group = resourcesGroup.addChild(new PBXGroup(this, groupId));

        PBXFile pbxFile = null;
        // special case -- files in lproj folders has to be exported as name of .lproj
        String parenName = path.getParentFile().getName();
        if (parenName.endsWith(".lproj")) {
            // add variant group instead
            String name = parenName.substring(0, parenName.length() - ".lproj".length());
            PBXGroup variantGroup = group.getChildGroup(path.getName());
            if (variantGroup == null) {
                variantGroup = group.addChild(new PBXGroup(this, path.getName(), PBXGroup.Type.VARIANT_GROUP));
            }
            
            variantGroup.addChild(pbxFile = new PBXFile(this, name, path));
        } else {
            group.addChild(pbxFile = new PBXFile(this, path));

        }
        return pbxFile;
    }
    
    public void addAssetFile(String groupId, File path) {
        PBXFile pbxFile = addResourceFile(groupId, path);
        buildResourcesGroup.addChild(new PBXBuildFile(this, pbxFile));
    }

    public void addFramework(String name, File path) {
        PBXFile fileNode = frameworksGroup.addChild(new PBXFile(this, name, path));
        buildFilesGroup.addChild(new PBXBuildFile(this, fileNode));
    }

    private void addStaticLibrary(File file, Arch arch) {
        staticLibs.computeIfAbsent(arch, (a) -> new HashSet()).add(file);
    }
    public void addStaticLibrary(String name,File arm64, File armv7, File x86_64, File i386) {
        if(arm64 != null) addStaticLibrary(arm64, Arch.Arm64);
        if(armv7 != null) addStaticLibrary(armv7, Arch.ArmV7);
        if(x86_64 != null) addStaticLibrary(x86_64, Arch.X86_64);
        if(i386 != null) addStaticLibrary(i386, Arch.X86);
        linkerFlags.add("-l"+name);
    }
    
    public void addLinkerFlag(String flag) {
        linkerFlags.add(flag);
    }
    
    public void export(SourceWriter out) {
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
        this.dumpPBXgroups(rootGroup, out, PBXGroup.Type.GROUP);
        out.println("/* End PBXGroup section */").ln();

        // dump now variant groups
        out.println("/* Begin PBVariantXGroup section */");
        this.dumpPBXgroups(rootGroup, out, PBXGroup.Type.VARIANT_GROUP);
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

    private void dumpPBXfiles(PBXGroup group, SourceWriter out) {
        for (PBXNode node : group.getChildren()) {
            if (node instanceof PBXFile || node instanceof PBXProduct)
                node.dump(out);
            else if (node instanceof PBXGroup)
                dumpPBXfiles((PBXGroup) node, out);
        }
    }

    private void dumpPBXgroups(PBXGroup group, SourceWriter out, PBXGroup.Type groupType) {
        if (group.getGroupType() == groupType)
            group.dump(out, PROJECT_ITEM_COMPARATOR);
        for (PBXNode node : group.getChildren()) {
            if (node instanceof PBXGroup) {
                dumpPBXgroups((PBXGroup) node, out, groupType);
            }
        }
    }

    private void dumpPBXBuildFilesfiles(SourceWriter out) {
        for (PBXNode node : buildFilesGroup.getChildren())
            node.dump(out);
    }

    private void dumpPBXBuildResourcesFiles(SourceWriter out) {
        for (PBXNode node : buildResourcesGroup.getChildren())
            node.dump(out);
    }
    
    private void dumpBuildConfigurationList(SourceWriter out) {
        out.println(buildConfigurationList.uuidWithComment() + " = {");
        out.indent().println("isa = XCConfigurationList;")
        .println("buildConfigurations = (")
        .indent().println(buildConfigurationCava.uuidWithComment() + ",").undent()
        .println(");")
        .println("defaultConfigurationName = " + buildConfigurationCava.getName() + ";")
        .undent().println("};");
    }

    private void dumpBuildConfigurationCava(SourceWriter out) {
        out.println(buildConfigurationCava.uuidWithComment() + " = {")
        .indent().println("isa = XCBuildConfiguration;")
        .println("buildSettings = {")
        .indent().println("SDKROOT = iphoneos;")
        .println("PRODUCT_NAME = \"%s\";", CavaOptions.applicationName())
        .println("WRAPPER_EXTENSION = app;")
        .println("INFOPLIST_FILE = \"%s\";", CavaOptions.infoPList().getAbsolutePath())
        .println("IPHONEOS_DEPLOYMENT_TARGET = %s;", xcodeProject.getIosSdk())
        .println("CLANG_ENABLE_OBJC_ARC = NO;")
        .println("OTHER_CFLAGS = \"-fshort-wchar%s\";", CavaOptions.debug() ? " -DJVM_DEBUG -DJVM_DEBUG_PORT="+CavaOptions.debugPort() : "")     
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
        //.println("OTHER_LDFLAGS = \"-lgc\";")
        
        out.undent().println("};")
        .println("name = \"" + buildConfigurationCava.getName() +"\";")
        .undent().println("};");
    }

    private void dumpStaticLibraries(SourceWriter out) {
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
        }
    }
    
    private void dumpLinkerFlags(SourceWriter out) {
        out.println("OTHER_LDFLAGS = (").indent()
           .println("\"$(inherited)\",");
        for(String flag : linkerFlags) {
            out.println("\"%s\",", flag);
        }
        out.undent().println(");");
    }
    
    private void dumpSourcesBuildPhase(SourceWriter out) {
        out.println(sourcesBuildPhaseCava.uuidWithComment() + " = {")
        .indent().println("isa = PBXSourcesBuildPhase;")
        .println("buildActionMask = 2147483647;")
        .println("files = (").indent();
        for (PBXNode node : buildFilesGroup.getChildren())
            if (node.getName().endsWith(".m") || node.getName().endsWith(".c"))
                out.println(node.uuidWithComment() + ",");
        out.undent().println(");")
        .println("runOnlyForDeploymentPostprocessing = 0;")
        .undent().println("};");
    }

    private void dumpFrameworksBuildPhase(SourceWriter out) {
        out.println(frameworksBuildPhaseCava.uuidWithComment() + " = {")
        .indent().println("isa = PBXFrameworksBuildPhase;")
        .println("buildActionMask = 2147483647;")
        .println("files = (").indent();
        for (PBXNode node : buildFilesGroup.getChildren())
            if (node.getName().endsWith(".framework"))
                out.println(node.uuidWithComment() + ",");
        out.undent().println(");")
        .println("runOnlyForDeploymentPostprocessing = 0;")
        .undent().println("};");
    }
    
    private void dumpResourcesBuildPhase(SourceWriter out) {
        out.println(resourcesBuildPhase.uuidWithComment() + " = {")
        .indent().println("isa = PBXResourcesBuildPhase;")
        .println("buildActionMask = 2147483647;")
        .println("files = (").indent();
        for (PBXNode node : buildResourcesGroup.getChildren())
            out.println(node.uuidWithComment() + ",");
        out.undent().println(");")
        .println("runOnlyForDeploymentPostprocessing = 0;")
        .undent().println("};");
        
    }

    private void dumpBuildNativeTarget(SourceWriter out) {
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
        .println("productReference = %s;", productNode.uuidWithComment())
        .println("productType = \"com.apple.product-type.application\";")
        .undent().println("};");
    }

    @Override
    public void dump(SourceWriter out) {
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
        .println("productRefGroup = %s;", productGroup.uuidWithComment())
        .println("projectDirPath = \"\";")
        .println("projectRoot = \"\";")
        .println("targets = (")
        .indent().println(buildNativeTarget.uuidWithComment() + ",").undent()
        .println(");")
        .undent().println("};");
    }

    /** comparator to sort items */
    private Comparator<PBXNode> PROJECT_ITEM_COMPARATOR = new Comparator<PBXNode>() {
        @Override
        public int compare(PBXNode o1, PBXNode o2) {
            // put groups top
            boolean g1 = o1 instanceof PBXGroup;
            boolean g2 = o2 instanceof PBXGroup;
            if (g1 == g2) {
                // both are groups or both are not
                // compare names
                return o1.getName().compareTo(o2.getName());
            } else {
                // node that is group will go top
                return g1 ? -1 : 1;
            }
        }
    };

}