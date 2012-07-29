#ifndef __ORG_XMLVM_IPHONE_UIVIEW__
#define __ORG_XMLVM_IPHONE_UIVIEW__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_UIResponder.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_List
#define XMLVM_FORWARD_DECL_java_util_List
XMLVM_FORWARD_DECL(java_util_List)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CALayer
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CALayer
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CALayer)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGAffineTransform
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGAffineTransform
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGAffineTransform)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGPoint)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGSize)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSDate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIColor)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIGestureRecognizer
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIGestureRecognizer
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIGestureRecognizer)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewAnimationDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewAnimationDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIViewAnimationDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIWindow
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIWindow
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIWindow)
#endif
// Class declarations for org.xmlvm.iphone.UIView
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIView, 13, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIView)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIView;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIView_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIView_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIView_3ARRAY;
//XMLVM_BEGIN_DECLARATIONS

#import <UIKit/UIView.h>

#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIView \
    JAVA_OBJECT subviews; \
    JAVA_OBJECT superView;

void org_xmlvm_iphone_UIView_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me, NSObject* wrappedCObj);
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UIView \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIResponder; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIView \
    } org_xmlvm_iphone_UIView

struct org_xmlvm_iphone_UIView {
    __TIB_DEFINITION_org_xmlvm_iphone_UIView* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UIView;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
typedef struct org_xmlvm_iphone_UIView org_xmlvm_iphone_UIView;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIView 13
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setFrame___org_xmlvm_iphone_CGRect 11
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_layoutSubviews__ 9
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setAlpha___float 10
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_sizeThatFits___org_xmlvm_iphone_CGSize 12

void __INIT_org_xmlvm_iphone_UIView();
void __INIT_IMPL_org_xmlvm_iphone_UIView();
void __DELETE_org_xmlvm_iphone_UIView(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIView();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIView();
void org_xmlvm_iphone_UIView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView___INIT___(JAVA_OBJECT me);
// Vtable index: 11
void org_xmlvm_iphone_UIView_setFrame___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UIView_getFrame__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_UIView_getCenter__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_setCenter___org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView_setLocation___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
void org_xmlvm_iphone_UIView_setSize___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
void org_xmlvm_iphone_UIView_addSubview___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView_sendSubviewToBack___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView_insertSubview___org_xmlvm_iphone_UIView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2);
void org_xmlvm_iphone_UIView_bringSubviewToFront___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView_removeFromSuperview__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_UIView_getSubviews__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_UIView_getSuperview__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_UIView_getWindow__(JAVA_OBJECT me);
// Vtable index: 9
void org_xmlvm_iphone_UIView_layoutSubviews__(JAVA_OBJECT me);
JAVA_OBJECT org_xmlvm_iphone_UIView_getBounds__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_setBounds___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView_setNeedsDisplay__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_setNeedsDisplayInRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView_setNeedsLayout__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_setOpaque___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isOpaque__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_setClearsContextBeforeDrawing___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
JAVA_OBJECT org_xmlvm_iphone_UIView_getBackgroundColor__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_setBackgroundColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_FLOAT org_xmlvm_iphone_UIView_getAlpha__(JAVA_OBJECT me);
// Vtable index: 10
void org_xmlvm_iphone_UIView_setAlpha___float(JAVA_OBJECT me, JAVA_FLOAT n1);
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isHidden__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_setHidden___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
void org_xmlvm_iphone_UIView_setContentMode___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_INT org_xmlvm_iphone_UIView_getContentMode__(JAVA_OBJECT me);
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isUserInteractionEnabled__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_setUserInteractionEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isMultipleTouchEnabled__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_setMultipleTouchEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
JAVA_OBJECT org_xmlvm_iphone_UIView_getTransform__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_setTransform___org_xmlvm_iphone_CGAffineTransform(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_BOOLEAN org_xmlvm_iphone_UIView_clipsToBounds__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_setClipsToBounds___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
JAVA_INT org_xmlvm_iphone_UIView_getTag__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_setTag___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_OBJECT org_xmlvm_iphone_UIView_convertPointToView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
JAVA_OBJECT org_xmlvm_iphone_UIView_convertPointFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
JAVA_OBJECT org_xmlvm_iphone_UIView_convertRectToView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
JAVA_OBJECT org_xmlvm_iphone_UIView_convertRectFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
JAVA_OBJECT org_xmlvm_iphone_UIView_getLayer__(JAVA_OBJECT me);
JAVA_INT org_xmlvm_iphone_UIView_getAutoresizingMask__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_setAutoresizingMask___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isAutoresizesSubviews__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_setAutoresizesSubviews___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
void org_xmlvm_iphone_UIView_beginAnimations___java_lang_String(JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView_commitAnimations__();
void org_xmlvm_iphone_UIView_setAnimationStartDate___org_xmlvm_iphone_NSDate(JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView_setAnimationsEnabled___boolean(JAVA_BOOLEAN n1);
void org_xmlvm_iphone_UIView_setAnimationDuration___double(JAVA_DOUBLE n1);
void org_xmlvm_iphone_UIView_setAnimationDelay___double(JAVA_DOUBLE n1);
void org_xmlvm_iphone_UIView_setAnimationCurve___int(JAVA_INT n1);
void org_xmlvm_iphone_UIView_setAnimationRepeatCount___float(JAVA_FLOAT n1);
void org_xmlvm_iphone_UIView_setAnimationRepeatAutoreverses___boolean(JAVA_BOOLEAN n1);
void org_xmlvm_iphone_UIView_setAnimationBeginsFromCurrentState___boolean(JAVA_BOOLEAN n1);
void org_xmlvm_iphone_UIView_setAnimationTransitionForView___int_org_xmlvm_iphone_UIView_boolean(JAVA_INT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3);
JAVA_BOOLEAN org_xmlvm_iphone_UIView_areAnimationsEnabled__();
void org_xmlvm_iphone_UIView_setAnimationDelegate___org_xmlvm_iphone_UIViewAnimationDelegate(JAVA_OBJECT n1);
// Vtable index: 12
JAVA_OBJECT org_xmlvm_iphone_UIView_sizeThatFits___org_xmlvm_iphone_CGSize(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView_sizeToFit__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView_didAddSubview___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView_willRemoveSubview___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView_willMoveToSuperview___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView_didMoveToSuperview__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_willMoveToWindow___org_xmlvm_iphone_UIWindow(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView_didMoveToWindow__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_addGestureRecognizer___org_xmlvm_iphone_UIGestureRecognizer(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView_removeGestureRecognizer___org_xmlvm_iphone_UIGestureRecognizer(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UIView_getGestureRecognizers__(JAVA_OBJECT me);
void org_xmlvm_iphone_UIView_setGestureRecognizers___java_util_List(JAVA_OBJECT me, JAVA_OBJECT n1);

// Define Obj-C method wrapper contents which invoke the Java methods

#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_layoutSubviews__
#define XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_UIView_layoutSubviews__ \
- (void)layoutSubviews;
#define XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_UIView_layoutSubviews__ \
- (void)layoutSubviews \
{ \
    XMLVM_INJECTED_CODE_BEFORE_org_xmlvm_iphone_UIView_layoutSubviews__;\
    java_lang_Object* jthiz = xmlvm_get_associated_c_object(self); \
    if(jthiz->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_layoutSubviews__] == (VTABLE_PTR)&org_xmlvm_iphone_UIView_layoutSubviews__) \
        [super layoutSubviews]; \
    else {\
        ((void(*)(JAVA_OBJECT))(jthiz->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_layoutSubviews__]))(jthiz); \
    }\
    XMLVM_INJECTED_CODE_AFTER_org_xmlvm_iphone_UIView_layoutSubviews__;\
}
#else
// If the application does not override the method, define nothing for it
#define XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_UIView_layoutSubviews__
#define XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_UIView_layoutSubviews__
#endif

#ifdef XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect
#define XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect \
- (void)drawRect:(CGRect)n1;
#define XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect \
- (void)drawRect:(CGRect)n1 \
{ \
    XMLVM_INJECTED_CODE_BEFORE_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect;\
    java_lang_Object* jthiz = xmlvm_get_associated_c_object(self); \
    JAVA_OBJECT n1_ = fromCGRect(n1); \
    if(jthiz->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect] == (VTABLE_PTR)&org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect) \
        [super drawRect:n1]; \
    else {\
        ((void(*)(JAVA_OBJECT, JAVA_OBJECT))(jthiz->tib->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect]))(jthiz, n1_); \
    }\
    XMLVM_INJECTED_CODE_AFTER_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect;\
}
#else
// If the application does not override the method, define nothing for it
#define XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect
#define XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect
#endif


// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIView \
XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_UIView_layoutSubviews__ \
XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIResponder \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIView \
XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_UIView_layoutSubviews__ \
XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIResponder \


#include "xmlvm-injected-code.h"

#ifndef XMLVM_INJECTED_CODE_BEFORE_org_xmlvm_iphone_UIView_layoutSubviews__
#define XMLVM_INJECTED_CODE_BEFORE_org_xmlvm_iphone_UIView_layoutSubviews__
#endif
#ifndef XMLVM_INJECTED_CODE_AFTER_org_xmlvm_iphone_UIView_layoutSubviews__
#define XMLVM_INJECTED_CODE_AFTER_org_xmlvm_iphone_UIView_layoutSubviews__
#endif
#ifndef XMLVM_INJECTED_CODE_BEFORE_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect
#define XMLVM_INJECTED_CODE_BEFORE_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect
#endif
#ifndef XMLVM_INJECTED_CODE_AFTER_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect
#define XMLVM_INJECTED_CODE_AFTER_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect
#endif
 
#include "xmlvm-ios.h"

@interface UIViewWrapper : UIView

// Append the wrapper method declarations defined in the class Macro
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIView

@end


#endif
