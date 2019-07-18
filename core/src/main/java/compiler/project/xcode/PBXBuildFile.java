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
public class PBXBuildFile extends PBXNode {
    private final PBXFile ref;

    public PBXBuildFile(PBXProject project, PBXFile ref) {
        super(project, ref.getName());
        this.ref = ref;
    }

    @Override
    public void dump(SourceWriter out) {
        out.println(uuidWithComment() + " = {isa = PBXBuildFile; fileRef = " + ref.uuidWithComment() + "; };");
    }
}