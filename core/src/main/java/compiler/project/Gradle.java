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

package compiler.project;

import compiler.CompilerContext;

/**
 *
 * @author mustafa
 */
public class Gradle {
final static String ROOT = 
    "apply plugin: 'com.android.application'\n" +
    "\n" +
    "android {\n" +
    "    compileSdkVersion 28\n" +
    "    defaultConfig {\n" +
    "        applicationId 'com.example.hellojni'\n" +
    "        minSdkVersion 23\n" +
    "        targetSdkVersion 28\n" +
    "        versionCode 1\n" +
    "        versionName \"1.0\"\n" +
    "    }\n" +
    "    buildTypes {\n" +
    "        release {\n" +
    "            minifyEnabled false\n" +
    "        }\n" +
    "    }\n" +
    "    externalNativeBuild {\n" +
    "        cmake {\n" +
    "            version '3.10.2'\n" +
    "            path \"../CMakeLists.txt\"\n" +
    "        }\n" +
    "    }\n" +
    "\n" +
    "    flavorDimensions 'cpuArch'\n" +
    "    productFlavors {\n" +
    "        arm7 {\n" +
    "            dimension 'cpuArch'\n" +
    "            ndk {\n" +
    "                abiFilter 'armeabi-v7a'\n" +
    "            }\n" +
    "        }\n" +
    "        arm8 {\n" +
    "            dimension 'cpuArch'\n" +
    "            ndk {\n" +
    "                abiFilters 'arm64-v8a'\n" +
    "            }\n" +
    "        }\n" +
    "        x86 {\n" +
    "            dimension 'cpuArch'\n" +
    "            ndk {\n" +
    "                abiFilter 'x86'\n" +
    "            }\n" +
    "        }\n" +
    "        x86_64 {\n" +
    "            dimension 'cpuArch'\n" +
    "            ndk {\n" +
    "                abiFilter 'x86_64'\n" +
    "            }\n" +
    "        }\n" +
    "        universal {\n" +
    "            dimension 'cpuArch'\n" +
    "        }\n" +
    "    }\n" +
    "}\n" +
    "\n" +
    "dependencies {\n" +
    "    implementation fileTree(dir: 'libs', include: ['*.jar'])\n" +
    "    implementation 'com.android.support:appcompat-v7:28.0.0'\n" +
    "    implementation 'com.android.support.constraint:constraint-layout:1.1.3'\n" +
    "}";

    public static void generate() throws Exception {
        CompilerContext.saveCode("build.gradle", "app", ROOT);
    }
}
