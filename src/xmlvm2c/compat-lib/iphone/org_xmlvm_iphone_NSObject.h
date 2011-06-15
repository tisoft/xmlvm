#ifndef __ORG_XMLVM_IPHONE_NSOBJECT__
#define __ORG_XMLVM_IPHONE_NSOBJECT__

#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_Object.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSSelector
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSSelector
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSSelector)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_Object
#define XMLVM_FORWARD_DECL_java_lang_Object
XMLVM_FORWARD_DECL(java_lang_Object)
#endif
// Class declarations for org.xmlvm.iphone.NSObject
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_NSObject, 6, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_NSObject)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSObject_3ARRAY;
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
    clazz* var = (arg == JAVA_NULL) ? nil : (clazz*) (j##var->fields.org_xmlvm_iphone_NSObject.wrappedObjCObj);

#define XMLVM_VAR_NSString(var, arg) \
    java_lang_String* j##var = arg; \
    NSString* var = toNSString(arg);

#define XMLVM_VAR_CGRect(var, arg) \
    org_xmlvm_iphone_CGRect* j##var = arg; \
    CGRect var = toCGRect(arg);

#define XMLVM_VAR_CGSize(var, arg) \
    org_xmlvm_iphone_CGSize* j##var = arg; \
    CGSize var = toCGSize(arg);

#define XMLVM_VAR_CGPoint(var, arg) \
    org_xmlvm_iphone_CGPoint* j##var = arg; \
    CGPoint var = toCGPoint(arg);

#define XMLVM_VAR_J2SE(clazz, var, arg) clazz* var = arg;
#define XMLVM_VAR_BYTE(var, arg)    JAVA_BYTE var = arg;
#define XMLVM_VAR_BOOLEAN(var, arg) JAVA_BOOLEAN var = arg;
#define XMLVM_VAR_SHORT(var, arg)   JAVA_SHORT var = arg;
#define XMLVM_VAR_INT(var, arg)     JAVA_INT var = arg;
#define XMLVM_VAR_FLOAT(var, arg)   JAVA_FLOAT var = arg;
#define XMLVM_VAR_LONG(var, arg)    JAVA_LONG var = arg;
#define XMLVM_VAR_DOUBLE(var, arg)  JAVA_DOUBLE var = arg;

#define XMLVM_VAR_BYTE_ARRAY(var, arg) \
    org_xmlvm_runtime_XMLVMArray* var = arg; \
    JAVA_ARRAY_BYTE* var##Data = (JAVA_ARRAY_BYTE*) var->fields.org_xmlvm_runtime_XMLVMArray.array_; \
    JAVA_INT var##Length = var->fields.org_xmlvm_runtime_XMLVMArray.length_;

#define XMLVM_VAR_FLOAT_ARRAY(var, arg) \
    org_xmlvm_runtime_XMLVMArray* var = arg; \
    JAVA_ARRAY_FLOAT* var##Data = (JAVA_ARRAY_FLOAT*) var->fields.org_xmlvm_runtime_XMLVMArray.array_; \
    JAVA_INT var##Length = var->fields.org_xmlvm_runtime_XMLVMArray.length_;

@interface DelegateWrapper : NSObject {
    NSMutableDictionary* sources;
    NSObject* source;
    JAVA_OBJECT source_;
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_NSObject 6

void __INIT_org_xmlvm_iphone_NSObject();
void __INIT_IMPL_org_xmlvm_iphone_NSObject();
void __DELETE_org_xmlvm_iphone_NSObject(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_NSObject(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_NSObject();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSObject();
void org_xmlvm_iphone_NSObject___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_NSObject_performSelector___org_xmlvm_iphone_NSSelector_java_lang_Object_double(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_DOUBLE n3);
void org_xmlvm_iphone_NSObject_performSelectorOnMainThread___org_xmlvm_iphone_NSSelector_java_lang_Object_boolean(JAVA_OBJECT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3);
JAVA_OBJECT org_xmlvm_iphone_NSObject_retain__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSObject_release__(JAVA_OBJECT me);
void org_xmlvm_iphone_NSObject_dealloc__(JAVA_OBJECT me);

#endif
