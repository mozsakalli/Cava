/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cava.sample

import cava.platform.NativeCode;
import java.lang.RuntimeException

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
abstract class VertexBufferData {

}
abstract class VertexBuffer(capacity:Int, structure:VertexStructure) {
    var capacity:Int = capacity;
    var structure:VertexStructure = structure;
    abstract fun lock():VertexBufferData
    abstract fun unlock()
}
abstract class IndexBuffer(capacity: Int) {
    var capacity:Int = capacity
}
open class Shader(code:Any) {
    public val code:Any = code;
}
open class Material {
    var shader:Shader? = null
    var depthWrite:Boolean = false
    var depthTest:Boolean = false
    var stencilOp:Int = 0
    var stencilTest:Int = 0
}

abstract class Graphics {
    abstract fun newShader(code:Any):Shader;
    abstract fun newVertexBuffer(capacity:Int, vertexStructure: VertexStructure)
    abstract fun newIndexBuffer(capacity: Int)
    abstract fun drawIndexed(vertices:VertexBuffer, indices:IndexBuffer, type:Int, count:Int)
}

open class OpenGLShader(gl:OpenGLGraphics, code:Any):Shader(code) {
    var handle:Int;

    init {
        handle = gl.glCreateProgram();
        var codes = code as Array<String>;
        var vertex = compileShader(gl, codes[0], GL_VERTEX_SHADER);
        var fragment = compileShader(gl, codes[1], GL_FRAGMENT_SHADER)
        gl.glAttachShader(handle, vertex);
        gl.glAttachShader(handle, fragment);
        gl.glLinkProgram(handle);
        gl.glValidateProgram(handle);
        if(!gl.glGetProgramParameter(handle, GL_LINK_STATUS))
            throw RuntimeException("Can't compile shaders...");
    }

    fun compileShader(gl:OpenGLGraphics, code:String, type:Int):Int {
        var result = gl.glCreateShader(type);
        gl.glShaderSource(result, code);
        gl.glCompileShader(result);
        if(!gl.glGetShaderParameter(result, GL_COMPILE_STATUS)) {
            throw RuntimeException("Can't compile shader type:$type")
        }
        return -1;
    }
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
        return OpenGLShader(this, code);
    }
    
    abstract fun glCreateProgram():Int
    abstract fun glCreateShader(type:Int):Int
    abstract fun glShaderSource(shader:Int, source:String)
    abstract fun glCompileShader(shader:Int)
    abstract fun glGetShaderParameter(shader:Int, paramName:Int):Boolean
    abstract fun glAttachShader(program:Int, shader:Int)
    abstract fun glLinkProgram(program:Int)
    abstract fun glValidateProgram(program: Int)
    abstract fun glGetProgramParameter(program: Int, paramName: Int):Boolean

}
