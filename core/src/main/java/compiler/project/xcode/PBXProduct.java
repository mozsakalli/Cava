package compiler.project.xcode;

import compiler.backend.SourceWriter;

/**
 *
 * @author mustafa
 */
public class PBXProduct extends PBXNode {
    
    public PBXProduct(PBXProject project, String name) {
        super(project, name);
    }

    @Override
    public void dump(SourceWriter out) {
        out.println("%s = {isa = PBXFileReference; explicitFileType = wrapper.application; includeInIndex = 0; path = \"%s\"; sourceTree = BUILT_PRODUCTS_DIR; };",
                uuidWithComment(), name);
    }
    
    
}
