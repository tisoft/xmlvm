#ifndef __JAVA_LANG_ITERABLE__
#define __JAVA_LANG_ITERABLE__

#include "xmlvm.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_Iterator
#define XMLVM_FORWARD_DECL_java_util_Iterator
XMLVM_FORWARD_DECL(java_util_Iterator)
#endif

XMLVM_DEFINE_CLASS(java_lang_Iterable, 12)

#ifndef XMLVM_FORWARD_DECL_java_lang_Iterable
#define XMLVM_FORWARD_DECL_java_lang_Iterable
typedef struct java_lang_Iterable java_lang_Iterable;
#endif

#define XMLVM_VTABLE_SIZE_java_lang_Iterable 12
#define XMLVM_VTABLE_IDX_java_lang_Iterable_iterator__ 11

void __INIT_java_lang_Iterable(__CLASS_DEFINITION_TEMPLATE** interface);

#endif
