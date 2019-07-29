#include "java_lang_Object.h"
#include "java_lang_StringBuilder.h"
#include "cava_apple_coregraphics_CGPoint.h"
extern jobject $literal36;
extern jobject $literal41;
extern jobject $literal40;


jdouble mcava_apple_coregraphics_CGPoint_getX___D(jobject thiz) {
	return ((cava_apple_coregraphics_CGPoint*)thiz)->$struct.x;
}
void mcava_apple_coregraphics_CGPoint_setX__D_V(jobject thiz, jdouble value) {
	((cava_apple_coregraphics_CGPoint*)thiz)->$struct.x = value;
}
jdouble mcava_apple_coregraphics_CGPoint_getY___D(jobject thiz) {
	return ((cava_apple_coregraphics_CGPoint*)thiz)->$struct.y;
}
void mcava_apple_coregraphics_CGPoint_setY__D_V(jobject thiz, jdouble value) {
	((cava_apple_coregraphics_CGPoint*)thiz)->$struct.y = value;
}
CGPoint mcava_apple_coregraphics_CGPoint_getStruct___Lcava_c_Struct_(jobject thiz) { return ((cava_apple_coregraphics_CGPoint*)thiz)->$struct; }
void mcava_apple_coregraphics_CGPoint_setStruct__Lcava_c_Struct__V(jobject thiz, CGPoint value) { ((cava_apple_coregraphics_CGPoint*)thiz)->$struct = value; }
jobject mcava_apple_coregraphics_CGPoint__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_coregraphics_CGPoint_Class,0);
	JVMLINE(41)
	mcava_c_Struct__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_coregraphics_CGPoint__init___DD_V(jobject pthis, jdouble px, jdouble py) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(px,jdouble,1);
	DEFARG(py,jdouble,2);

	JVMMETHOD(cava_apple_coregraphics_CGPoint_Class,1);
	JVMLINE(42)
	mcava_c_Struct__init____V(LOCAL(pthis,jobject));
	JVMLINE(43)
	mcava_apple_coregraphics_CGPoint_setX__D_V(LOCAL(pthis,jobject),LOCAL(px,jdouble));
	JVMLINE(44)
	mcava_apple_coregraphics_CGPoint_setY__D_V(LOCAL(pthis,jobject),LOCAL(py,jdouble));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_coregraphics_CGPoint_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_coregraphics_CGPoint_Class,2);
	JVMLINE(49)
	{ jobject $$ret = virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__D_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__D_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal36),mcava_apple_coregraphics_CGPoint_getX___D(LOCAL(pthis,jobject))),$literal40),mcava_apple_coregraphics_CGPoint_getY___D(LOCAL(pthis,jobject))),$literal41)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass cava_apple_coregraphics_CGPoint_Class;
JvmClass ArrOf_cava_apple_coregraphics_CGPoint_Class;
JvmClass ArrOf_ArrOf_cava_apple_coregraphics_CGPoint_Class;

jbool cava_apple_coregraphics_CGPoint_isChildOf(JvmClass* klass) {
	return klass == &cava_apple_coregraphics_CGPoint_Class || klass == &cava_c_Struct_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_DDO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_apple_coregraphics_CGPoint() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_cava_c_Struct();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &cava_apple_coregraphics_CGPoint_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_apple_coregraphics_CGPoint);
	cls->name = JvmMakeString(L"cava.apple.coregraphics.CGPoint",31);
	cls->superClass = &cava_c_Struct_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_apple_coregraphics_CGPoint_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"CGPoint.java",12);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 3, &(JvmMethod*[]){
	JvmMakeMethod(&cava_apple_coregraphics_CGPoint_Class, JvmMakeString(L"<init>", 6), &cava_apple_coregraphics_CGPoint_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_coregraphics_CGPoint__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 41, 41, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=41, .endLine=41, .type=&cava_apple_coregraphics_CGPoint_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_coregraphics_CGPoint_Class, JvmMakeString(L"<init>", 6), &cava_apple_coregraphics_CGPoint_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&D_Class,&D_Class}), &mcava_apple_coregraphics_CGPoint__init___DD_V, &invoke_DDO 
#ifdef JVM_DEBUG
 , 42, 44, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"x",1), .startLine=43, .endLine=44, .type=&D_Class},{.name=JvmMakeString(L"y",1), .startLine=44, .endLine=44, .type=&D_Class},{.name=JvmMakeString(L"this",4), .startLine=42, .endLine=44, .type=&cava_apple_coregraphics_CGPoint_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_coregraphics_CGPoint_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_coregraphics_CGPoint_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 49, 49, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=49, .endLine=49, .type=&cava_apple_coregraphics_CGPoint_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_apple_coregraphics_CGPoint_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.apple.coregraphics.CGPoint",32);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_apple_coregraphics_CGPoint_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_apple_coregraphics_CGPoint_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.apple.coregraphics.CGPoint",32);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_apple_coregraphics_CGPoint_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
