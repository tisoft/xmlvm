#ifndef __ORG_XMLVM_IPHONE_NSSEARCHPATHDIRECTORY__
#define __ORG_XMLVM_IPHONE_NSSEARCHPATHDIRECTORY__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "java_lang_Object.h"

// Circular references:
// Class declarations for org.xmlvm.iphone.NSSearchPathDirectory
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSSearchPathDirectory, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSSearchPathDirectory)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDirectory;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDirectory_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDirectory_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSSearchPathDirectory_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSSearchPathDirectory
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSSearchPathDirectory \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSSearchPathDirectory \
    } org_xmlvm_iphone_NSSearchPathDirectory

struct org_xmlvm_iphone_NSSearchPathDirectory {
    __TIB_DEFINITION_org_xmlvm_iphone_NSSearchPathDirectory* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSSearchPathDirectory;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSSearchPathDirectory
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSSearchPathDirectory
typedef struct org_xmlvm_iphone_NSSearchPathDirectory org_xmlvm_iphone_NSSearchPathDirectory;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSSearchPathDirectory 6

void __INIT_org_xmlvm_iphone_NSSearchPathDirectory();
void __INIT_IMPL_org_xmlvm_iphone_NSSearchPathDirectory();
void __DELETE_org_xmlvm_iphone_NSSearchPathDirectory(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSSearchPathDirectory(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSSearchPathDirectory();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSSearchPathDirectory();
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Application();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Application(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_DemoApplication();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_DemoApplication(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_DeveloperApplication();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_DeveloperApplication(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_AdminApplication();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_AdminApplication(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Library();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Library(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Developer();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Developer(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_User();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_User(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Documentation();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Documentation(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Document();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Document(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_CoreService();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_CoreService(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_AutosavedInformation();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_AutosavedInformation(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Desktop();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Desktop(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Caches();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Caches(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_ApplicationSupport();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_ApplicationSupport(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Downloads();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Downloads(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_InputMethods();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_InputMethods(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Movies();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Movies(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Music();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Music(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_Pictures();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_Pictures(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_PrinterDescription();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_PrinterDescription(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_SharedPublic();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_SharedPublic(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_PreferencePanes();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_PreferencePanes(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_ItemReplacement();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_ItemReplacement(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_AllApplications();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_AllApplications(JAVA_INT v);
JAVA_INT org_xmlvm_iphone_NSSearchPathDirectory_GET_AllLibraries();
void org_xmlvm_iphone_NSSearchPathDirectory_PUT_AllLibraries(JAVA_INT v);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSSearchPathDirectory \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSSearchPathDirectory \


#endif
