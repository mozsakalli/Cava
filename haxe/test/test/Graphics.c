//
//  Graphics.c
//  test
//
//  Created by Mustafa Özsakallı on 17.10.2019.
//  Copyright © 2019 Mustafa Özsakallı. All rights reserved.
//

#include "Graphics.h"
#include <OpenGLES/ES2/gl.h>
#include <OpenGLES/ES2/glext.h>

#pragma pack(1)
typedef struct VEC2 {
    float x,y;
} VEC2;
typedef struct VEC3 {
    float x, y, z;
} VEC3;
typedef struct VERTEX {
    VEC3 pos;
    VEC2 uv;
    int color;
} VERTEX;
#pragma options align=reset
typedef struct QUAD {
    VEC2 tl;
    VEC2 bl;
    int color;
} QUAD;
typedef struct SHADER {
    int handle;
    int pos, uv, color;
    int projection, camera, model;
    int user0, user1, user2;
} SHADER;

#define MAXQUAD     8192
#define MAXVERTEX   (MAXQUAD<<2)
#define MAXINDEX    (MAXQUAD*6)

#define M2D_M00(m) m[0]
#define M2D_M01(m) m[1]
#define M2D_M02(m) m[2]
#define M2D_M10(m) m[3]
#define M2D_M11(m) m[4]
#define M2D_M12(m) m[5]

static VERTEX VERTICES[MAXVERTEX];
static int VERTEXCOUNT;
static int INDEXCOUNT;
static int TEXTURE;
static int QUADIBO;
static int BLENDMODE;
static int TEXTUREDIRTY;
static float* PROJECTION;

#define MAXSHADER   16
static SHADER SHADERS[MAXSHADER];
static int SHADERCOUNT;

void Init() {
    //Create quad index buffer
    glGenBuffers(1, (GLuint*)&QUADIBO);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, QUADIBO);
    short indices[MAXINDEX];
    for(int i=0; i<MAXQUAD; i++) {
        indices[i * 6] = (short)(i * 4);
        indices[i * 6 + 1] = (short)(i * 4 + 1);
        indices[i * 6 + 2] = (short)(i * 4 + 2);

        indices[i * 6 + 3] = (short)(i * 4);
        indices[i * 6 + 4] = (short)(i * 4 + 2);
        indices[i * 6 + 5] = (short)(i * 4 + 3);
    }
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), &indices, GL_STATIC_DRAW);
    SHADERCOUNT = 0;
}

void Reset() {
    VERTEXCOUNT = INDEXCOUNT = 0;
    TEXTURE = BLENDMODE = -1;
    TEXTUREDIRTY = 0;
    glDisable(GL_SCISSOR_TEST);
    glDisable(GL_BLEND);
}

void Flush() {
    
}

void SetBlendMode(int mode) {
    
}

void EnableClipping(int x, int y,int width, int height) {
    glEnable(GL_SCISSOR_TEST);
    glScissor(x, y, width, height);
}

void DisableClipping() {
    glDisable(GL_SCISSOR_TEST);
}

void Quad(int texture, int color, float* matrix, float x1, float y1, float z1,
          float x2, float y2, float z2, float x3, float y3, float z3, float x4, float y4, float z4,
          float u1, float v1, float u2, float v2, float u3, float v3, float u4, float v4) {
    
    if(VERTEXCOUNT > MAXVERTEX - 4) Flush();
    
    float m00 = M2D_M00(matrix);
    float m01 = M2D_M01(matrix);
    float m02 = M2D_M02(matrix);
    float m10 = M2D_M10(matrix);
    float m11 = M2D_M11(matrix);
    float m12 = M2D_M12(matrix);

    VERTEX* ptr = &VERTICES[VERTEXCOUNT];
    ptr->pos.x = x1 * m00 + y1 * m01 + m02;
    ptr->pos.y = x1 * m10 + y1 * m11 + m12;
    ptr->pos.z = z1;
    ptr->uv.x = u1;
    ptr->uv.y = v1;
    ptr->color = color;
    ptr++;

    ptr->pos.x = x2 * m00 + y2 * m01 + m02;
    ptr->pos.y = x2 * m10 + y2 * m11 + m12;
    ptr->pos.z = z2;
    ptr->uv.x = u2;
    ptr->uv.y = v2;
    ptr->color = color;
    ptr++;

    ptr->pos.x = x3 * m00 + y3 * m01 + m02;
    ptr->pos.y = x3 * m10 + y3 * m11 + m12;
    ptr->pos.z = z3;
    ptr->uv.x = u3;
    ptr->uv.y = v3;
    ptr->color = color;
    ptr++;

    ptr->pos.x = x4 * m00 + y4 * m01 + m02;
    ptr->pos.y = x4 * m10 + y4 * m11 + m12;
    ptr->pos.z = z4;
    ptr->uv.x = u4;
    ptr->uv.y = v4;
    ptr->color = color;
    
    VERTEXCOUNT += 4;
    INDEXCOUNT += 6;
}

int CreateTexture() {
    int result;
    glGenTextures(1, (GLuint*)&result);
    return result;
}

void DeleteTexture(int texture) {
    glDeleteTextures(1, (GLuint*)&texture);
}

void SetTexturePixels(int texture, int width, int height, void* data) {
    
}

void SetTexture(int texture) {
    if(texture != TEXTURE) {
        Flush();
        TEXTURE = texture;
        TEXTUREDIRTY = 1;
    }
}

void SetProjectionMatrix(float* matrix) {
    PROJECTION = matrix;
}

int CompileShader(const char* code, int type) {
    int result = glCreateShader(type);
    glShaderSource(result, 1, &code, 0);
    glCompileShader(result);
    GLint status;
    glGetShaderiv(result, GL_COMPILE_STATUS, &status);
    if(status == GL_FALSE) {
        glDeleteShader(result);
        result = -1;
    }
    return result;
}

int CompileProgram(const char* vertex, const char * fragment) {
    int v = CompileShader(vertex, GL_VERTEX_SHADER);
    int f = CompileShader(fragment, GL_FRAGMENT_SHADER);
    int program = glCreateProgram();
    glAttachShader(program, v);
    glAttachShader(program, f);

    glLinkProgram(program);
    glValidateProgram(program);
    int linked;
    glGetProgramiv(program, GL_LINK_STATUS, &linked);
    if (linked == GL_FALSE) {
        glDeleteProgram(program);
        return -1;
    }
    
    int result = SHADERCOUNT;
    SHADER* shader = &SHADERS[SHADERCOUNT++];
    shader->handle = program;
    shader->pos = glGetAttribLocation(program, "pos");
    shader->uv = glGetAttribLocation(program, "uv");
    shader->color = glGetAttribLocation(program, "color");
    shader->projection = glGetUniformLocation(program, "projection");
    return result;
}

int CreateShader2D(const char* fragment) {
    return 0;
}
