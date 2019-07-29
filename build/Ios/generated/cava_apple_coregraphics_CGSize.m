#include "java_lang_Object.h"
#include "java_lang_StringBuilder.h"
#include "cava_apple_coregraphics_CGSize.h"
extern jobject $literal36;
extern jobject $literal41;
extern jobject $literal40;


jdouble mcava_apple_coregraphics_CGSize_getWidth___D(jobject thiz) {
	return ((cava_apple_coregraphics_CGSize*)thiz)->$struct.width;
}
void mcava_apple_coregraphics_CGSize_setWidth__D_V(jobject thiz, jdouble value) {
	((cava_apple_coregraphics_CGSize*)thiz)->$struct.width = value;
}
jdouble mcava_apple_coregraphics_CGSize_getHeight___D(jobject thiz) {
	return ((cava_apple_coregraphics_CGSize*)thiz)->$struct.height;
}
void mcava_apple_coregraphics_CGSize_setHeight__D_V(jobject thiz, jdouble value) {
	((cava_apple_coregraphics_CGSize*)thiz)->$struct.height = value;
}
jobject mcava_apple_coregraphics_CGSize__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_coregraphics_CGSize_Class,0);
	JVMLINE(39)
	mcava_c_Struct__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_coregraphics_CGSize__init___DD_V(jobject pthis, jdouble pwidth, jdouble pheight) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);
	DEFARG(pwidth,jdouble,1);
	DEFARG(pheight,jdouble,2);

	JVMMETHOD(cava_apple_coregraphics_CGSize_Class,1);
	JVMLINE(40)
	mcava_c_Struct__init____V(LOCAL(pthis,jobject));
	JVMLINE(41)
	mcava_apple_coregraphics_CGSize_setWidth__D_V(LOCAL(pthis,jobject),LOCAL(pwidth,jdouble));
	JVMLINE(42)
	mcava_apple_coregraphics_CGSize_setHeight__D_V(LOCAL(pthis,jobject),LOCAL(pheight,jdouble));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

jobject mcava_apple_coregraphics_CGSize_toString___Ljava_lang_String_(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_apple_coregraphics_CGSize_Class,2);
	JVMLINE(46)
	{ jobject $$ret = virtual_mjava_lang_Object_toString___Ljava_lang_String_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__D_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__D_Ljava_lang_StringBuilder_(mjava_lang_StringBuilder_append__Ljava_lang_String__Ljava_lang_StringBuilder_(mjava_lang_StringBuilder__init____V(JvmAllocObject(&java_lang_StringBuilder_Class)),$literal36),mcava_apple_coregraphics_CGSize_getWidth___D(LOCAL(pthis,jobject))),$literal40),mcava_apple_coregraphics_CGSize_getHeight___D(LOCAL(pthis,jobject))),$literal41)); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass cava_apple_coregraphics_CGSize_Class;
JvmClass ArrOf_cava_apple_coregraphics_CGSize_Class;
JvmClass ArrOf_ArrOf_cava_apple_coregraphics_CGSize_Class;

jbool cava_apple_coregraphics_CGSize_isChildOf(JvmClass* klass) {
	return klass == &cava_apple_coregraphics_CGSize_Class || klass == &cava_c_Struct_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_DDO(jobject,jobject,jobject);
extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_apple_coregraphics_CGSize() {
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
	JvmClass* cls = &cava_apple_coregraphics_CGSize_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_apple_coregraphics_CGSize);
	cls->name = JvmMakeString(L"cava.apple.coregraphics.CGSize",30);
	cls->superClass = &cava_c_Struct_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_apple_coregraphics_CGSize_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"CGSize.java",11);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 3, &(JvmMethod*[]){
	JvmMakeMethod(&cava_apple_coregraphics_CGSize_Class, JvmMakeString(L"<init>", 6), &cava_apple_coregraphics_CGSize_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_coregraphics_CGSize__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 39, 39, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=39, .endLine=39, .type=&cava_apple_coregraphics_CGSize_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_coregraphics_CGSize_Class, JvmMakeString(L"<init>", 6), &cava_apple_coregraphics_CGSize_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 2, &(JvmClass*[]){&D_Class,&D_Class}), &mcava_apple_coregraphics_CGSize__init___DD_V, &invoke_DDO 
#ifdef JVM_DEBUG
 , 40, 42, 2, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"width",5), .startLine=41, .endLine=42, .type=&D_Class},{.name=JvmMakeString(L"height",6), .startLine=42, .endLine=42, .type=&D_Class},{.name=JvmMakeString(L"this",4), .startLine=40, .endLine=42, .type=&cava_apple_coregraphics_CGSize_Class}}
#endif
 ),
	JvmMakeMethod(&cava_apple_coregraphics_CGSize_Class, JvmMakeString(L"toString", 8), &java_lang_String_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_apple_coregraphics_CGSize_toString___Ljava_lang_String_, &invoke_O 
#ifdef JVM_DEBUG
 , 46, 46, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=46, .endLine=46, .type=&cava_apple_coregraphics_CGSize_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_apple_coregraphics_CGSize_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.apple.coregraphics.CGSize",31);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_apple_coregraphics_CGSize_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_apple_coregraphics_CGSize_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.apple.coregraphics.CGSize",31);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_apple_coregraphics_CGSize_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
