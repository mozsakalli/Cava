## !!! Looking for contributors developing Intellij plugin !!!

# Cava

Cava is a compiler for Java bytecode to plain C code targeting Ios, Android and OsX,Linux,Windows soon...

Big inspiration comes from RoboVM and MobiVM fork.

## Key Features

** Generates plain C files to allow maximum compatibility on target platform. No assembly code.

** Generates project structures for target platforms. XCode, Android vice versa...

** Supports only a subset of Java Classpath classes to keep application size small. (It can be extended)

** Native ObjC and JNI bindings planning

** Threading and Reflection api supported

** Debugging is in alpha stage

** IntelliJ IDEA plugin is in very early stage

## How it works

Cava checks all required classes and methods from the beginning of main method of application then decompile
class files using Procyon decompiler's Bytecode AST only feature.
After this step every class file converted to equivalent C files and headers.

## How to compile

** Check out the project and in project folder from console enter "mvn clean install"

** Cava requires JDK 1.8 and a Mac XCode with commandline tools installed to test generated sample project.


