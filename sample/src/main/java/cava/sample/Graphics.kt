/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cava.sample

import cava.platform.NativeCode;
/*

  @author mustafa
  Created on Jul 29, 2019
*/
enum class VertexDataType(val value:Int) {
    FLOAT1(1), FLOAT2(2), FLOAT3(3), FLOAT4(4)
}

open class VertexStructure() {
    open public fun add(name:String, type:VertexDataType) {}
}
open class VertexBuffer(capacity:Int, structure:VertexStructure) {
    public var capacity:Int = capacity;
    public var structure:VertexStructure = structure;
}
open class Shader(code:Any) {
    public val code:Any = code;
}

abstract class Graphics {
    abstract fun newShader(code:Any):Shader;
}

open class OpenGLShader(code:Any):Shader(code) {
    
}

class OpenGLVertexStructure():VertexStructure() {
    class Element(name:String, type:VertexDataType) {
        public val name:String = name;
        public val type:VertexDataType = type;
        public val location:Int = -1;
    }
    public val locations:ArrayList<Element> = ArrayList<Element>();
    
    override fun add(name:String, type:VertexDataType) {
        locations.add(Element(name, type));      
        NativeCode.VoidPtr("Deneme", locations, "test");
    }
}

class OpenGLVertexBuffer(capacity:Int, structure:VertexStructure) : VertexBuffer(capacity, structure) {
    
}

open abstract class OpenGLGraphics : Graphics() {
    
    override public fun newShader(code:Any):Shader {
        return OpenGLShader(code);
    }
    
    abstract fun glCreateProgram():Int;
    abstract fun glCreateShader(type:Int):Int;
}
