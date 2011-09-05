#include "xmlvm.h"

#include "org_xmlvm_iphone_NSSearchPathDirectory.h"

#define XMLVM_CURRENT_CLASS_NAME NSSearchPathDirectory
#define XMLVM_CURRENT_PKG_CLASS_NAME org_xmlvm_iphone_NSSearchPathDirectory

__TIB_DEFINITION_org_xmlvm_iphone_NSSearchPathDirectory __TIB_org_xmlvm_iphone_NSSearchPathDirectory = {
    0, // classInitializationBegan
    0, // classInitialized
    -1, // initializerThreadId
    __INIT_org_xmlvm_iphone_NSSearchPathDirectory, // classInitializer
    "org.xmlvm.iphone.NSSearchPathDirectory", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_java_lang_Object, // extends
    sizeof(org_xmlvm_iphone_NSSearchPathDirectory), // sizeInstance
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDirectory;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDirectory_1ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDirectory_2ARRAY;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDirectory_3ARRAY;
//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION

static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Application;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_DemoApplication;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_DeveloperApplication;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AdminApplication;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Library;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Developer;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_User;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Documentation;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Document;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_CoreService;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AutosavedInformation;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Desktop;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Caches;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_ApplicationSupport;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Downloads;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_InputMethods;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Movies;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Music;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Pictures;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_PrinterDescription;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_SharedPublic;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_PreferencePanes;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_ItemReplacement;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AllApplications;
static JAVA_INT _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AllLibraries;

#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
    {"Application",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Application,
    "",
    JAVA_NULL},
    {"DemoApplication",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_DemoApplication,
    "",
    JAVA_NULL},
    {"DeveloperApplication",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_DeveloperApplication,
    "",
    JAVA_NULL},
    {"AdminApplication",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AdminApplication,
    "",
    JAVA_NULL},
    {"Library",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Library,
    "",
    JAVA_NULL},
    {"Developer",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Developer,
    "",
    JAVA_NULL},
    {"User",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_User,
    "",
    JAVA_NULL},
    {"Documentation",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Documentation,
    "",
    JAVA_NULL},
    {"Document",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Document,
    "",
    JAVA_NULL},
    {"CoreService",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_CoreService,
    "",
    JAVA_NULL},
    {"AutosavedInformation",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AutosavedInformation,
    "",
    JAVA_NULL},
    {"Desktop",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Desktop,
    "",
    JAVA_NULL},
    {"Caches",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Caches,
    "",
    JAVA_NULL},
    {"ApplicationSupport",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_ApplicationSupport,
    "",
    JAVA_NULL},
    {"Downloads",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Downloads,
    "",
    JAVA_NULL},
    {"InputMethods",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_InputMethods,
    "",
    JAVA_NULL},
    {"Movies",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Movies,
    "",
    JAVA_NULL},
    {"Music",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Music,
    "",
    JAVA_NULL},
    {"Pictures",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Pictures,
    "",
    JAVA_NULL},
    {"PrinterDescription",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_PrinterDescription,
    "",
    JAVA_NULL},
    {"SharedPublic",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_SharedPublic,
    "",
    JAVA_NULL},
    {"PreferencePanes",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_PreferencePanes,
    "",
    JAVA_NULL},
    {"ItemReplacement",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_ItemReplacement,
    "",
    JAVA_NULL},
    {"AllApplications",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AllApplications,
    "",
    JAVA_NULL},
    {"AllLibraries",
    &__CLASS_int,
    0 | java_lang_reflect_Modifier_PUBLIC | java_lang_reflect_Modifier_STATIC,
    0,
    &_STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AllLibraries,
    "",
    JAVA_NULL},
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSSearchPathDirectory();
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

static XMLVM_METHOD_REFLECTION_DATA __method_reflection_data[] = {
};

static JAVA_OBJECT method_dispatcher(JAVA_OBJECT method, JAVA_OBJECT receiver, JAVA_OBJECT arguments)
{
    JAVA_OBJECT result = JAVA_NULL; //TODO need to set result
    java_lang_Object* obj = receiver;
    java_lang_reflect_Method* m = (java_lang_reflect_Method*) method;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (m->fields.java_lang_reflect_Method.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return result;
}

void __INIT_org_xmlvm_iphone_NSSearchPathDirectory()
{
    staticInitializerLock(&__TIB_org_xmlvm_iphone_NSSearchPathDirectory);

    // While the static initializer mutex is locked, locally store the value of
    // whether class initialization began or not
    int initBegan = __TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitializationBegan;

    // Whether or not class initialization had already began, it has begun now
    __TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitializationBegan = 1;

    staticInitializerUnlock(&__TIB_org_xmlvm_iphone_NSSearchPathDirectory);

    JAVA_LONG curThreadId = (JAVA_LONG)pthread_self();
    if (initBegan) {
        if (__TIB_org_xmlvm_iphone_NSSearchPathDirectory.initializerThreadId != curThreadId) {
            // Busy wait until the other thread finishes initializing this class
            while (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) {
                // do nothing
            }
        }
    } else {
        __TIB_org_xmlvm_iphone_NSSearchPathDirectory.initializerThreadId = curThreadId;
        __INIT_IMPL_org_xmlvm_iphone_NSSearchPathDirectory();
    }
}

void __INIT_IMPL_org_xmlvm_iphone_NSSearchPathDirectory()
{
    // Initialize base class if necessary
    if (!__TIB_java_lang_Object.classInitialized) __INIT_java_lang_Object();
    __TIB_org_xmlvm_iphone_NSSearchPathDirectory.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSSearchPathDirectory;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSSearchPathDirectory.vtable, __TIB_java_lang_Object.vtable, sizeof(__TIB_java_lang_Object.vtable));
    // Initialize vtable for this class
    // Initialize interface information
    __TIB_org_xmlvm_iphone_NSSearchPathDirectory.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSSearchPathDirectory.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    // Initialize interfaces if necessary and assign tib to implementedInterfaces
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Application = 1;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_DemoApplication = 2;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_DeveloperApplication = 3;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AdminApplication = 4;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Library = 5;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Developer = 6;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_User = 7;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Documentation = 8;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Document = 9;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_CoreService = 10;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AutosavedInformation = 11;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Desktop = 12;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Caches = 13;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_ApplicationSupport = 14;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Downloads = 15;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_InputMethods = 16;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Movies = 17;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Music = 18;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Pictures = 19;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_PrinterDescription = 20;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_SharedPublic = 21;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_PreferencePanes = 22;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_ItemReplacement = 99;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AllApplications = 100;
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AllLibraries = 101;

    __TIB_org_xmlvm_iphone_NSSearchPathDirectory.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSSearchPathDirectory.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSSearchPathDirectory.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSSearchPathDirectory.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSSearchPathDirectory.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSSearchPathDirectory.methodDispatcherFunc = method_dispatcher;
    __TIB_org_xmlvm_iphone_NSSearchPathDirectory.declaredMethods = &__method_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSSearchPathDirectory.numDeclaredMethods = sizeof(__method_reflection_data) / sizeof(XMLVM_METHOD_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSSearchPathDirectory = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSSearchPathDirectory);
    __TIB_org_xmlvm_iphone_NSSearchPathDirectory.clazz = __CLASS_org_xmlvm_iphone_NSSearchPathDirectory;
    __TIB_org_xmlvm_iphone_NSSearchPathDirectory.baseType = JAVA_NULL;
    __CLASS_org_xmlvm_iphone_NSSearchPathDirectory_1ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSSearchPathDirectory);
    __CLASS_org_xmlvm_iphone_NSSearchPathDirectory_2ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSSearchPathDirectory_1ARRAY);
    __CLASS_org_xmlvm_iphone_NSSearchPathDirectory_3ARRAY = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSSearchPathDirectory_2ARRAY);
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSSearchPathDirectory]
    //XMLVM_END_WRAPPER

    __TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized = 1;
}

void __DELETE_org_xmlvm_iphone_NSSearchPathDirectory(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSSearchPathDirectory]
    //XMLVM_END_WRAPPER
}

void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSSearchPathDirectory(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer)
{
    __INIT_INSTANCE_MEMBERS_java_lang_Object(me, 0 || derivedClassWillRegisterFinalizer);
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSSearchPathDirectory()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    org_xmlvm_iphone_NSSearchPathDirectory* me = (org_xmlvm_iphone_NSSearchPathDirectory*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSSearchPathDirectory));
    me->tib = &__TIB_org_xmlvm_iphone_NSSearchPathDirectory;
    __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSSearchPathDirectory(me, 0);
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSSearchPathDirectory]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSSearchPathDirectory()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Application()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Application;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Application(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Application = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_DemoApplication()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_DemoApplication;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_DemoApplication(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_DemoApplication = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_DeveloperApplication()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_DeveloperApplication;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_DeveloperApplication(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_DeveloperApplication = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_AdminApplication()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AdminApplication;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_AdminApplication(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AdminApplication = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Library()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Library;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Library(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Library = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Developer()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Developer;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Developer(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Developer = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_User()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_User;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_User(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_User = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Documentation()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Documentation;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Documentation(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Documentation = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Document()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Document;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Document(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Document = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_CoreService()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_CoreService;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_CoreService(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_CoreService = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_AutosavedInformation()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AutosavedInformation;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_AutosavedInformation(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AutosavedInformation = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Desktop()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Desktop;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Desktop(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Desktop = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Caches()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Caches;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Caches(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Caches = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_ApplicationSupport()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_ApplicationSupport;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_ApplicationSupport(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_ApplicationSupport = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Downloads()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Downloads;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Downloads(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Downloads = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_InputMethods()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_InputMethods;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_InputMethods(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_InputMethods = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Movies()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Movies;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Movies(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Movies = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Music()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Music;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Music(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Music = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Pictures()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Pictures;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Pictures(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_Pictures = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_PrinterDescription()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_PrinterDescription;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_PrinterDescription(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_PrinterDescription = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_SharedPublic()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_SharedPublic;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_SharedPublic(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_SharedPublic = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_PreferencePanes()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_PreferencePanes;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_PreferencePanes(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_PreferencePanes = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_ItemReplacement()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_ItemReplacement;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_ItemReplacement(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_ItemReplacement = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_AllApplications()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AllApplications;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_AllApplications(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AllApplications = v;
}

JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_AllLibraries()
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    return _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AllLibraries;
}

void org_xmlvm_iphone_NSSearchPathDirectory_PUT_AllLibraries(JAVA_INT v)
{
    if (!__TIB_org_xmlvm_iphone_NSSearchPathDirectory.classInitialized) __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
    _STATIC_org_xmlvm_iphone_NSSearchPathDirectory_AllLibraries = v;
}

