#include "org_xmlvm_iphone_UIFont.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_CGPoint.h"
#include "java_util_ArrayList.h"
#include "org_xmlvm_iphone_NSURL.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSString.h"

__CLASS_DEFINITION_org_xmlvm_iphone_NSString __CLASS_org_xmlvm_iphone_NSString = {
    0, // classInitialized
    "org.xmlvm.iphone.NSString", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSString()
{
    __CLASS_org_xmlvm_iphone_NSString.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_NSString.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSString;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_NSString.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_NSString.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_NSString.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


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
    if (!__CLASS_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    org_xmlvm_iphone_NSString* me = (org_xmlvm_iphone_NSString*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSString));
    me->__class = &__CLASS_org_xmlvm_iphone_NSString;
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
    if (!__CLASS_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_stringWithContentsOfFile___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_stringWithContentsOfURL___org_xmlvm_iphone_NSURL_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__CLASS_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_stringWithContentsOfURL___org_xmlvm_iphone_NSURL_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_stringWithContentsOfURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_stringWithContentsOfURL___org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_dataUsingEncoding___java_lang_String_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__CLASS_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_dataUsingEncoding___java_lang_String_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_stringByAddingPercentEscapesUsingEncoding___java_lang_String_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__CLASS_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_stringByAddingPercentEscapesUsingEncoding___java_lang_String_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_componentsSeparatedByString___java_lang_String_java_lang_String(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__CLASS_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_componentsSeparatedByString___java_lang_String_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_initWithData___org_xmlvm_iphone_NSData_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__CLASS_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_initWithData___org_xmlvm_iphone_NSData_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSString_drawAtPoint___java_lang_String_org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIFont(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    if (!__CLASS_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_drawAtPoint___java_lang_String_org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIFont]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__CLASS_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSString_sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont_org_xmlvm_iphone_CGSize_int(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_INT n4)
{
    if (!__CLASS_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont_org_xmlvm_iphone_CGSize_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSString_writeToFile___java_lang_String_java_lang_String_boolean_int(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3, JAVA_INT n4)
{
    if (!__CLASS_org_xmlvm_iphone_NSString.classInitialized) __INIT_org_xmlvm_iphone_NSString();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSString_writeToFile___java_lang_String_java_lang_String_boolean_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

