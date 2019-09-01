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

import compiler.CavaOptions;
import compiler.CompilerContext;
import compiler.DecompilerUtils;

/**
 *
 * @author mustafa
 */
public class AndroidManifest {
    final static String ROOT = 
    "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n" +
    "<manifest xmlns:android=\"http://schemas.android.com/apk/res/android\" package=\"__PACKAGE__\">\n" +
    "    <application android:label=\"__APPNAME__\">\n" +
    "        <activity android:name=\"__ACTIVITY__\">\n" +
    "            <intent-filter>\n" +
    "                <action android:name=\"android.intent.action.MAIN\" />\n" +
    "                <category android:name=\"android.intent.category.LAUNCHER\" />\n" +
    "            </intent-filter>\n" +
    "        </activity>\n" +
    "    </application>\n" +
    "</manifest>";    
    public static void generate() throws Exception {
        String fullName = CavaOptions.mainClass().replace(".", "/");
        String pkg = DecompilerUtils.packageName(fullName).replace('/', '.');
        String name = DecompilerUtils.simpleName(fullName);
        
        String root = ROOT.replaceAll("__PACKAGE__", pkg)
                .replaceAll("__APPNAME__", CavaOptions.applicationName())
                .replaceAll("__ACTIVITY__", fullName.replace('/', '.'));
        CompilerContext.saveCode("AndroidManifest.xml", "app/src/main", root);
    }
}
