#ifndef __JAVA_LANG_RUNNABLE__
#define __JAVA_LANG_RUNNABLE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif

XMLVM_DEFINE_CLASS(java_lang_Runnable, 12)

#ifndef XMLVM_FORWARD_DECL_java_lang_Runnable
#define XMLVM_FORWARD_DECL_java_lang_Runnable
typedef struct java_lang_Runnable java_lang_Runnable;
#endif

#define XMLVM_VTABLE_SIZE_java_lang_Runnable 12
#define XMLVM_VTABLE_IDX_java_lang_Runnable_run__ 11

void __INIT_java_lang_Runnable(__TIB_DEFINITION_TEMPLATE** interface);

#endif
