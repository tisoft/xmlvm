#include "org_xmlvm_iphone_NSData.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSString.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSString __TIB_org_xmlvm_iphone_NSString = {
    0, // classInitialized
    "org.xmlvm.iphone.NSString", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
NSString* toNSString(JAVA_OBJECT o)
{
	java_lang_String* s = (java_lang_String*) o;
	XMLVMArray* value = s->fields.java_lang_String.value_;
	JAVA_INT offset = s->fields.java_lang_String.offset_;
	JAVA_INT count = s->fields.java_lang_String.count_;
	const unichar* str = &value->array.c[offset];
	return [[NSString alloc] initWithCharacters:str length:count];
}//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSString()
{
    __TIB_org_xmlvm_iphone_NSString.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSString.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSString;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSString.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSString.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSString.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSString]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSString(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSString]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSString()
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    org_xmlvm_iphone_NSString* me = (org_xmlvm_iphone_NSString*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSString));
    me->tib = &__TIB_org_xmlvm_iphone_NSString;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSString]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSString()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSString_stringWithContentsOfFile___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_stringWithContentsOfFile___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_stringWithContentsOfURL___org_xmlvm_iphone_NSURL_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_stringWithContentsOfURL___org_xmlvm_iphone_NSURL_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_stringWithContentsOfURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_stringWithContentsOfURL___org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_dataUsingEncoding___java_lang_String_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_dataUsingEncoding___java_lang_String_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_stringByAddingPercentEscapesUsingEncoding___java_lang_String_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_stringByAddingPercentEscapesUsingEncoding___java_lang_String_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_componentsSeparatedByString___java_lang_String_java_lang_String(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_componentsSeparatedByString___java_lang_String_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_initWithData___org_xmlvm_iphone_NSData_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_initWithData___org_xmlvm_iphone_NSData_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSString_drawAtPoint___java_lang_String_org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIFont(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_drawAtPoint___java_lang_String_org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIFont]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont_org_xmlvm_iphone_CGSize_int(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_INT n4)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont_org_xmlvm_iphone_CGSize_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSString_writeToFile___java_lang_String_java_lang_String_boolean_int(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3, JAVA_INT n4)
{
    if (!__TIB_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_writeToFile___java_lang_String_java_lang_String_boolean_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

