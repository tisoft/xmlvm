#ifndef __ORG_XMLVM_IPHONE_UIVIEW__
#define __ORG_XMLVM_IPHONE_UIVIEW__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIResponder.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewAnimationDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewAnimationDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIViewAnimationDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGPoint)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGAffineTransform
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGAffineTransform
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGAffineTransform)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSDate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIResponder
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIResponder
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIResponder)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGSize
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGSize)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIColor)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.UIView
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIView, 65, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UIView)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIView;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIView_3ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIView_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIView_1ARRAY;

//XMLVM_BEGIN_DECLARATIONS
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIView 65
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setFrame___org_xmlvm_iphone_CGRect 16
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getFrame__ 17
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getCenter__ 18
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setCenter___org_xmlvm_iphone_CGPoint 19
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setLocation___float_float 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setSize___float_float 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_addSubview___org_xmlvm_iphone_UIView 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_sendSubviewToBack___org_xmlvm_iphone_UIView 23
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_insertSubview___org_xmlvm_iphone_UIView_int 24
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_bringSubviewToFront___org_xmlvm_iphone_UIView 25
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_removeFromSuperview__ 26
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getSubviews__ 27
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getSuperview__ 28
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getWindow__ 29
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_layoutSubviews__ 30
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getBounds__ 31
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setBounds___org_xmlvm_iphone_CGRect 32
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setNeedsDisplay__ 33
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setOpaque___boolean 34
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_isOpaque__ 35
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setClearsContextBeforeDrawing___boolean 36
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getBackgroundColor__ 37
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setBackgroundColor___org_xmlvm_iphone_UIColor 38
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getAlpha__ 39
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setAlpha___float 40
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_isHidden__ 41
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setHidden___boolean 42
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setContentMode___int 43
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getContentMode__ 44
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_isUserInteractionEnabled__ 45
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setUserInteractionEnabled___boolean 46
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getTransform__ 47
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setTransform___org_xmlvm_iphone_CGAffineTransform 48
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_clipsToBounds__ 49
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setClipsToBounds___boolean 50
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getTag__ 51
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setTag___int 52
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_convertPointToView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView 53
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_convertPointFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView 54
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_convertRectToView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView 55
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_convertRectFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView 56
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getLayer__ 57
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getAutoresizingMask__ 58
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setAutoresizingMask___int 59
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_isAutoresizesSubviews__ 60
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setAutoresizesSubviews___boolean 61
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_sizeThatFits___org_xmlvm_iphone_CGSize 62
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_sizeToFit__ 63
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect 64

void __INIT_org_xmlvm_iphone_UIView();
void __INIT_IMPL_org_xmlvm_iphone_UIView();
void __DELETE_org_xmlvm_iphone_UIView(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView(JAVA_OBJECT me);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIView();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIView();
void org_xmlvm_iphone_UIView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView___INIT___(JAVA_OBJECT me);
// Vtable index: 16
void org_xmlvm_iphone_UIView_setFrame___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 17
JAVA_OBJECT org_xmlvm_iphone_UIView_getFrame__(JAVA_OBJECT me);
// Vtable index: 18
JAVA_OBJECT org_xmlvm_iphone_UIView_getCenter__(JAVA_OBJECT me);
// Vtable index: 19
void org_xmlvm_iphone_UIView_setCenter___org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 20
void org_xmlvm_iphone_UIView_setLocation___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 21
void org_xmlvm_iphone_UIView_setSize___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 22
void org_xmlvm_iphone_UIView_addSubview___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 23
void org_xmlvm_iphone_UIView_sendSubviewToBack___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 24
void org_xmlvm_iphone_UIView_insertSubview___org_xmlvm_iphone_UIView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2);
// Vtable index: 25
void org_xmlvm_iphone_UIView_bringSubviewToFront___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 26
void org_xmlvm_iphone_UIView_removeFromSuperview__(JAVA_OBJECT me);
// Vtable index: 27
JAVA_OBJECT org_xmlvm_iphone_UIView_getSubviews__(JAVA_OBJECT me);
// Vtable index: 28
JAVA_OBJECT org_xmlvm_iphone_UIView_getSuperview__(JAVA_OBJECT me);
// Vtable index: 29
JAVA_OBJECT org_xmlvm_iphone_UIView_getWindow__(JAVA_OBJECT me);
// Vtable index: 30
void org_xmlvm_iphone_UIView_layoutSubviews__(JAVA_OBJECT me);
// Vtable index: 31
JAVA_OBJECT org_xmlvm_iphone_UIView_getBounds__(JAVA_OBJECT me);
// Vtable index: 32
void org_xmlvm_iphone_UIView_setBounds___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 33
void org_xmlvm_iphone_UIView_setNeedsDisplay__(JAVA_OBJECT me);
// Vtable index: 34
void org_xmlvm_iphone_UIView_setOpaque___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 35
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isOpaque__(JAVA_OBJECT me);
// Vtable index: 36
void org_xmlvm_iphone_UIView_setClearsContextBeforeDrawing___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 37
JAVA_OBJECT org_xmlvm_iphone_UIView_getBackgroundColor__(JAVA_OBJECT me);
// Vtable index: 38
void org_xmlvm_iphone_UIView_setBackgroundColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 39
JAVA_FLOAT org_xmlvm_iphone_UIView_getAlpha__(JAVA_OBJECT me);
// Vtable index: 40
void org_xmlvm_iphone_UIView_setAlpha___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 41
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isHidden__(JAVA_OBJECT me);
// Vtable index: 42
void org_xmlvm_iphone_UIView_setHidden___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 43
void org_xmlvm_iphone_UIView_setContentMode___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 44
JAVA_INT org_xmlvm_iphone_UIView_getContentMode__(JAVA_OBJECT me);
// Vtable index: 45
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isUserInteractionEnabled__(JAVA_OBJECT me);
// Vtable index: 46
void org_xmlvm_iphone_UIView_setUserInteractionEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 47
JAVA_OBJECT org_xmlvm_iphone_UIView_getTransform__(JAVA_OBJECT me);
// Vtable index: 48
void org_xmlvm_iphone_UIView_setTransform___org_xmlvm_iphone_CGAffineTransform(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 49
JAVA_BOOLEAN org_xmlvm_iphone_UIView_clipsToBounds__(JAVA_OBJECT me);
// Vtable index: 50
void org_xmlvm_iphone_UIView_setClipsToBounds___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 51
JAVA_INT org_xmlvm_iphone_UIView_getTag__(JAVA_OBJECT me);
// Vtable index: 52
void org_xmlvm_iphone_UIView_setTag___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 53
JAVA_OBJECT org_xmlvm_iphone_UIView_convertPointToView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 54
JAVA_OBJECT org_xmlvm_iphone_UIView_convertPointFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 55
JAVA_OBJECT org_xmlvm_iphone_UIView_convertRectToView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 56
JAVA_OBJECT org_xmlvm_iphone_UIView_convertRectFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 57
JAVA_OBJECT org_xmlvm_iphone_UIView_getLayer__(JAVA_OBJECT me);
// Vtable index: 58
JAVA_INT org_xmlvm_iphone_UIView_getAutoresizingMask__(JAVA_OBJECT me);
// Vtable index: 59
void org_xmlvm_iphone_UIView_setAutoresizingMask___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 60
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isAutoresizesSubviews__(JAVA_OBJECT me);
// Vtable index: 61
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
// Vtable index: 62
JAVA_OBJECT org_xmlvm_iphone_UIView_sizeThatFits___org_xmlvm_iphone_CGSize(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 63
void org_xmlvm_iphone_UIView_sizeToFit__(JAVA_OBJECT me);
// Vtable index: 64
void org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
