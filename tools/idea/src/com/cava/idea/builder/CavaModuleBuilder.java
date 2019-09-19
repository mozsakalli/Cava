package com.cava.idea.builder;

import com.cava.idea.CavaPlugin;
import com.cava.idea.CavaSdkType;
import com.intellij.ide.util.projectWizard.JavaModuleBuilder;
import com.intellij.ide.util.projectWizard.ModuleWizardStep;
import com.intellij.ide.util.projectWizard.WizardContext;
import com.intellij.openapi.fileEditor.FileDocumentManager;
import com.intellij.openapi.module.Module;
import com.intellij.openapi.module.ModuleType;
import com.intellij.openapi.module.StdModuleTypes;
import com.intellij.openapi.options.ConfigurationException;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.roots.LanguageLevelModuleExtension;
import com.intellij.openapi.roots.ModifiableRootModel;
import com.intellij.openapi.roots.ProjectRootManager;
import com.intellij.openapi.roots.ui.configuration.ModulesProvider;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.pom.java.LanguageLevel;
import compiler.CavaOptions;
import compiler.util.PList;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.idea.maven.project.MavenProjectsManager;

import java.io.File;
import java.io.FileOutputStream;

public class CavaModuleBuilder extends JavaModuleBuilder {

    String templateName;
    public String appName;
    public String appId;
    public String mainClass;

    public CavaModuleBuilder(String templateName) {
        this.templateName = templateName;
    }

    @Nullable
    @Override
    public String getBuilderId() {
        return this.getClass().getName() + templateName;
    }

    @Override
    public ModuleType getModuleType() {
        return StdModuleTypes.JAVA;
    }


    @Override
    public ModuleWizardStep[] createWizardSteps(WizardContext wizardContext, ModulesProvider modulesProvider) {
        switch (templateName) {
            case "ios":
                return new ModuleWizardStep[] { new CavaIosAppWizardStep(this) };
        }
        return super.createWizardSteps(wizardContext, modulesProvider);
    }

    @Override
    public void setupRootModel(final ModifiableRootModel modifiableRootModel) throws ConfigurationException {
        CavaSdkType.createSdkIfNotExists();

        ProjectRootManager manager = ProjectRootManager.getInstance(modifiableRootModel.getProject());
        manager.setProjectSdk(CavaPlugin.getSdk());

        //cava supports JDK 1.8
        modifiableRootModel.getModuleExtension(LanguageLevelModuleExtension.class).setLanguageLevel(LanguageLevel.JDK_1_8);

        super.setupRootModel(modifiableRootModel);

        final Project project = modifiableRootModel.getProject();
        final Module module = modifiableRootModel.getModule();
        final VirtualFile contentRootFile = modifiableRootModel.getContentRoots()[0];

        try {
            File root = new File(contentRootFile.getPath());
            CavaOptions.mainClass(mainClass);
            CavaOptions.applicationName(appName);
            CavaOptions.applicationId(appId);
            CavaPlugin.saveCavaProperties(root);

            createPOM(root);

            new File(root, "src/main/java").mkdirs();
            new File(root, "src/main/resources").mkdirs();

            if(templateName.equals("ios")) {
                createPList(root);
                createIosMainClass(root);
            }

            FileDocumentManager.getInstance().saveAllDocuments();
            MavenProjectsManager.getInstance(project).forceUpdateAllProjectsOrFindAllAvailablePomFiles();

        }catch(Exception e){
            throw new ConfigurationException(e.getMessage());
        }
    }


    final static String IOSMain =
    "package __package__;\n\n"+
    "public class __name__ {\n" +
    "   public static void main() {\n" +
    "       System.out.println(\"Hello Cava\");\n" +
    "   }\n" +
    "}\n";

    void createIosMainClass(File root) throws Exception {
        String cls = IOSMain.replaceAll("__package__", getPackageName()).replaceAll("__name__", getClassName());
        File file = new File(root, "src/main/java/"+mainClass.replace('.','/')+".java");
        file.getParentFile().mkdirs();
        new FileOutputStream(file).write(cls.getBytes());
    }

    String getPackageName() {
        int p = mainClass.lastIndexOf('.');
        if(p != -1)
            return mainClass.substring(0,p);
        return "";
    }
    String getClassName() {
        int p = mainClass.lastIndexOf('.');
        if(p == -1) return mainClass;
        return mainClass.substring(p+1);
    }

    final  static String POM =
    "<?xml version=\"1.0\"?>\n" +
    "<project xmlns=\"http://maven.apache.org/POM/4.0.0\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n" +
    "         xsi:schemaLocation=\"http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd\">\n" +
    "    <modelVersion>4.0.0</modelVersion>\n" +
    "\n" +
    "    <groupId>__appId__</groupId>\n" +
    "    <artifactId>__appName__</artifactId>\n" +
    "    <version>1.0</version>\n" +
    "\n" +
    "</project>\n";
    void createPOM(File root) throws Exception {
        String pom = POM.replaceAll("__appId__", getPackageName())
                        .replaceAll("__appName__", appName);
        new FileOutputStream(new File(root,"pom.xml")).write(pom.getBytes());
    }

    final static String PLIST =
    "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
    "<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">\n" +
    "<plist version=\"1.0\">\n" +
    "<dict>\n" +
    "\t<key>CFBundleDevelopmentRegion</key>\n" +
    "\t<string>$(DEVELOPMENT_LANGUAGE)</string>\n" +
    "\t<key>CFBundleExecutable</key>\n" +
    "\t<string>$(EXECUTABLE_NAME)</string>\n" +
    "\t<key>CFBundleIdentifier</key>\n" +
    "\t<string>com.cava.sample</string>\n" +
    "\t<key>CFBundleInfoDictionaryVersion</key>\n" +
    "\t<string>6.0</string>\n" +
    "\t<key>CFBundleName</key>\n" +
    "\t<string>$(PRODUCT_NAME)</string>\n" +
    "\t<key>CFBundlePackageType</key>\n" +
    "\t<string>APPL</string>\n" +
    "\t<key>CFBundleShortVersionString</key>\n" +
    "\t<string>1.0</string>\n" +
    "\t<key>CFBundleVersion</key>\n" +
    "\t<string>1</string>\n" +
    "\t<key>LSRequiresIPhoneOS</key>\n" +
    "\t<true/>\n" +
    "\t<key>UILaunchStoryboardName</key>\n" +
    "\t<string></string>\n" +
    "\t<key>UIMainStoryboardFile</key>\n" +
    "\t<string></string>\n" +
    "\t<key>UIRequiredDeviceCapabilities</key>\n" +
    "\t<array>\n" +
    "\t\t<string>armv7</string>\n" +
    "\t\t<true/>\n" +
    "\t</array>\n" +
    "\t<key>UIRequiresFullScreen</key>\n" +
    "\t<true/>\n" +
    "\t<key>UIStatusBarHidden</key>\n" +
    "\t<true/>\n" +
    "\t<key>UISupportedInterfaceOrientations</key>\n" +
    "\t<array>\n" +
    "\t\t<string>UIInterfaceOrientationPortrait</string>\n" +
    "\t\t<string>UIInterfaceOrientationPortraitUpsideDown</string>\n" +
    "\t</array>\n" +
    "\t<key>UISupportedInterfaceOrientations~ipad</key>\n" +
    "\t<array>\n" +
    "\t\t<string>UIInterfaceOrientationPortrait</string>\n" +
    "\t\t<string>UIInterfaceOrientationPortraitUpsideDown</string>\n" +
    "\t\t<string>UIInterfaceOrientationLandscapeLeft</string>\n" +
    "\t\t<string>UIInterfaceOrientationLandscapeRight</string>\n" +
    "\t</array>\n" +
    "</dict>\n" +
    "</plist>\n";
    void createPList(File root) throws Exception {
        PList plist = new PList();
        plist.parse(PLIST);
        PList.DictItem dict = (PList.DictItem)plist.getRoot().item(0);
        dict.add("CFBundleIdentifier", new PList.StringItem(appId));
        new FileOutputStream(new File(root, "Info.plist")).write(plist.toString().getBytes());
    }
}
