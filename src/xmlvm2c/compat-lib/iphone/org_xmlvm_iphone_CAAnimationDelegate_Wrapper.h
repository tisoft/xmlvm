#ifndef __ORG_XMLVM_IPHONE_CAANIMATIONDELEGATE_WRAPPER__
#define __ORG_XMLVM_IPHONE_CAANIMATIONDELEGATE_WRAPPER__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimationDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimationDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CAAnimationDelegate)
#endif
// Class declarations for org.xmlvm.iphone.CAAnimationDelegate$Wrapper
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_CAAnimationDelegate_Wrapper, 7, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_CAAnimationDelegate_Wrapper)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper

@interface CAAnimationDelegateWrapper : DelegateWrapper
{
    @public JAVA_OBJECT delegate_;
}

- (id) initWithDelegate: (JAVA_OBJECT) d_;

- (void)animationDidStart:(CAAnimation *)theAnimation;
- (void)animationDidStop:(CAAnimation *)theAnimation finished:(BOOL)flag;

@end

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        JAVA_OBJECT delegate_; \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper \
    } org_xmlvm_iphone_CAAnimationDelegate_Wrapper

struct org_xmlvm_iphone_CAAnimationDelegate_Wrapper {
    __TIB_DEFINITION_org_xmlvm_iphone_CAAnimationDelegate_Wrapper* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimationDelegate_Wrapper
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CAAnimationDelegate_Wrapper
typedef struct org_xmlvm_iphone_CAAnimationDelegate_Wrapper org_xmlvm_iphone_CAAnimationDelegate_Wrapper;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_CAAnimationDelegate_Wrapper 7

void __INIT_org_xmlvm_iphone_CAAnimationDelegate_Wrapper();
void __INIT_IMPL_org_xmlvm_iphone_CAAnimationDelegate_Wrapper();
void __DELETE_org_xmlvm_iphone_CAAnimationDelegate_Wrapper(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_CAAnimationDelegate_Wrapper();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_CAAnimationDelegate_Wrapper();
void org_xmlvm_iphone_CAAnimationDelegate_Wrapper___INIT____org_xmlvm_iphone_CAAnimationDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_NSObject \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_CAAnimationDelegate_Wrapper \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_NSObject \


#endif
