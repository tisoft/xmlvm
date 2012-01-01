#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_util_List.h"
#include "org_xmlvm_iphone_NSData.h"
#include "org_xmlvm_iphone_NSRange.h"
#include "org_xmlvm_iphone_NSURL.h"

#include "org_xmlvm_iphone_NSArray.h"

#define XMLVM_CURRENT_CLASS_NAME NSArray
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSArray

__TIB_DEFINITION_org_xmlvm_iphone_NSArray __TIB_org_xmlvm_iphone_NSArray = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSArray, // classInitializer
    "org.xmlvm.iphone.NSArray", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSArray), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSArray;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSArray_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSArray_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSArray_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

NSArray* toNSArray(java_util_List* list)
{
    XMLVM_NOT_IMPLEMENTED();
}

java_util_List* fromNSArray(NSArray* arr)
{
    java_util_List* result = XMLVMUtil_NEW_ArrayList();

    // The NSEnumerator must be managed by an NSAutoreleasePool
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    {
        NSEnumerator* enumerator = [arr objectEnumerator];
        id obj;
        while (obj = [enumerator nextObject]) {
            XMLVMUtil_ArrayList_add(result, xmlvm_get_associated_c_object(obj));
        }
    }
    [pool release];

    return result;
}

void org_xmlvm_iphone_NSArray_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedCObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if ([obj class] == [NSArray class]) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_NSArray();
        org_xmlvm_iphone_NSArray_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
    &__CLASS_java_lang_Object_1ARRAY,
    &__CLASS_int,
};

static JAVA_OBJECT* __constructor1_arg_types[] = {
    &__CLASS_java_lang_Object_1ARRAY,
};

static JAVA_OBJECT* __constructor2_arg_types[] = {
    &__CLASS_java_util_List,
};

static JAVA_OBJECT* __constructor3_arg_types[] = {
    &__CLASS_java_util_List,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __constructor4_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __constructor5_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURL,
};

static JAVA_OBJECT* __constructor6_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor1_arg_types[0],
    sizeof(__constructor1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor2_arg_types[0],
    sizeof(__constructor2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor3_arg_types[0],
    sizeof(__constructor3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor4_arg_types[0],
    sizeof(__constructor4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor5_arg_types[0],
    sizeof(__constructor5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
    {&__constructor6_arg_types[0],
    sizeof(__constructor6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSArray();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_NSArray___INIT____java_lang_Object_1ARRAY_int(obj, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 1:
        org_xmlvm_iphone_NSArray___INIT____java_lang_Object_1ARRAY(obj, argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_NSArray___INIT____java_util_List(obj, argsArray[0]);
        break;
    case 3:
        org_xmlvm_iphone_NSArray___INIT____java_util_List_boolean(obj, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 4:
        org_xmlvm_iphone_NSArray___INIT____java_lang_String(obj, argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_NSArray___INIT____org_xmlvm_iphone_NSURL(obj, argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_NSArray___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_java_lang_Object_1ARRAY,
    &__CLASS_int,
};

static JAVA_OBJECT* __method3_arg_types[] = {
    &__CLASS_java_lang_Object_1ARRAY,
};

static JAVA_OBJECT* __method4_arg_types[] = {
    &__CLASS_java_util_List,
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method6_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURL,
};

static JAVA_OBJECT* __method7_arg_types[] = {
};

static JAVA_OBJECT* __method8_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method9_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method10_arg_types[] = {
    &__CLASS_java_util_List,
};

static JAVA_OBJECT* __method11_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method13_arg_types[] = {
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_java_lang_Object,
    &__CLASS_int,
};

static JAVA_OBJECT* __method16_arg_types[] = {
    &__CLASS_java_util_List,
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_java_lang_Object_1ARRAY,
    &__CLASS_org_xmlvm_iphone_NSRange,
};

static JAVA_OBJECT* __method18_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method19_arg_types[] = {
    &__CLASS_java_lang_Object,
    &__CLASS_org_xmlvm_iphone_NSRange,
};

static JAVA_OBJECT* __method20_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method21_arg_types[] = {
    &__CLASS_java_lang_Object,
    &__CLASS_org_xmlvm_iphone_NSRange,
};

static JAVA_OBJECT* __method22_arg_types[] = {
    &__CLASS_java_util_List,
};

static JAVA_OBJECT* __method23_arg_types[] = {
};

static JAVA_OBJECT* __method24_arg_types[] = {
};

static JAVA_OBJECT* __method25_arg_types[] = {
    &__CLASS_java_lang_Object,
    &__CLASS_byte_1ARRAY,
};

static JAVA_OBJECT* __method26_arg_types[] = {
    &__CLASS_java_lang_Object,
    &__CLASS_byte_1ARRAY,
    &__CLASS_org_xmlvm_iphone_NSData,
};

static JAVA_OBJECT* __method27_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSRange,
};

static JAVA_OBJECT* __method28_arg_types[] = {
    &__CLASS_java_lang_String,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method29_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSURL,
    &__CLASS_boolean,
};

static JAVA_OBJECT* __method30_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method31_arg_types[] = {
    &__CLASS_int,
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method32_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method33_arg_types[] = {
    &__CLASS_int,
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method34_arg_types[] = {
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method35_arg_types[] = {
    &__CLASS_int,
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method36_arg_types[] = {
    &__CLASS_java_lang_Object,
    &__CLASS_org_xmlvm_iphone_NSRange,
    &__CLASS_int,
    &__CLASS_java_lang_Object,
};

static JAVA_OBJECT* __method37_arg_types[] = {
    &__CLASS_java_lang_Object_1ARRAY,
};

static JAVA_OBJECT* __method38_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method39_arg_types[] = {
    &__CLASS_java_lang_Object,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method40_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSObject,
    &__CLASS_java_lang_String,
    &__CLASS_int,
    &__CLASS_byte_1ARRAY,
};

static JAVA_OBJECT* __method41_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSObject,
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method42_arg_types[] = {
    &__CLASS_java_util_List,
};

static JAVA_OBJECT* __method43_arg_types[] = {
    &__CLASS_java_util_List,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"array",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"arrayWithObject",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"arrayWithObjects",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "([Ljava/lang/Object;I)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"arrayWithObjects",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "([Ljava/lang/Object;)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"arrayWithArray",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"arrayWithContentsOfFile",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"arrayWithContentsOfURL",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSURL;)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"count",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"objectAtIndex",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)Ljava/lang/Object;",
    JAVA_NULL,
    JAVA_NULL},
    {"arrayByAddingObject",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"arrayByAddingObjectsFromArray",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"componentsJoinedByString",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"containsObject",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"description",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"descriptionWithLocale",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"descriptionWithLocale",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;I)Ljava/lang/String;",
    JAVA_NULL,
    JAVA_NULL},
    {"firstObjectCommonWithArray",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;)Ljava/lang/Object;",
    JAVA_NULL,
    JAVA_NULL},
    {"getObjects",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "([Ljava/lang/Object;Lorg/xmlvm/iphone/NSRange;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"indexOfObject",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)I",
    JAVA_NULL,
    JAVA_NULL},
    {"indexOfObject",
    &__method19_arg_types[0],
    sizeof(__method19_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;Lorg/xmlvm/iphone/NSRange;)I",
    JAVA_NULL,
    JAVA_NULL},
    {"indexOfObjectIdenticalTo",
    &__method20_arg_types[0],
    sizeof(__method20_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)I",
    JAVA_NULL,
    JAVA_NULL},
    {"indexOfObjectIdenticalTo",
    &__method21_arg_types[0],
    sizeof(__method21_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;Lorg/xmlvm/iphone/NSRange;)I",
    JAVA_NULL,
    JAVA_NULL},
    {"isEqualToArray",
    &__method22_arg_types[0],
    sizeof(__method22_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"lastObject",
    &__method23_arg_types[0],
    sizeof(__method23_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Ljava/lang/Object;",
    JAVA_NULL,
    JAVA_NULL},
    {"sortedArrayHint",
    &__method24_arg_types[0],
    sizeof(__method24_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/NSData;",
    JAVA_NULL,
    JAVA_NULL},
    {"sortedArrayUsingFunction",
    &__method25_arg_types[0],
    sizeof(__method25_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;[B)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"sortedArrayUsingFunction",
    &__method26_arg_types[0],
    sizeof(__method26_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;[BLorg/xmlvm/iphone/NSData;)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"subarrayWithRange",
    &__method27_arg_types[0],
    sizeof(__method27_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSRange;)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"writeToFile",
    &__method28_arg_types[0],
    sizeof(__method28_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;Z)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"writeToURL",
    &__method29_arg_types[0],
    sizeof(__method29_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSURL;Z)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"enumerateObjectsUsingBlock",
    &__method30_arg_types[0],
    sizeof(__method30_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"enumerateObjectsWithOptions",
    &__method31_arg_types[0],
    sizeof(__method31_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(ILjava/lang/Object;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"indexOfObjectPassingTest",
    &__method32_arg_types[0],
    sizeof(__method32_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)I",
    JAVA_NULL,
    JAVA_NULL},
    {"indexOfObjectWithOptions",
    &__method33_arg_types[0],
    sizeof(__method33_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(ILjava/lang/Object;)I",
    JAVA_NULL,
    JAVA_NULL},
    {"sortedArrayUsingComparator",
    &__method34_arg_types[0],
    sizeof(__method34_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"sortedArrayWithOptions",
    &__method35_arg_types[0],
    sizeof(__method35_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(ILjava/lang/Object;)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"indexOfObject",
    &__method36_arg_types[0],
    sizeof(__method36_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;Lorg/xmlvm/iphone/NSRange;ILjava/lang/Object;)I",
    JAVA_NULL,
    JAVA_NULL},
    {"getObjects",
    &__method37_arg_types[0],
    sizeof(__method37_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "([Ljava/lang/Object;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"valueForKey",
    &__method38_arg_types[0],
    sizeof(__method38_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)Ljava/lang/Object;",
    JAVA_NULL,
    JAVA_NULL},
    {"setValue",
    &__method39_arg_types[0],
    sizeof(__method39_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/Object;Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"addObserver",
    &__method40_arg_types[0],
    sizeof(__method40_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSObject;Ljava/lang/String;I[B)V",
    JAVA_NULL,
    JAVA_NULL},
    {"removeObserver",
    &__method41_arg_types[0],
    sizeof(__method41_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSObject;Ljava/lang/String;)V",
    JAVA_NULL,
    JAVA_NULL},
    {"pathsMatchingExtensions",
    &__method42_arg_types[0],
    sizeof(__method42_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
    {"sortedArrayUsingDescriptors",
    &__method43_arg_types[0],
    sizeof(__method43_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/util/List;)Ljava/util/List;",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        org_xmlvm_iphone_NSArray_array__();
        break;
    case 1:
        org_xmlvm_iphone_NSArray_arrayWithObject___java_lang_Object(argsArray[0]);
        break;
    case 2:
        org_xmlvm_iphone_NSArray_arrayWithObjects___java_lang_Object_1ARRAY_int(argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 3:
        org_xmlvm_iphone_NSArray_arrayWithObjects___java_lang_Object_1ARRAY(argsArray[0]);
        break;
    case 4:
        org_xmlvm_iphone_NSArray_arrayWithArray___java_util_List(argsArray[0]);
        break;
    case 5:
        org_xmlvm_iphone_NSArray_arrayWithContentsOfFile___java_lang_String(argsArray[0]);
        break;
    case 6:
        org_xmlvm_iphone_NSArray_arrayWithContentsOfURL___org_xmlvm_iphone_NSURL(argsArray[0]);
        break;
    case 7:
        org_xmlvm_iphone_NSArray_count__(receiver);
        break;
    case 8:
        org_xmlvm_iphone_NSArray_objectAtIndex___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 9:
        org_xmlvm_iphone_NSArray_arrayByAddingObject___java_lang_Object(receiver, argsArray[0]);
        break;
    case 10:
        org_xmlvm_iphone_NSArray_arrayByAddingObjectsFromArray___java_util_List(receiver, argsArray[0]);
        break;
    case 11:
        org_xmlvm_iphone_NSArray_componentsJoinedByString___java_lang_String(receiver, argsArray[0]);
        break;
    case 12:
        org_xmlvm_iphone_NSArray_containsObject___java_lang_Object(receiver, argsArray[0]);
        break;
    case 13:
        org_xmlvm_iphone_NSArray_description__(receiver);
        break;
    case 14:
        org_xmlvm_iphone_NSArray_descriptionWithLocale___java_lang_Object(receiver, argsArray[0]);
        break;
    case 15:
        org_xmlvm_iphone_NSArray_descriptionWithLocale___java_lang_Object_int(receiver, argsArray[0], ((java_lang_Integer*) argsArray[1])->fields.java_lang_Integer.value_);
        break;
    case 16:
        org_xmlvm_iphone_NSArray_firstObjectCommonWithArray___java_util_List(receiver, argsArray[0]);
        break;
    case 17:
        org_xmlvm_iphone_NSArray_getObjects___java_lang_Object_1ARRAY_org_xmlvm_iphone_NSRange(receiver, argsArray[0], argsArray[1]);
        break;
    case 18:
        org_xmlvm_iphone_NSArray_indexOfObject___java_lang_Object(receiver, argsArray[0]);
        break;
    case 19:
        org_xmlvm_iphone_NSArray_indexOfObject___java_lang_Object_org_xmlvm_iphone_NSRange(receiver, argsArray[0], argsArray[1]);
        break;
    case 20:
        org_xmlvm_iphone_NSArray_indexOfObjectIdenticalTo___java_lang_Object(receiver, argsArray[0]);
        break;
    case 21:
        org_xmlvm_iphone_NSArray_indexOfObjectIdenticalTo___java_lang_Object_org_xmlvm_iphone_NSRange(receiver, argsArray[0], argsArray[1]);
        break;
    case 22:
        org_xmlvm_iphone_NSArray_isEqualToArray___java_util_List(receiver, argsArray[0]);
        break;
    case 23:
        org_xmlvm_iphone_NSArray_lastObject__(receiver);
        break;
    case 24:
        org_xmlvm_iphone_NSArray_sortedArrayHint__(receiver);
        break;
    case 25:
        org_xmlvm_iphone_NSArray_sortedArrayUsingFunction___java_lang_Object_byte_1ARRAY(receiver, argsArray[0], argsArray[1]);
        break;
    case 26:
        org_xmlvm_iphone_NSArray_sortedArrayUsingFunction___java_lang_Object_byte_1ARRAY_org_xmlvm_iphone_NSData(receiver, argsArray[0], argsArray[1], argsArray[2]);
        break;
    case 27:
        org_xmlvm_iphone_NSArray_subarrayWithRange___org_xmlvm_iphone_NSRange(receiver, argsArray[0]);
        break;
    case 28:
        org_xmlvm_iphone_NSArray_writeToFile___java_lang_String_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 29:
        org_xmlvm_iphone_NSArray_writeToURL___org_xmlvm_iphone_NSURL_boolean(receiver, argsArray[0], ((java_lang_Boolean*) argsArray[1])->fields.java_lang_Boolean.value_);
        break;
    case 30:
        org_xmlvm_iphone_NSArray_enumerateObjectsUsingBlock___java_lang_Object(receiver, argsArray[0]);
        break;
    case 31:
        org_xmlvm_iphone_NSArray_enumerateObjectsWithOptions___int_java_lang_Object(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, argsArray[1]);
        break;
    case 32:
        org_xmlvm_iphone_NSArray_indexOfObjectPassingTest___java_lang_Object(receiver, argsArray[0]);
        break;
    case 33:
        org_xmlvm_iphone_NSArray_indexOfObjectWithOptions___int_java_lang_Object(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, argsArray[1]);
        break;
    case 34:
        org_xmlvm_iphone_NSArray_sortedArrayUsingComparator___java_lang_Object(receiver, argsArray[0]);
        break;
    case 35:
        org_xmlvm_iphone_NSArray_sortedArrayWithOptions___int_java_lang_Object(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_, argsArray[1]);
        break;
    case 36:
        org_xmlvm_iphone_NSArray_indexOfObject___java_lang_Object_org_xmlvm_iphone_NSRange_int_java_lang_Object(receiver, argsArray[0], argsArray[1], ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, argsArray[3]);
        break;
    case 37:
        org_xmlvm_iphone_NSArray_getObjects___java_lang_Object_1ARRAY(receiver, argsArray[0]);
        break;
    case 38:
        org_xmlvm_iphone_NSArray_valueForKey___java_lang_String(receiver, argsArray[0]);
        break;
    case 39:
        org_xmlvm_iphone_NSArray_setValue___java_lang_Object_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    case 40:
        org_xmlvm_iphone_NSArray_addObserver___org_xmlvm_iphone_NSObject_java_lang_String_int_byte_1ARRAY(receiver, argsArray[0], argsArray[1], ((java_lang_Integer*) argsArray[2])->fields.java_lang_Integer.value_, argsArray[3]);
        break;
    case 41:
        org_xmlvm_iphone_NSArray_removeObserver___org_xmlvm_iphone_NSObject_java_lang_String(receiver, argsArray[0], argsArray[1]);
        break;
    case 42:
        org_xmlvm_iphone_NSArray_pathsMatchingExtensions___java_util_List(receiver, argsArray[0]);
        break;
    case 43:
        org_xmlvm_iphone_NSArray_sortedArrayUsingDescriptors___java_util_List(receiver, argsArray[0]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSArray()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSArray);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSArray.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSArray.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSArray);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSArray.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSArray.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSArray.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSArray();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSArray()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSArray.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSArray;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSArray.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSArray.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSArray.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSArray.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSArray.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSArray.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSArray.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSArray.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSArray.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSArray.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSArray.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSArray = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSArray);
    __TIB_org_xmlvm_iphone_NSArray.clazz = __CLASS_org_xmlvm_iphone_NSArray;
    __TIB_org_xmlvm_iphone_NSArray.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSArray_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSArray);
    __CLASS_org_xmlvm_iphone_NSArray_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSArray_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSArray_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSArray_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSArray]

    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);

    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSArray.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSArray(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSArray]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSArray(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSArray]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSArray()
{
    if (!__TIB_org_xmlvm_iphone_NSArray.classInitialized) __INIT_org_xmlvm_iphone_NSArray();
    org_xmlvm_iphone_NSArray* me = (org_xmlvm_iphone_NSArray*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSArray));
    me->tib = &__TIB_org_xmlvm_iphone_NSArray;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSArray(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSArray]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSArray()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_NSArray();
    org_xmlvm_iphone_NSArray___INIT___(me);
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_array__()
{
    if (!__TIB_org_xmlvm_iphone_NSArray.classInitialized) __INIT_org_xmlvm_iphone_NSArray();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_array__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_arrayWithObject___java_lang_Object(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSArray.classInitialized) __INIT_org_xmlvm_iphone_NSArray();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_arrayWithObject___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_arrayWithObjects___java_lang_Object_1ARRAY_int(JAVA_OBJECT n1, JAVA_INT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSArray.classInitialized) __INIT_org_xmlvm_iphone_NSArray();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_arrayWithObjects___java_lang_Object_1ARRAY_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_arrayWithObjects___java_lang_Object_1ARRAY(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSArray.classInitialized) __INIT_org_xmlvm_iphone_NSArray();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_arrayWithObjects___java_lang_Object_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_arrayWithArray___java_util_List(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSArray.classInitialized) __INIT_org_xmlvm_iphone_NSArray();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_arrayWithArray___java_util_List]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_arrayWithContentsOfFile___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSArray.classInitialized) __INIT_org_xmlvm_iphone_NSArray();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_arrayWithContentsOfFile___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_arrayWithContentsOfURL___org_xmlvm_iphone_NSURL(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSArray.classInitialized) __INIT_org_xmlvm_iphone_NSArray();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_arrayWithContentsOfURL___org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSArray___INIT____java_lang_Object_1ARRAY_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray___INIT____java_lang_Object_1ARRAY_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSArray___INIT____java_lang_Object_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray___INIT____java_lang_Object_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSArray___INIT____java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray___INIT____java_util_List]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSArray___INIT____java_util_List_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray___INIT____java_util_List_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSArray___INIT____java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray___INIT____java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSArray___INIT____org_xmlvm_iphone_NSURL(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray___INIT____org_xmlvm_iphone_NSURL]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSArray___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSArray_count__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_count__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_objectAtIndex___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_objectAtIndex___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_arrayByAddingObject___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_arrayByAddingObject___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_arrayByAddingObjectsFromArray___java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_arrayByAddingObjectsFromArray___java_util_List]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_componentsJoinedByString___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_componentsJoinedByString___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSArray_containsObject___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_containsObject___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_description__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_description__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_descriptionWithLocale___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_descriptionWithLocale___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_descriptionWithLocale___java_lang_Object_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_descriptionWithLocale___java_lang_Object_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_firstObjectCommonWithArray___java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_firstObjectCommonWithArray___java_util_List]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSArray_getObjects___java_lang_Object_1ARRAY_org_xmlvm_iphone_NSRange(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_getObjects___java_lang_Object_1ARRAY_org_xmlvm_iphone_NSRange]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSArray_indexOfObject___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_indexOfObject___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSArray_indexOfObject___java_lang_Object_org_xmlvm_iphone_NSRange(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_indexOfObject___java_lang_Object_org_xmlvm_iphone_NSRange]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSArray_indexOfObjectIdenticalTo___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_indexOfObjectIdenticalTo___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSArray_indexOfObjectIdenticalTo___java_lang_Object_org_xmlvm_iphone_NSRange(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_indexOfObjectIdenticalTo___java_lang_Object_org_xmlvm_iphone_NSRange]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSArray_isEqualToArray___java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_isEqualToArray___java_util_List]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_lastObject__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_lastObject__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_sortedArrayHint__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_sortedArrayHint__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_sortedArrayUsingFunction___java_lang_Object_byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_sortedArrayUsingFunction___java_lang_Object_byte_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_sortedArrayUsingFunction___java_lang_Object_byte_1ARRAY_org_xmlvm_iphone_NSData(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_sortedArrayUsingFunction___java_lang_Object_byte_1ARRAY_org_xmlvm_iphone_NSData]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_subarrayWithRange___org_xmlvm_iphone_NSRange(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_subarrayWithRange___org_xmlvm_iphone_NSRange]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSArray_writeToFile___java_lang_String_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_writeToFile___java_lang_String_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSArray_writeToURL___org_xmlvm_iphone_NSURL_boolean(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_BOOLEAN n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_writeToURL___org_xmlvm_iphone_NSURL_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSArray_enumerateObjectsUsingBlock___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_enumerateObjectsUsingBlock___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSArray_enumerateObjectsWithOptions___int_java_lang_Object(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_enumerateObjectsWithOptions___int_java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSArray_indexOfObjectPassingTest___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_indexOfObjectPassingTest___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSArray_indexOfObjectWithOptions___int_java_lang_Object(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_indexOfObjectWithOptions___int_java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_sortedArrayUsingComparator___java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_sortedArrayUsingComparator___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_sortedArrayWithOptions___int_java_lang_Object(JAVA_OBJECT me, JAVA_INT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_sortedArrayWithOptions___int_java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_NSArray_indexOfObject___java_lang_Object_org_xmlvm_iphone_NSRange_int_java_lang_Object(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_INT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_indexOfObject___java_lang_Object_org_xmlvm_iphone_NSRange_int_java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSArray_getObjects___java_lang_Object_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_getObjects___java_lang_Object_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_valueForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_valueForKey___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSArray_setValue___java_lang_Object_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_setValue___java_lang_Object_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSArray_addObserver___org_xmlvm_iphone_NSObject_java_lang_String_int_byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_INT n3, JAVA_OBJECT n4)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_addObserver___org_xmlvm_iphone_NSObject_java_lang_String_int_byte_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSArray_removeObserver___org_xmlvm_iphone_NSObject_java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_removeObserver___org_xmlvm_iphone_NSObject_java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_pathsMatchingExtensions___java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_pathsMatchingExtensions___java_util_List]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSArray_sortedArrayUsingDescriptors___java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSArray_sortedArrayUsingDescriptors___java_util_List]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

