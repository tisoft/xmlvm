#include "xmlvm.h"
#include "org_xmlvm_iphone_CFURL.h"
#include "org_xmlvm_iphone_CGDataProvider.h"
#include "org_xmlvm_iphone_CGPDFPage.h"
#include "org_xmlvm_iphone_CGRect.h"

#include "org_xmlvm_iphone_CGPDFDocument.h"

#define XMLVM_CURRENT_CLASS_NAME CGPDFDocument
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_CGPDFDocument

__TIB_DEFINITION_org_xmlvm_iphone_CGPDFDocument __TIB_org_xmlvm_iphone_CGPDFDocument = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_CGPDFDocument, // classInitializer
    "org.xmlvm.iphone.CGPDFDocument", // className
    "org.xmlvm.iphone", // package
    JAVA_NULL, // enclosingClassName
    JAVA_NULL, // enclosingMethodName
    JAVA_NULL, // signature
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_CFType, // extends
    sizeof(org_xmlvm_iphone_CGPDFDocument), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPDFDocument;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPDFDocument_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPDFDocument_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_CGPDFDocument_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION

void org_xmlvm_iphone_CGPDFDocument_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, CFTypeRef wrappedCFTypeRef)
{
    org_xmlvm_iphone_CFType_INTERNAL_CONSTRUCTOR(me, wrappedCFTypeRef);
}

//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static JAVA_OBJECT* __constructor0_arg_types[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
    {&__constructor0_arg_types[0],
    sizeof(__constructor0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGPDFDocument();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    case 0:
        org_xmlvm_iphone_CGPDFDocument___INIT___(obj);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

static JAVA_OBJECT* __method0_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CGDataProvider,
};

static JAVA_OBJECT* __method1_arg_types[] = {
    &__CLASS_org_xmlvm_iphone_CFURL,
};

static JAVA_OBJECT* __method2_arg_types[] = {
};

static JAVA_OBJECT* __method3_arg_types[] = {
};

static JAVA_OBJECT* __method4_arg_types[] = {
};

static JAVA_OBJECT* __method5_arg_types[] = {
    &__CLASS_int_1ARRAY,
    &__CLASS_int_1ARRAY,
};

static JAVA_OBJECT* __method6_arg_types[] = {
};

static JAVA_OBJECT* __method7_arg_types[] = {
    &__CLASS_byte_1ARRAY,
};

static JAVA_OBJECT* __method8_arg_types[] = {
};

static JAVA_OBJECT* __method9_arg_types[] = {
};

static JAVA_OBJECT* __method10_arg_types[] = {
};

static JAVA_OBJECT* __method11_arg_types[] = {
};

static JAVA_OBJECT* __method12_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method13_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method14_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method15_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method16_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method17_arg_types[] = {
    &__CLASS_int,
};

static JAVA_OBJECT* __method18_arg_types[] = {
    &__CLASS_int,
};

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
    {"createWithProvider",
    &__method0_arg_types[0],
    sizeof(__method0_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CGDataProvider;)Lorg/xmlvm/iphone/CGPDFDocument;",
    JAVA_NULL,
    JAVA_NULL},
    {"createWithURL",
    &__method1_arg_types[0],
    sizeof(__method1_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(Lorg/xmlvm/iphone/CFURL;)Lorg/xmlvm/iphone/CGPDFDocument;",
    JAVA_NULL,
    JAVA_NULL},
    {"getTypeID",
    &__method2_arg_types[0],
    sizeof(__method2_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()J",
    JAVA_NULL,
    JAVA_NULL},
    {"retain",
    &__method3_arg_types[0],
    sizeof(__method3_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Lorg/xmlvm/iphone/CGPDFDocument;",
    JAVA_NULL,
    JAVA_NULL},
    {"release",
    &__method4_arg_types[0],
    sizeof(__method4_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()V",
    JAVA_NULL,
    JAVA_NULL},
    {"getVersion",
    &__method5_arg_types[0],
    sizeof(__method5_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "([I[I)V",
    JAVA_NULL,
    JAVA_NULL},
    {"isEncrypted",
    &__method6_arg_types[0],
    sizeof(__method6_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"unlockWithPassword",
    &__method7_arg_types[0],
    sizeof(__method7_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "([B)Z",
    JAVA_NULL,
    JAVA_NULL},
    {"isUnlocked",
    &__method8_arg_types[0],
    sizeof(__method8_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"allowsPrinting",
    &__method9_arg_types[0],
    sizeof(__method9_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"allowsCopying",
    &__method10_arg_types[0],
    sizeof(__method10_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()Z",
    JAVA_NULL,
    JAVA_NULL},
    {"getNumberOfPages",
    &__method11_arg_types[0],
    sizeof(__method11_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "()I",
    JAVA_NULL,
    JAVA_NULL},
    {"getPage",
    &__method12_arg_types[0],
    sizeof(__method12_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)Lorg/xmlvm/iphone/CGPDFPage;",
    JAVA_NULL,
    JAVA_NULL},
    {"getMediaBox",
    &__method13_arg_types[0],
    sizeof(__method13_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"getCropBox",
    &__method14_arg_types[0],
    sizeof(__method14_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"getBleedBox",
    &__method15_arg_types[0],
    sizeof(__method15_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"getTrimBox",
    &__method16_arg_types[0],
    sizeof(__method16_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"getArtBox",
    &__method17_arg_types[0],
    sizeof(__method17_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)Lorg/xmlvm/iphone/CGRect;",
    JAVA_NULL,
    JAVA_NULL},
    {"getRotationAngle",
    &__method18_arg_types[0],
    sizeof(__method18_arg_types) / sizeof(JAVA_OBJECT*),
    JAVA_NULL,
    0,
    0,
    "(I)I",
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
        result = (JAVA_OBJECT) org_xmlvm_iphone_CGPDFDocument_createWithProvider___org_xmlvm_iphone_CGDataProvider(argsArray[0]);
        break;
    case 1:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CGPDFDocument_createWithURL___org_xmlvm_iphone_CFURL(argsArray[0]);
        break;
    case 2:
        conversion.l = (JAVA_LONG) org_xmlvm_iphone_CGPDFDocument_getTypeID__();
        result = __NEW_java_lang_Long();
        java_lang_Long___INIT____long(result, conversion.l);
        break;
    case 3:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CGPDFDocument_retain__(receiver);
        break;
    case 4:
        org_xmlvm_iphone_CGPDFDocument_release__(receiver);
        break;
    case 5:
        org_xmlvm_iphone_CGPDFDocument_getVersion___int_1ARRAY_int_1ARRAY(receiver, argsArray[0], argsArray[1]);
        break;
    case 6:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CGPDFDocument_isEncrypted__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 7:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CGPDFDocument_unlockWithPassword___byte_1ARRAY(receiver, argsArray[0]);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 8:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CGPDFDocument_isUnlocked__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 9:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CGPDFDocument_allowsPrinting__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 10:
        conversion.i = (JAVA_BOOLEAN) org_xmlvm_iphone_CGPDFDocument_allowsCopying__(receiver);
        result = __NEW_java_lang_Boolean();
        java_lang_Boolean___INIT____boolean(result, conversion.i);
        break;
    case 11:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_CGPDFDocument_getNumberOfPages__(receiver);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    case 12:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CGPDFDocument_getPage___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 13:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CGPDFDocument_getMediaBox___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 14:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CGPDFDocument_getCropBox___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 15:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CGPDFDocument_getBleedBox___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 16:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CGPDFDocument_getTrimBox___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 17:
        result = (JAVA_OBJECT) org_xmlvm_iphone_CGPDFDocument_getArtBox___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        break;
    case 18:
        conversion.i = (JAVA_INT) org_xmlvm_iphone_CGPDFDocument_getRotationAngle___int(receiver, ((java_lang_Integer*) argsArray[0])->fields.java_lang_Integer.value_);
        result = __NEW_java_lang_Integer();
        java_lang_Integer___INIT____int(result, conversion.i);
        break;
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_CGPDFDocument()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_CGPDFDocument);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_CGPDFDocument.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_CGPDFDocument.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_CGPDFDocument);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_CGPDFDocument.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_CGPDFDocument.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_CGPDFDocument.initializerThreadId = curThreadId;
        XMLVM_CLASS_USED("org.xmlvm.iphone.CGPDFDocument")
        __INIT_IMPL_org_xmlvm_iphone_CGPDFDocument();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_CGPDFDocument()
{
    // Initialize base class if necessary
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CFType)
    __TIB_org_xmlvm_iphone_CGPDFDocument.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_CGPDFDocument;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_CGPDFDocument.vtable, __TIB_org_xmlvm_iphone_CFType.vtable, sizeof(__TIB_org_xmlvm_iphone_CFType.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_CGPDFDocument.vtable[2] = (VTABLE_PTR) &org_xmlvm_iphone_CGPDFDocument_finalize_org_xmlvm_iphone_CGPDFDocument__;
    __TIB_org_xmlvm_iphone_CGPDFDocument.vtable[7] = (VTABLE_PTR) &org_xmlvm_iphone_CGPDFDocument_retain__;
    __TIB_org_xmlvm_iphone_CGPDFDocument.vtable[6] = (VTABLE_PTR) &org_xmlvm_iphone_CGPDFDocument_release__;
    // Initialize interface information
    __TIB_org_xmlvm_iphone_CGPDFDocument.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_CGPDFDocument.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces

    __TIB_org_xmlvm_iphone_CGPDFDocument.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGPDFDocument.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGPDFDocument.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_CGPDFDocument.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGPDFDocument.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_CGPDFDocument.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_CGPDFDocument.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_CGPDFDocument.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_CGPDFDocument = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_CGPDFDocument);
    __TIB_org_xmlvm_iphone_CGPDFDocument.clazz = __CLASS_org_xmlvm_iphone_CGPDFDocument;
    __TIB_org_xmlvm_iphone_CGPDFDocument.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_CGPDFDocument_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGPDFDocument);
    __CLASS_org_xmlvm_iphone_CGPDFDocument_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGPDFDocument_1ARRAY);
    __CLASS_org_xmlvm_iphone_CGPDFDocument_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_CGPDFDocument_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_CGPDFDocument]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_CGPDFDocument.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_CGPDFDocument(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_CGPDFDocument]
    //XMLVM_END_WRAPPER
    // Call the finalizer
    (*(void (*)(JAVA_OBJECT)) ((java_lang_Object*) me)->tib->vtable[XMLVM_VTABLE_IDX_java_lang_Object_finalize_java_lang_Object__])(me);
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGPDFDocument(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CFType(me, 1 || derivedClassWillRegisterFinalizer);
    //XMLVM_BEGIN_WRAPPER[__INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGPDFDocument]
    //XMLVM_END_WRAPPER
    if (!derivedClassWillRegisterFinalizer) {
        // Tell the GC to finalize us
        XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_CGPDFDocument);
    }
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_CGPDFDocument()
{    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGPDFDocument)
org_xmlvm_iphone_CGPDFDocument* me = (org_xmlvm_iphone_CGPDFDocument*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_CGPDFDocument));
    me->tib = &__TIB_org_xmlvm_iphone_CGPDFDocument;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CGPDFDocument(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_CGPDFDocument]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CGPDFDocument()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_CGPDFDocument();
    org_xmlvm_iphone_CGPDFDocument___INIT___(me);
    return me;
}

void org_xmlvm_iphone_CGPDFDocument_finalize_org_xmlvm_iphone_CGPDFDocument__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_finalize_org_xmlvm_iphone_CGPDFDocument__]
    XMLVM_VAR_CFTHIZ;
    CGPDFDocumentRelease(thiz);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_createWithProvider___org_xmlvm_iphone_CGDataProvider(JAVA_OBJECT n1)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGPDFDocument)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_createWithProvider___org_xmlvm_iphone_CGDataProvider]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_createWithURL___org_xmlvm_iphone_CFURL(JAVA_OBJECT n1)
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGPDFDocument)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_createWithURL___org_xmlvm_iphone_CFURL]
    org_xmlvm_iphone_CFURL* jurl = n1;
    CFURLRef url = jurl->fields.org_xmlvm_iphone_CFType.wrappedCFTypeRef;
    CGPDFDocumentRef doc = CGPDFDocumentCreateWithURL(url);
    if (doc == nil) {
        return JAVA_NULL;
    }
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGPDFDocument();
    org_xmlvm_iphone_CGPDFDocument_INTERNAL_CONSTRUCTOR(obj, doc);
    return obj;
    //XMLVM_END_WRAPPER
}

JAVA_LONG org_xmlvm_iphone_CGPDFDocument_getTypeID__()
{
    XMLVM_CLASS_INIT(org_xmlvm_iphone_CGPDFDocument)
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_getTypeID__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGPDFDocument___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument___INIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_retain__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_retain__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGPDFDocument_release__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_release__]
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_CGPDFDocument_getVersion___int_1ARRAY_int_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_getVersion___int_1ARRAY_int_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CGPDFDocument_isEncrypted__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_isEncrypted__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CGPDFDocument_unlockWithPassword___byte_1ARRAY(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_unlockWithPassword___byte_1ARRAY]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CGPDFDocument_isUnlocked__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_isUnlocked__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CGPDFDocument_allowsPrinting__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_allowsPrinting__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_CGPDFDocument_allowsCopying__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_allowsCopying__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_CGPDFDocument_getNumberOfPages__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_getNumberOfPages__]
    XMLVM_VAR_CFTHIZ;
    return CGPDFDocumentGetNumberOfPages(thiz);
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_getPage___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_getPage___int]
    XMLVM_VAR_CFTHIZ;
    CGPDFPageRef page = CGPDFDocumentGetPage(thiz, n1);
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_CGPDFPage();
    org_xmlvm_iphone_CGPDFPage_INTERNAL_CONSTRUCTOR(obj, CFRetain(page));
    return obj;
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_getMediaBox___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_getMediaBox___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_getCropBox___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_getCropBox___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_getBleedBox___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_getBleedBox___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_getTrimBox___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_getTrimBox___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_CGPDFDocument_getArtBox___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_getArtBox___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_CGPDFDocument_getRotationAngle___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_CGPDFDocument_getRotationAngle___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

