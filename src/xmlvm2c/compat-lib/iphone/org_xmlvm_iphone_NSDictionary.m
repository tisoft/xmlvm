#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"
#include "java_util_Map.h"

#include "org_xmlvm_iphone_NSDictionary.h"

#define XMLVM_CURRENT_CLASS_NAME NSDictionary
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSDictionary

__TIB_DEFINITION_org_xmlvm_iphone_NSDictionary __TIB_org_xmlvm_iphone_NSDictionary = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSDictionary, // classInitializer
    "org.xmlvm.iphone.NSDictionary", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    sizeof(org_xmlvm_iphone_NSDictionary), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDictionary;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDictionary_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDictionary_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSDictionary_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

void org_xmlvm_iphone_NSDictionary_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj)
{
    org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObjCObj);
}

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    NSString* name = NSStringFromClass([obj class]);
    if ([obj class] == [NSDictionary class] || ([name isEqual:@"__NSCFDictionary"])) {
        JAVA_OBJECT jobj = __NEW_org_xmlvm_iphone_NSDictionary();
        org_xmlvm_iphone_NSDictionary_INTERNAL_CONSTRUCTOR(jobj, [obj retain]);
        return jobj;
    }
    return JAVA_NULL;
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSDictionary();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_java_lang_String,
};

static JAVA_OBJECT* __method2_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_NSObject,
    &__CLASS_org_xmlvm_iphone_NSObject,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"dictionaryWithContentsOfFile",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)Ljava/util/Map;",
    JAVA_NULL,
    JAVA_NULL},
    {"objectForKey",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Ljava/lang/String;)Ljava/lang/Object;",
    JAVA_NULL,
    JAVA_NULL},
    {"dictionaryWithObject",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/NSObject;Lorg/xmlvm/iphone/NSObject;)Lorg/xmlvm/iphone/NSDictionary;",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL;
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    XMLVMElem conversion;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    case 0:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSDictionary_dictionaryWithContentsOfFile___java_lang_String(argsArray[0]);
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSDictionary_objectForKey___java_lang_String(receiver, argsArray[0]);
        break;
    case 2:
        result = (JAVA_OBJECT) org_xmlvm_iphone_NSDictionary_dictionaryWithObject___org_xmlvm_iphone_NSObject_org_xmlvm_iphone_NSObject(argsArray[0], argsArray[1]);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSDictionary()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSDictionary);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSDictionary.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSDictionary.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSDictionary);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSDictionary.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSDictionary.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSDictionary.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSDictionary();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSDictionary()
{
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSDictionary.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSDictionary;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSDictionary.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSDictionary.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSDictionary.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_NSDictionary.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSDictionary.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSDictionary.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSDictionary.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSDictionary.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSDictionary.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSDictionary.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSDictionary.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSDictionary = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSDictionary);
    __TIB_org_xmlvm_iphone_NSDictionary.clazz = __CLASS_org_xmlvm_iphone_NSDictionary;
    __TIB_org_xmlvm_iphone_NSDictionary.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSDictionary_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSDictionary);
    __CLASS_org_xmlvm_iphone_NSDictionary_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSDictionary_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSDictionary_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSDictionary_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSDictionary]
    xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSDictionary.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSDictionary(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSDictionary]
    __DELETE_org_xmlvm_iphone_NSObject(me, client_data);
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSDictionary(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(me, 0 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSDictionary]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSDictionary()
{
    if (!__TIB_org_xmlvm_iphone_NSDictionary.classInitialized) __INIT_org_xmlvm_iphone_NSDictionary();
    org_xmlvm_iphone_NSDictionary* me = (org_xmlvm_iphone_NSDictionary*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSDictionary));
    me->tib = &__TIB_org_xmlvm_iphone_NSDictionary;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSDictionary(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSDictionary]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSDictionary()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSDictionary_dictionaryWithContentsOfFile___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSDictionary.classInitialized) __INIT_org_xmlvm_iphone_NSDictionary();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDictionary_dictionaryWithContentsOfFile___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSDictionary_objectForKey___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDictionary_objectForKey___java_lang_String]
	XMLVM_VAR_THIZ;
 	NSString* str = toNSString(n1);	
	NSObject* objCobj = [thiz objectForKey:str];
	JAVA_OBJECT jObj = __NEW_org_xmlvm_iphone_NSObject();
	__INIT_org_xmlvm_iphone_NSObject();
	org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(jObj,objCobj);
	return xmlvm_get_associated_c_object(objCobj);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_NSDictionary_dictionaryWithObject___org_xmlvm_iphone_NSObject_org_xmlvm_iphone_NSObject(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    if (!__TIB_org_xmlvm_iphone_NSDictionary.classInitialized) __INIT_org_xmlvm_iphone_NSDictionary();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSDictionary_dictionaryWithObject___org_xmlvm_iphone_NSObject_org_xmlvm_iphone_NSObject]

    // See the javadoc (in the actual Java class) explaining why the parameters
    // are "NSObject *" instead of "id"

    XMLVM_VAR_IOS(NSObject, obj, n1);
    XMLVM_VAR_IOS(NSObject, key, n2);

    NSDictionary* dict = [NSDictionary dictionaryWithObject:obj forKey:key];
    return xmlvm_get_associated_c_object(dict);

    //XMLVM_END_WRAPPER
}

