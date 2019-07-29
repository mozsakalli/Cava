#ifndef __Defined_java_util_ArrayList__
#define __Defined_java_util_ArrayList__

#include "jvm.h"
#include "java_lang_Object.h"
#include "java_util_RandomAccess.h"
#include "java_lang_Class.h"
#include "java_util_List.h"
#include "java_util_AbstractList.h"

typedef struct java_util_ArrayList {
	jobject fjava_lang_Object_klass;
	jint fjava_util_AbstractList_modCount;
	jint fjava_util_ArrayList_firstIndex;
	jint fjava_util_ArrayList_size;
	jobject fjava_util_ArrayList_array;
} java_util_ArrayList;


extern JvmClass java_util_ArrayList_Class;
extern JvmClass ArrOf_java_util_ArrayList_Class;
extern JvmClass ArrOf_ArrOf_java_util_ArrayList_Class;
extern void JvmSetup_java_util_ArrayList();

extern jobject mjava_util_ArrayList__init____V(jobject pthis);
extern jobject mjava_util_ArrayList__init___I_V(jobject pthis, jint pcapacity);
extern jobject mjava_util_ArrayList_newElementArray__I__Ljava_lang_Object_(jobject pthis, jint psize);
extern void mjava_util_ArrayList_add__ILjava_lang_Object__V(jobject pthis, jint plocation, jobject pobject);
extern jbool mjava_util_ArrayList_add__Ljava_lang_Object__Z(jobject pthis, jobject pobject);
extern jobject mjava_util_ArrayList_get__I_Ljava_lang_Object_(jobject pthis, jint plocation);
extern void mjava_util_ArrayList_growAtEnd__I_V(jobject pthis, jint prequired);
extern void mjava_util_ArrayList_growAtFront__I_V(jobject pthis, jint prequired);
extern void mjava_util_ArrayList_growForInsert__II_V(jobject pthis, jint plocation, jint prequired);
extern jint mjava_util_ArrayList_indexOf__Ljava_lang_Object__I(jobject pthis, jobject pobject);
extern jbool mjava_util_ArrayList_isEmpty___Z(jobject pthis);
extern jobject mjava_util_ArrayList_remove__I_Ljava_lang_Object_(jobject pthis, jint plocation);
extern jbool mjava_util_ArrayList_remove__Ljava_lang_Object__Z(jobject pthis, jobject pobject);
extern jint mjava_util_ArrayList_size___I(jobject pthis);
extern jobject mjava_util_ArrayList_toArray___Ljava_lang_Object___Ljava_lang_Object_(jobject pthis, jobject pcontents);

#endif
