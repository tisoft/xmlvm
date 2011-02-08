#ifndef __ORG_XMLVM_IPHONE_UIALERTVIEWDELEGATE__
#define __ORG_XMLVM_IPHONE_UIALERTVIEWDELEGATE__

#include "xmlvm.h"
#include "org_xmlvm_iphone_NSObject.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAlertView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAlertView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIAlertView)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSObject
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSObject)
#endif
// Class declarations for org.xmlvm.iphone.UIAlertViewDelegate
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIAlertViewDelegate, 15)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAlertViewDelegate;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIAlertViewDelegate_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIAlertViewDelegate

#import <UIKit/UIAlertView.h>

#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAlertViewDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAlertViewDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIAlertViewDelegate)
#endif


@interface UIAlertViewDelegateWrapper : NSObject <UIAlertViewDelegate> {
    
    org_xmlvm_iphone_UIAlertViewDelegate* delegate;
    org_xmlvm_iphone_UIAlertView*         alertView;
    
}

- (id) initWithDelegate:(JAVA_OBJECT) delegate_;
- (void) setAlertView:(JAVA_OBJECT) alertView_;

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex;
- (void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex;
- (void)alertViewCancel:(UIAlertView *)alertView;
- (void)didPresentAlertView:(UIAlertView *)alertView;
- (void)willPresentAlertView:(UIAlertView *)alertView;

@end

//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIAlertViewDelegate \
    __INSTANCE_FIELDS_org_xmlvm_iphone_NSObject; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIAlertViewDelegate \
    } org_xmlvm_iphone_UIAlertViewDelegate

struct org_xmlvm_iphone_UIAlertViewDelegate {
    __TIB_DEFINITION_org_xmlvm_iphone_UIAlertViewDelegate* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIAlertViewDelegate;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAlertViewDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIAlertViewDelegate
typedef struct org_xmlvm_iphone_UIAlertViewDelegate org_xmlvm_iphone_UIAlertViewDelegate;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIAlertViewDelegate 15
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIAlertViewDelegate_clickedButtonAtIndex___org_xmlvm_iphone_UIAlertView_int 14

void __INIT_org_xmlvm_iphone_UIAlertViewDelegate();
void __DELETE_org_xmlvm_iphone_UIAlertViewDelegate(void* me, void* client_data);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIAlertViewDelegate();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIAlertViewDelegate();
void org_xmlvm_iphone_UIAlertViewDelegate___INIT___(JAVA_OBJECT me);
// Vtable index: 14
void org_xmlvm_iphone_UIAlertViewDelegate_clickedButtonAtIndex___org_xmlvm_iphone_UIAlertView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2);

#endif
