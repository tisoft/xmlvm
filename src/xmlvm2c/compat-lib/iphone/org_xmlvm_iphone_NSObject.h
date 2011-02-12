#ifndef __ORG_XMLVM_IPHONE_NSOBJECT__
#define __ORG_XMLVM_IPHONE_NSOBJECT__

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
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.NSObject
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSObject, 14)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS

#import <Foundation/Foundation.h>

#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSObject void *wrappedObjCObj;

void org_xmlvm_iphone_NSObject_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedObjCObj);

#define XMLVM_VAR_THIZ \
    XMLVM_CURRENT_PKG_CLASS_NAME* jthiz = me; \
    XMLVM_CURRENT_CLASS_NAME* thiz = \
        (XMLVM_CURRENT_CLASS_NAME*) (jthiz->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj);

#define XMLVM_VAR_IOS(clazz, var, arg) \
    org_xmlvm_iphone_##clazz* j##var = arg; \
    clazz* var = (clazz*) (j##var->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj);

#define XMLVM_VAR_NSString(var, arg) \
    java_lang_String* j##var = arg; \
    NSString* var = toNSString(arg);

#define XMLVM_VAR_CGRect(var, arg) \
    org_xmlvm_iphone_CGRect* j##var = arg; \
    CGRect var = toCGRect(arg);

#define XMLVM_VAR_J2SE(clazz, var, arg) clazz* var = arg;
#define XMLVM_VAR_BYTE(var, arg)    JAVA_BYTE var = arg;
#define XMLVM_VAR_BOOLEAN(var, arg) JAVA_BOOLEAN var = arg;
#define XMLVM_VAR_SHORT(var, arg)   JAVA_SHORT var = arg;
#define XMLVM_VAR_INT(var, arg)     JAVA_INT var = arg;
#define XMLVM_VAR_FLOAT(var, arg)   JAVA_FLOAT var = arg;
#define XMLVM_VAR_LONG(var, arg)    JAVA_LONG var = arg;
#define XMLVM_VAR_DOUBLE(var, arg)  JAVA_DOUBLE var = arg;

@interface DelegateWrapper : NSObject {
    NSMutableDictionary* sources;
}

- (id) init;
- (void) dealloc;
- (void) addSource: (JAVA_OBJECT) source : (NSObject*) source_o;
- (JAVA_OBJECT) getSource: (NSObject*) source_o;
@end


//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject \
    __INSTANCE_FIELDS_java_lang_Object; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_NSObject \
    } org_xmlvm_iphone_NSObject

struct org_xmlvm_iphone_NSObject {
    __TIB_DEFINITION_org_xmlvm_iphone_NSObject* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
typedef struct org_xmlvm_iphone_NSObject org_xmlvm_iphone_NSObject;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSObject 14
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSObject_retain__ 11
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSObject_release__ 12
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSObject_dealloc__ 13

void __INIT_org_xmlvm_iphone_NSObject();
void __DELETE_org_xmlvm_iphone_NSObject(void* me, void* client_data);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSObject();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSObject();
void org_xmlvm_iphone_NSObject___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_NSObject_performSelectorOnMainThread___java_lang_Object_java_lang_String_java_lang_Object_boolean(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_BOOLEAN n4);
// Vtable index: 11
JAVA_OBJECT org_xmlvm_iphone_NSObject_retain__(JAVA_OBJECT me);
// Vtable index: 12
void org_xmlvm_iphone_NSObject_release__(JAVA_OBJECT me);
// Vtable index: 13
void org_xmlvm_iphone_NSObject_dealloc__(JAVA_OBJECT me);

#endif
