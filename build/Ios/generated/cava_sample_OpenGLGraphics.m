#include "cava_sample_OpenGLGraphics.h"


jobject mcava_sample_OpenGLGraphics__init____V(jobject pthis) {
	JvmThread* thread = JvmCurrentThread();
	jint entryFramePtr = thread->framePtr++;
	if(entryFramePtr >= JVM_MAX_STACK) JvmStackOverflow();
	JvmFrame* frame = &thread->frames[entryFramePtr];
	DEFARG(pthis,jobject,0);

	JVMMETHOD(cava_sample_OpenGLGraphics_Class,0);
	JVMLINE(55)
	mcava_sample_Graphics__init____V(LOCAL(pthis,jobject));
	{ jobject $$ret = LOCAL(pthis,jobject); thread->framePtr = entryFramePtr; return $$ret; };
	thread->framePtr = entryFramePtr;
}

JvmClass cava_sample_OpenGLGraphics_Class;
JvmClass ArrOf_cava_sample_OpenGLGraphics_Class;
JvmClass ArrOf_ArrOf_cava_sample_OpenGLGraphics_Class;

jbool cava_sample_OpenGLGraphics_isChildOf(JvmClass* klass) {
	return klass == &cava_sample_OpenGLGraphics_Class || klass == &cava_sample_Graphics_Class || klass == &java_lang_Object_Class;
}

extern jobject invoke_O(jobject,jobject,jobject);
void JvmSetup_cava_sample_OpenGLGraphics() {
	static int initialized = 0;
	if(initialized) return;
	initialized = 1;
	JvmSetup_cava_sample_Graphics();
	void** _vTable = malloc(sizeof(void*) * 27);
	_vTable[1] = &mjava_lang_Object_equals__Ljava_lang_Object__Z;
	_vTable[2] = &mjava_lang_Object_hashCode___I;
	_vTable[0] = &mjava_lang_Object_toString___Ljava_lang_String_;
	_vTable[26] = &mjava_lang_Object_finalize___V;
	void** _iTable = jnull;
	JvmClass* cls = &cava_sample_OpenGLGraphics_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(cava_sample_OpenGLGraphics);
	cls->name = JvmMakeString(L"cava.sample.OpenGLGraphics",26);
	cls->superClass = &cava_sample_Graphics_Class;
	cls->componentType = jnull;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->vtable = _vTable;
	cls->itable = _iTable;
	cls->isChildOf = &cava_sample_OpenGLGraphics_isChildOf;
	#ifdef JVM_DEBUG
	cls->sourceFile = JvmMakeString(L"Graphics.kt",11);
	#endif
	cls->finalizeFunction = jnull;
	cls->objcClass = jnull;
	cls->interfaces = jnull;
	cls->methods = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Method_Class, 1, &(JvmMethod*[]){
	JvmMakeMethod(&cava_sample_OpenGLGraphics_Class, JvmMakeString(L"<init>", 6), &cava_sample_OpenGLGraphics_Class, 1, JvmMakeObjectArray(&ArrOf_java_lang_Class_Class, 0, &(JvmClass*[]){}), &mcava_sample_OpenGLGraphics__init____V, &invoke_O 
#ifdef JVM_DEBUG
 , 55, 55, 0, 1, (JvmLocalVariableInfo[]){{.name=JvmMakeString(L"this",4), .startLine=55, .endLine=55, .type=&cava_sample_OpenGLGraphics_Class}}
#endif
 )
	});
	cls->fields = JvmMakeObjectArray(&ArrOf_java_lang_reflect_Field_Class, 0, &(JvmField*[]){
	});

	cls = &ArrOf_cava_sample_OpenGLGraphics_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[cava.sample.OpenGLGraphics",27);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &cava_sample_OpenGLGraphics_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
	cls = &ArrOf_ArrOf_cava_sample_OpenGLGraphics_Class;
	cls->klass = &java_lang_Class_Class;
	cls->size = sizeof(JvmArray);
	cls->name = JvmMakeString(L"[[cava.sample.OpenGLGraphics",27);
	cls->superClass = &java_lang_Object_Class;
	cls->componentType = &ArrOf_cava_sample_OpenGLGraphics_Class;
	cls->modifiers = 0;
	cls->fields = jnull;
	cls->interfaces = jnull;
	cls->methods = jnull;
	cls->vtable = java_lang_Object_Class.vtable;
	cls->isChildOf = jnull;
}
