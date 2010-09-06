#ifndef __JAVA_UTIL_ITERATOR__
#define __JAVA_UTIL_ITERATOR__

#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif

XMLVM_DEFINE_CLASS(java_util_Iterator, 14)

#ifndef XMLVM_FORWARD_DECL_java_util_Iterator
#define XMLVM_FORWARD_DECL_java_util_Iterator
typedef struct java_util_Iterator java_util_Iterator;
#endif

#define XMLVM_VTABLE_SIZE_java_util_Iterator 14
#define XMLVM_VTABLE_IDX_java_util_Iterator_hasNext__ 11
#define XMLVM_VTABLE_IDX_java_util_Iterator_next__ 12
#define XMLVM_VTABLE_IDX_java_util_Iterator_remove__ 13

void __INIT_java_util_Iterator(__CLASS_DEFINITION_TEMPLATE** interface);

#endif
