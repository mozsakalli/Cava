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

import compiler.backend.SourceWriter;

/**
 *
 * @author mustafa
 */
public class PBXNode {
    private static long uuidCounter = 0x10000000000000L;
    protected final String uuid;
    protected final PBXProject project;
    protected final String name;

    public PBXNode(PBXProject project, String name) {
        this.project = project;
        this.name = name;
        this.uuid = String.format("AB%020x", uuidCounter) ;
        uuidCounter += 1;
    }

    public PBXProject getProject() {
        return project;
    }

    public String getUuid() {
        return uuid;
    }

    public String getName() {
        return name;
    }

    public String uuidWithComment() {
        return this.uuid + " /* " + this.name + " */";
    }

    public void dump(SourceWriter out) {

    }
}