#include "jvm.h"

jobject invoke_OCV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jobject,jchar))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_C(JvmArrayGet_O(pargs,1)));
	} else {
		((void (*)(jobject,jobject,jchar))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_C(JvmArrayGet_O(pargs,1)));
	}
	return jnull;
}
jobject invoke_JJI(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jlong,jlong))method->address)(JvmUnbox_J(JvmArrayGet_O(pargs,0)),JvmUnbox_J(JvmArrayGet_O(pargs,1))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jlong,jlong))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_J(JvmArrayGet_O(pargs,0)),JvmUnbox_J(JvmArrayGet_O(pargs,1))));
	}
}
jobject invoke_IC(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_C(((jchar (*)(jint))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0))));
	} else {
		return JvmBox_C(((jchar (*)(jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0))));
	}
}
jobject invoke_IF(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_F(((jfloat (*)(jint))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0))));
	} else {
		return JvmBox_F(((jfloat (*)(jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0))));
	}
}
jobject invoke_ODV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jobject,jdouble))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_D(JvmArrayGet_O(pargs,1)));
	} else {
		((void (*)(jobject,jobject,jdouble))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_D(JvmArrayGet_O(pargs,1)));
	}
	return jnull;
}
jobject invoke_II(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jint))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0))));
	}
}
jobject invoke_IIOO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jint,jint,jobject))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)));
	} else {
		return ((jobject (*)(jobject,jint,jint,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)));
	}
}
jobject invoke_OOIO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jobject,jobject,jint))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)));
	} else {
		return ((jobject (*)(jobject,jobject,jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)));
	}
}
jobject invoke_IO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jint))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0)));
	} else {
		return ((jobject (*)(jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0)));
	}
}
jobject invoke_III(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jint,jint))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jint,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1))));
	}
}
jobject invoke_IV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jint))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0)));
	} else {
		((void (*)(jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0)));
	}
	return jnull;
}
jobject invoke_OIOOO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jobject,jint,jobject,jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)),JvmCheckCast(JvmArrayGet_O(pargs,3),JvmArrayGet_O(method->parameters,3)));
	} else {
		return ((jobject (*)(jobject,jobject,jint,jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)),JvmCheckCast(JvmArrayGet_O(pargs,3),JvmArrayGet_O(method->parameters,3)));
	}
}
jobject invoke_IIO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jint,jint))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	} else {
		return ((jobject (*)(jobject,jint,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	}
}
jobject invoke_IZ(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_Z(((jbool (*)(jint))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0))));
	} else {
		return JvmBox_Z(((jbool (*)(jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0))));
	}
}
jobject invoke_ZO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jbool))method->address)(JvmUnbox_Z(JvmArrayGet_O(pargs,0)));
	} else {
		return ((jobject (*)(jobject,jbool))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_Z(JvmArrayGet_O(pargs,0)));
	}
}
jobject invoke_IIV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jint,jint))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	} else {
		((void (*)(jobject,jint,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	}
	return jnull;
}
jobject invoke_JD(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_D(((jdouble (*)(jlong))method->address)(JvmUnbox_J(JvmArrayGet_O(pargs,0))));
	} else {
		return JvmBox_D(((jdouble (*)(jobject,jlong))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_J(JvmArrayGet_O(pargs,0))));
	}
}
jobject invoke_ZV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jbool))method->address)(JvmUnbox_Z(JvmArrayGet_O(pargs,0)));
	} else {
		((void (*)(jobject,jbool))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_Z(JvmArrayGet_O(pargs,0)));
	}
	return jnull;
}
jobject invoke_JI(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jlong))method->address)(JvmUnbox_J(JvmArrayGet_O(pargs,0))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jlong))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_J(JvmArrayGet_O(pargs,0))));
	}
}
jobject invoke_JJ(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_J(((jlong (*)(jlong))method->address)(JvmUnbox_J(JvmArrayGet_O(pargs,0))));
	} else {
		return JvmBox_J(((jlong (*)(jobject,jlong))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_J(JvmArrayGet_O(pargs,0))));
	}
}
jobject invoke_B(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_B(((jbyte (*)())method->address)());
	} else {
		return JvmBox_B(((jbyte (*)(jobject))method->address)(JvmCheckCast(pthis,method->declaringClass)));
	}
}
jobject invoke_C(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_C(((jchar (*)())method->address)());
	} else {
		return JvmBox_C(((jchar (*)(jobject))method->address)(JvmCheckCast(pthis,method->declaringClass)));
	}
}
jobject invoke_D(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_D(((jdouble (*)())method->address)());
	} else {
		return JvmBox_D(((jdouble (*)(jobject))method->address)(JvmCheckCast(pthis,method->declaringClass)));
	}
}
jobject invoke_JO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jlong))method->address)(JvmUnbox_J(JvmArrayGet_O(pargs,0)));
	} else {
		return ((jobject (*)(jobject,jlong))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_J(JvmArrayGet_O(pargs,0)));
	}
}
jobject invoke_F(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_F(((jfloat (*)())method->address)());
	} else {
		return JvmBox_F(((jfloat (*)(jobject))method->address)(JvmCheckCast(pthis,method->declaringClass)));
	}
}
jobject invoke_BI(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jbyte))method->address)(JvmUnbox_B(JvmArrayGet_O(pargs,0))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jbyte))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_B(JvmArrayGet_O(pargs,0))));
	}
}
jobject invoke_I(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)())method->address)());
	} else {
		return JvmBox_I(((jint (*)(jobject))method->address)(JvmCheckCast(pthis,method->declaringClass)));
	}
}
jobject invoke_J(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_J(((jlong (*)())method->address)());
	} else {
		return JvmBox_J(((jlong (*)(jobject))method->address)(JvmCheckCast(pthis,method->declaringClass)));
	}
}
jobject invoke_JV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jlong))method->address)(JvmUnbox_J(JvmArrayGet_O(pargs,0)));
	} else {
		((void (*)(jobject,jlong))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_J(JvmArrayGet_O(pargs,0)));
	}
	return jnull;
}
jobject invoke_BO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jbyte))method->address)(JvmUnbox_B(JvmArrayGet_O(pargs,0)));
	} else {
		return ((jobject (*)(jobject,jbyte))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_B(JvmArrayGet_O(pargs,0)));
	}
}
jobject invoke_O(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)())method->address)();
	} else {
		return ((jobject (*)(jobject))method->address)(JvmCheckCast(pthis,method->declaringClass));
	}
}
jobject invoke_S(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_S(((jshort (*)())method->address)());
	} else {
		return JvmBox_S(((jshort (*)(jobject))method->address)(JvmCheckCast(pthis,method->declaringClass)));
	}
}
jobject invoke_V(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)())method->address)();
	} else {
		((void (*)(jobject))method->address)(JvmCheckCast(pthis,method->declaringClass));
	}
	return jnull;
}
jobject invoke_Z(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_Z(((jbool (*)())method->address)());
	} else {
		return JvmBox_Z(((jbool (*)(jobject))method->address)(JvmCheckCast(pthis,method->declaringClass)));
	}
}
jobject invoke_SO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jshort))method->address)(JvmUnbox_S(JvmArrayGet_O(pargs,0)));
	} else {
		return ((jobject (*)(jobject,jshort))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_S(JvmArrayGet_O(pargs,0)));
	}
}
jobject invoke_OFV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jobject,jfloat))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_F(JvmArrayGet_O(pargs,1)));
	} else {
		((void (*)(jobject,jobject,jfloat))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_F(JvmArrayGet_O(pargs,1)));
	}
	return jnull;
}
jobject invoke_OIII(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jobject,jint,jint))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jobject,jint,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2))));
	}
}
jobject invoke_CC(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_C(((jchar (*)(jchar))method->address)(JvmUnbox_C(JvmArrayGet_O(pargs,0))));
	} else {
		return JvmBox_C(((jchar (*)(jobject,jchar))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_C(JvmArrayGet_O(pargs,0))));
	}
}
jobject invoke_IIIO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jint,jint,jint))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)));
	} else {
		return ((jobject (*)(jobject,jint,jint,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)));
	}
}
jobject invoke_OIIZJ(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_J(((jlong (*)(jobject,jint,jint,jbool))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)),JvmUnbox_Z(JvmArrayGet_O(pargs,3))));
	} else {
		return JvmBox_J(((jlong (*)(jobject,jobject,jint,jint,jbool))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)),JvmUnbox_Z(JvmArrayGet_O(pargs,3))));
	}
}
jobject invoke_OIIZI(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jobject,jint,jint,jbool))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)),JvmUnbox_Z(JvmArrayGet_O(pargs,3))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jobject,jint,jint,jbool))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)),JvmUnbox_Z(JvmArrayGet_O(pargs,3))));
	}
}
jobject invoke_CO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jchar))method->address)(JvmUnbox_C(JvmArrayGet_O(pargs,0)));
	} else {
		return ((jobject (*)(jobject,jchar))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_C(JvmArrayGet_O(pargs,0)));
	}
}
jobject invoke_OOO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jobject,jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)));
	} else {
		return ((jobject (*)(jobject,jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)));
	}
}
jobject invoke_IIIV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jint,jint,jint))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)));
	} else {
		((void (*)(jobject,jint,jint,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)));
	}
	return jnull;
}
jobject invoke_OOV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jobject,jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)));
	} else {
		((void (*)(jobject,jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)));
	}
	return jnull;
}
jobject invoke_CZ(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_Z(((jbool (*)(jchar))method->address)(JvmUnbox_C(JvmArrayGet_O(pargs,0))));
	} else {
		return JvmBox_Z(((jbool (*)(jobject,jchar))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_C(JvmArrayGet_O(pargs,0))));
	}
}
jobject invoke_OOZ(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_Z(((jbool (*)(jobject,jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1))));
	} else {
		return JvmBox_Z(((jbool (*)(jobject,jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1))));
	}
}
jobject invoke_IOIIZ(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_Z(((jbool (*)(jint,jobject,jint,jint))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)),JvmUnbox_I(JvmArrayGet_O(pargs,3))));
	} else {
		return JvmBox_Z(((jbool (*)(jobject,jint,jobject,jint,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)),JvmUnbox_I(JvmArrayGet_O(pargs,3))));
	}
}
jobject invoke_DJ(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_J(((jlong (*)(jdouble))method->address)(JvmUnbox_D(JvmArrayGet_O(pargs,0))));
	} else {
		return JvmBox_J(((jlong (*)(jobject,jdouble))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_D(JvmArrayGet_O(pargs,0))));
	}
}
jobject invoke_ZIOIIZ(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_Z(((jbool (*)(jbool,jint,jobject,jint,jint))method->address)(JvmUnbox_Z(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)),JvmUnbox_I(JvmArrayGet_O(pargs,3)),JvmUnbox_I(JvmArrayGet_O(pargs,4))));
	} else {
		return JvmBox_Z(((jbool (*)(jobject,jbool,jint,jobject,jint,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_Z(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)),JvmUnbox_I(JvmArrayGet_O(pargs,3)),JvmUnbox_I(JvmArrayGet_O(pargs,4))));
	}
}
jobject invoke_FFI(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jfloat,jfloat))method->address)(JvmUnbox_F(JvmArrayGet_O(pargs,0)),JvmUnbox_F(JvmArrayGet_O(pargs,1))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jfloat,jfloat))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_F(JvmArrayGet_O(pargs,0)),JvmUnbox_F(JvmArrayGet_O(pargs,1))));
	}
}
jobject invoke_DO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jdouble))method->address)(JvmUnbox_D(JvmArrayGet_O(pargs,0)));
	} else {
		return ((jobject (*)(jobject,jdouble))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_D(JvmArrayGet_O(pargs,0)));
	}
}
jobject invoke_DDDDO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jdouble,jdouble,jdouble,jdouble))method->address)(JvmUnbox_D(JvmArrayGet_O(pargs,0)),JvmUnbox_D(JvmArrayGet_O(pargs,1)),JvmUnbox_D(JvmArrayGet_O(pargs,2)),JvmUnbox_D(JvmArrayGet_O(pargs,3)));
	} else {
		return ((jobject (*)(jobject,jdouble,jdouble,jdouble,jdouble))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_D(JvmArrayGet_O(pargs,0)),JvmUnbox_D(JvmArrayGet_O(pargs,1)),JvmUnbox_D(JvmArrayGet_O(pargs,2)),JvmUnbox_D(JvmArrayGet_O(pargs,3)));
	}
}
jobject invoke_DZ(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_Z(((jbool (*)(jdouble))method->address)(JvmUnbox_D(JvmArrayGet_O(pargs,0))));
	} else {
		return JvmBox_Z(((jbool (*)(jobject,jdouble))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_D(JvmArrayGet_O(pargs,0))));
	}
}
jobject invoke_OIOIIV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jobject,jint,jobject,jint,jint))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)),JvmUnbox_I(JvmArrayGet_O(pargs,3)),JvmUnbox_I(JvmArrayGet_O(pargs,4)));
	} else {
		((void (*)(jobject,jobject,jint,jobject,jint,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)),JvmUnbox_I(JvmArrayGet_O(pargs,3)),JvmUnbox_I(JvmArrayGet_O(pargs,4)));
	}
	return jnull;
}
jobject invoke_CII(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jchar,jint))method->address)(JvmUnbox_C(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jchar,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_C(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1))));
	}
}
jobject invoke_OIIV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jobject,jint,jint))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)));
	} else {
		((void (*)(jobject,jobject,jint,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)));
	}
	return jnull;
}
jobject invoke_OOOIV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jobject,jobject,jobject,jint))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)),JvmUnbox_I(JvmArrayGet_O(pargs,3)));
	} else {
		((void (*)(jobject,jobject,jobject,jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)),JvmUnbox_I(JvmArrayGet_O(pargs,3)));
	}
	return jnull;
}
jobject invoke_OIIO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jobject,jint,jint))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)));
	} else {
		return ((jobject (*)(jobject,jobject,jint,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)));
	}
}
jobject invoke_OIZO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jobject,jint,jbool))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_Z(JvmArrayGet_O(pargs,2)));
	} else {
		return ((jobject (*)(jobject,jobject,jint,jbool))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_Z(JvmArrayGet_O(pargs,2)));
	}
}
jobject invoke_OID(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_D(((jdouble (*)(jobject,jint))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1))));
	} else {
		return JvmBox_D(((jdouble (*)(jobject,jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1))));
	}
}
jobject invoke_OOOIO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jobject,jobject,jobject,jint))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)),JvmUnbox_I(JvmArrayGet_O(pargs,3)));
	} else {
		return ((jobject (*)(jobject,jobject,jobject,jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)),JvmUnbox_I(JvmArrayGet_O(pargs,3)));
	}
}
jobject invoke_OIIOV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jobject,jint,jint,jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)),JvmCheckCast(JvmArrayGet_O(pargs,3),JvmArrayGet_O(method->parameters,3)));
	} else {
		((void (*)(jobject,jobject,jint,jint,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)),JvmCheckCast(JvmArrayGet_O(pargs,3),JvmArrayGet_O(method->parameters,3)));
	}
	return jnull;
}
jobject invoke_OIF(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_F(((jfloat (*)(jobject,jint))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1))));
	} else {
		return JvmBox_F(((jfloat (*)(jobject,jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1))));
	}
}
jobject invoke_OII(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jobject,jint))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1))));
	}
}
jobject invoke_OIJ(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_J(((jlong (*)(jobject,jint))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1))));
	} else {
		return JvmBox_J(((jlong (*)(jobject,jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1))));
	}
}
jobject invoke_OIO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jobject,jint))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	} else {
		return ((jobject (*)(jobject,jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	}
}
jobject invoke_OIIOO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jobject,jint,jint,jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)),JvmCheckCast(JvmArrayGet_O(pargs,3),JvmArrayGet_O(method->parameters,3)));
	} else {
		return ((jobject (*)(jobject,jobject,jint,jint,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)),JvmCheckCast(JvmArrayGet_O(pargs,3),JvmArrayGet_O(method->parameters,3)));
	}
}
jobject invoke_SIO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jshort,jint))method->address)(JvmUnbox_S(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	} else {
		return ((jobject (*)(jobject,jshort,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_S(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	}
}
jobject invoke_IOOOV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jint,jobject,jobject,jobject))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)),JvmCheckCast(JvmArrayGet_O(pargs,3),JvmArrayGet_O(method->parameters,3)));
	} else {
		((void (*)(jobject,jint,jobject,jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)),JvmCheckCast(JvmArrayGet_O(pargs,3),JvmArrayGet_O(method->parameters,3)));
	}
	return jnull;
}
jobject invoke_OZF(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_F(((jfloat (*)(jobject,jbool))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_Z(JvmArrayGet_O(pargs,1))));
	} else {
		return JvmBox_F(((jfloat (*)(jobject,jobject,jbool))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_Z(JvmArrayGet_O(pargs,1))));
	}
}
jobject invoke_IIOIV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jint,jint,jobject,jint))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)),JvmUnbox_I(JvmArrayGet_O(pargs,3)));
	} else {
		((void (*)(jobject,jint,jint,jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)),JvmUnbox_I(JvmArrayGet_O(pargs,3)));
	}
	return jnull;
}
jobject invoke_OIV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jobject,jint))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	} else {
		((void (*)(jobject,jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	}
	return jnull;
}
jobject invoke_FI(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jfloat))method->address)(JvmUnbox_F(JvmArrayGet_O(pargs,0))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jfloat))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_F(JvmArrayGet_O(pargs,0))));
	}
}
jobject invoke_OZO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jobject,jbool))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_Z(JvmArrayGet_O(pargs,1)));
	} else {
		return ((jobject (*)(jobject,jobject,jbool))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_Z(JvmArrayGet_O(pargs,1)));
	}
}
jobject invoke_DDI(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jdouble,jdouble))method->address)(JvmUnbox_D(JvmArrayGet_O(pargs,0)),JvmUnbox_D(JvmArrayGet_O(pargs,1))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jdouble,jdouble))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_D(JvmArrayGet_O(pargs,0)),JvmUnbox_D(JvmArrayGet_O(pargs,1))));
	}
}
jobject invoke_FO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jfloat))method->address)(JvmUnbox_F(JvmArrayGet_O(pargs,0)));
	} else {
		return ((jobject (*)(jobject,jfloat))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_F(JvmArrayGet_O(pargs,0)));
	}
}
jobject invoke_OZV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jobject,jbool))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_Z(JvmArrayGet_O(pargs,1)));
	} else {
		((void (*)(jobject,jobject,jbool))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_Z(JvmArrayGet_O(pargs,1)));
	}
	return jnull;
}
jobject invoke_DDO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jdouble,jdouble))method->address)(JvmUnbox_D(JvmArrayGet_O(pargs,0)),JvmUnbox_D(JvmArrayGet_O(pargs,1)));
	} else {
		return ((jobject (*)(jobject,jdouble,jdouble))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_D(JvmArrayGet_O(pargs,0)),JvmUnbox_D(JvmArrayGet_O(pargs,1)));
	}
}
jobject invoke_OB(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_B(((jbyte (*)(jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	} else {
		return JvmBox_B(((jbyte (*)(jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	}
}
jobject invoke_OC(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_C(((jchar (*)(jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	} else {
		return JvmBox_C(((jchar (*)(jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	}
}
jobject invoke_FZ(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_Z(((jbool (*)(jfloat))method->address)(JvmUnbox_F(JvmArrayGet_O(pargs,0))));
	} else {
		return JvmBox_Z(((jbool (*)(jobject,jfloat))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_F(JvmArrayGet_O(pargs,0))));
	}
}
jobject invoke_OD(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_D(((jdouble (*)(jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	} else {
		return JvmBox_D(((jdouble (*)(jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	}
}
jobject invoke_OJO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jobject,jlong))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_J(JvmArrayGet_O(pargs,1)));
	} else {
		return ((jobject (*)(jobject,jobject,jlong))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_J(JvmArrayGet_O(pargs,1)));
	}
}
jobject invoke_OF(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_F(((jfloat (*)(jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	} else {
		return JvmBox_F(((jfloat (*)(jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	}
}
jobject invoke_OI(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	}
}
jobject invoke_OJV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jobject,jlong))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_J(JvmArrayGet_O(pargs,1)));
	} else {
		((void (*)(jobject,jobject,jlong))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_J(JvmArrayGet_O(pargs,1)));
	}
	return jnull;
}
jobject invoke_OJ(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_J(((jlong (*)(jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	} else {
		return JvmBox_J(((jlong (*)(jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	}
}
jobject invoke_OO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)));
	} else {
		return ((jobject (*)(jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)));
	}
}
jobject invoke_OBV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jobject,jbyte))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_B(JvmArrayGet_O(pargs,1)));
	} else {
		((void (*)(jobject,jobject,jbyte))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_B(JvmArrayGet_O(pargs,1)));
	}
	return jnull;
}
jobject invoke_OOOV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jobject,jobject,jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)));
	} else {
		((void (*)(jobject,jobject,jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)),JvmCheckCast(JvmArrayGet_O(pargs,2),JvmArrayGet_O(method->parameters,2)));
	}
	return jnull;
}
jobject invoke_OS(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_S(((jshort (*)(jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	} else {
		return JvmBox_S(((jshort (*)(jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	}
}
jobject invoke_IOII(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jint,jobject,jint))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jint,jobject,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2))));
	}
}
jobject invoke_OV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)));
	} else {
		((void (*)(jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)));
	}
	return jnull;
}
jobject invoke_CCI(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jchar,jchar))method->address)(JvmUnbox_C(JvmArrayGet_O(pargs,0)),JvmUnbox_C(JvmArrayGet_O(pargs,1))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jchar,jchar))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_C(JvmArrayGet_O(pargs,0)),JvmUnbox_C(JvmArrayGet_O(pargs,1))));
	}
}
jobject invoke_BIO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jbyte,jint))method->address)(JvmUnbox_B(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	} else {
		return ((jobject (*)(jobject,jbyte,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_B(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	}
}
jobject invoke_JIJ(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_J(((jlong (*)(jlong,jint))method->address)(JvmUnbox_J(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1))));
	} else {
		return JvmBox_J(((jlong (*)(jobject,jlong,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_J(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1))));
	}
}
jobject invoke_OZ(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_Z(((jbool (*)(jobject))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	} else {
		return JvmBox_Z(((jbool (*)(jobject,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0))));
	}
}
jobject invoke_CCO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jchar,jchar))method->address)(JvmUnbox_C(JvmArrayGet_O(pargs,0)),JvmUnbox_C(JvmArrayGet_O(pargs,1)));
	} else {
		return ((jobject (*)(jobject,jchar,jchar))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_C(JvmArrayGet_O(pargs,0)),JvmUnbox_C(JvmArrayGet_O(pargs,1)));
	}
}
jobject invoke_OIIIII(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_I(((jint (*)(jobject,jint,jint,jint,jint))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)),JvmUnbox_I(JvmArrayGet_O(pargs,3)),JvmUnbox_I(JvmArrayGet_O(pargs,4))));
	} else {
		return JvmBox_I(((jint (*)(jobject,jobject,jint,jint,jint,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)),JvmUnbox_I(JvmArrayGet_O(pargs,2)),JvmUnbox_I(JvmArrayGet_O(pargs,3)),JvmUnbox_I(JvmArrayGet_O(pargs,4))));
	}
}
jobject invoke_IOV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jint,jobject))method->address)(JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)));
	} else {
		((void (*)(jobject,jint,jobject))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_I(JvmArrayGet_O(pargs,0)),JvmCheckCast(JvmArrayGet_O(pargs,1),JvmArrayGet_O(method->parameters,1)));
	}
	return jnull;
}
jobject invoke_JIO(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return ((jobject (*)(jlong,jint))method->address)(JvmUnbox_J(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	} else {
		return ((jobject (*)(jobject,jlong,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_J(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	}
}
jobject invoke_OSV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jobject,jshort))method->address)(JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_S(JvmArrayGet_O(pargs,1)));
	} else {
		((void (*)(jobject,jobject,jshort))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmCheckCast(JvmArrayGet_O(pargs,0),JvmArrayGet_O(method->parameters,0)),JvmUnbox_S(JvmArrayGet_O(pargs,1)));
	}
	return jnull;
}
jobject invoke_JIV(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		((void (*)(jlong,jint))method->address)(JvmUnbox_J(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	} else {
		((void (*)(jobject,jlong,jint))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_J(JvmArrayGet_O(pargs,0)),JvmUnbox_I(JvmArrayGet_O(pargs,1)));
	}
	return jnull;
}
jobject invoke_CCZ(jobject m, jobject pthis, jobject pargs) {
	JvmMethod* method = (JvmMethod*)m;
	if(method->parameters->len > (pargs == jnull ? 0 : JvmArrayLen(pargs))) {} //todo
	if((method->modifiers & 8) != 0) {
		return JvmBox_Z(((jbool (*)(jchar,jchar))method->address)(JvmUnbox_C(JvmArrayGet_O(pargs,0)),JvmUnbox_C(JvmArrayGet_O(pargs,1))));
	} else {
		return JvmBox_Z(((jbool (*)(jobject,jchar,jchar))method->address)(JvmCheckCast(pthis,method->declaringClass),JvmUnbox_C(JvmArrayGet_O(pargs,0)),JvmUnbox_C(JvmArrayGet_O(pargs,1))));
	}
}
