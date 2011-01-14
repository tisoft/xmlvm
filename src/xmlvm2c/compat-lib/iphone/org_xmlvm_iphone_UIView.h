#ifndef __ORG_XMLVM_IPHONE_UIVIEW__
#define __ORG_XMLVM_IPHONE_UIVIEW__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIResponder.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGPoint
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGPoint)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIWindow
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIWindow
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIWindow)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGAffineTransform
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGAffineTransform
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGAffineTransform)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CALayer
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CALayer
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CALayer)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIResponder
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIResponder
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIResponder)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_List
#define XMLVM_FORWARD_DECL_java_util_List
XMLVM_FORWARD_DECL(java_util_List)
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
// Class declarations for org.xmlvm.iphone.UIView
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIView, 70)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIView;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UIView_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UIView \
    JAVA_OBJECT subviews

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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIView 70
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setFrame___org_xmlvm_iphone_CGRect 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getFrame__ 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getCenter__ 23
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setCenter___org_xmlvm_iphone_CGPoint 24
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setLocation___float_float 25
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setSize___float_float 26
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_addSubview___org_xmlvm_iphone_UIView 27
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_sendSubviewToBack___org_xmlvm_iphone_UIView 28
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_insertSubview___org_xmlvm_iphone_UIView_int 29
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_bringSubviewToFront___org_xmlvm_iphone_UIView 30
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_removeFromSuperview__ 31
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getSubviews__ 32
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getSuperview__ 33
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getWindow__ 34
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_layoutSubviews__ 35
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getBounds__ 36
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setBounds___org_xmlvm_iphone_CGRect 37
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setNeedsDisplay__ 38
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setOpaque___boolean 39
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_isOpaque__ 40
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setClearsContextBeforeDrawing___boolean 41
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getBackgroundColor__ 42
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setBackgroundColor___org_xmlvm_iphone_UIColor 43
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getAlpha__ 44
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setAlpha___float 45
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_isHidden__ 46
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setHidden___boolean 47
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setContentMode___int 48
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getContentMode__ 49
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_isUserInteractionEnabled__ 50
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setUserInteractionEnabled___boolean 51
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getTransform__ 52
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setTransform___org_xmlvm_iphone_CGAffineTransform 53
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_clipsToBounds__ 54
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setClipsToBounds___boolean 55
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getTag__ 56
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setTag___int 57
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_convertPointToView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView 58
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_convertPointFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView 59
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_convertRectToView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView 60
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_convertRectFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView 61
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getLayer__ 62
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getAutoresizingMask__ 63
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setAutoresizingMask___int 64
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_isAutoresizesSubviews__ 65
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setAutoresizesSubviews___boolean 66
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_sizeThatFits___org_xmlvm_iphone_CGSize 67
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_sizeToFit__ 68
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect 69

void __INIT_org_xmlvm_iphone_UIView();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIView();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIView();
void org_xmlvm_iphone_UIView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView___INIT___(JAVA_OBJECT me);
// Vtable index: 21
void org_xmlvm_iphone_UIView_setFrame___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 22
JAVA_OBJECT org_xmlvm_iphone_UIView_getFrame__(JAVA_OBJECT me);
// Vtable index: 23
JAVA_OBJECT org_xmlvm_iphone_UIView_getCenter__(JAVA_OBJECT me);
// Vtable index: 24
void org_xmlvm_iphone_UIView_setCenter___org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 25
void org_xmlvm_iphone_UIView_setLocation___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 26
void org_xmlvm_iphone_UIView_setSize___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 27
void org_xmlvm_iphone_UIView_addSubview___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 28
void org_xmlvm_iphone_UIView_sendSubviewToBack___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 29
void org_xmlvm_iphone_UIView_insertSubview___org_xmlvm_iphone_UIView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2);
// Vtable index: 30
void org_xmlvm_iphone_UIView_bringSubviewToFront___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 31
void org_xmlvm_iphone_UIView_removeFromSuperview__(JAVA_OBJECT me);
// Vtable index: 32
JAVA_OBJECT org_xmlvm_iphone_UIView_getSubviews__(JAVA_OBJECT me);
// Vtable index: 33
JAVA_OBJECT org_xmlvm_iphone_UIView_getSuperview__(JAVA_OBJECT me);
// Vtable index: 34
JAVA_OBJECT org_xmlvm_iphone_UIView_getWindow__(JAVA_OBJECT me);
// Vtable index: 35
void org_xmlvm_iphone_UIView_layoutSubviews__(JAVA_OBJECT me);
// Vtable index: 36
JAVA_OBJECT org_xmlvm_iphone_UIView_getBounds__(JAVA_OBJECT me);
// Vtable index: 37
void org_xmlvm_iphone_UIView_setBounds___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 38
void org_xmlvm_iphone_UIView_setNeedsDisplay__(JAVA_OBJECT me);
// Vtable index: 39
void org_xmlvm_iphone_UIView_setOpaque___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 40
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isOpaque__(JAVA_OBJECT me);
// Vtable index: 41
void org_xmlvm_iphone_UIView_setClearsContextBeforeDrawing___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 42
JAVA_OBJECT org_xmlvm_iphone_UIView_getBackgroundColor__(JAVA_OBJECT me);
// Vtable index: 43
void org_xmlvm_iphone_UIView_setBackgroundColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 44
JAVA_FLOAT org_xmlvm_iphone_UIView_getAlpha__(JAVA_OBJECT me);
// Vtable index: 45
void org_xmlvm_iphone_UIView_setAlpha___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 46
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isHidden__(JAVA_OBJECT me);
// Vtable index: 47
void org_xmlvm_iphone_UIView_setHidden___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 48
void org_xmlvm_iphone_UIView_setContentMode___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 49
JAVA_INT org_xmlvm_iphone_UIView_getContentMode__(JAVA_OBJECT me);
// Vtable index: 50
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isUserInteractionEnabled__(JAVA_OBJECT me);
// Vtable index: 51
void org_xmlvm_iphone_UIView_setUserInteractionEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 52
JAVA_OBJECT org_xmlvm_iphone_UIView_getTransform__(JAVA_OBJECT me);
// Vtable index: 53
void org_xmlvm_iphone_UIView_setTransform___org_xmlvm_iphone_CGAffineTransform(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 54
JAVA_BOOLEAN org_xmlvm_iphone_UIView_clipsToBounds__(JAVA_OBJECT me);
// Vtable index: 55
void org_xmlvm_iphone_UIView_setClipsToBounds___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 56
JAVA_INT org_xmlvm_iphone_UIView_getTag__(JAVA_OBJECT me);
// Vtable index: 57
void org_xmlvm_iphone_UIView_setTag___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 58
JAVA_OBJECT org_xmlvm_iphone_UIView_convertPointToView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 59
JAVA_OBJECT org_xmlvm_iphone_UIView_convertPointFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 60
JAVA_OBJECT org_xmlvm_iphone_UIView_convertRectToView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 61
JAVA_OBJECT org_xmlvm_iphone_UIView_convertRectFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 62
JAVA_OBJECT org_xmlvm_iphone_UIView_getLayer__(JAVA_OBJECT me);
// Vtable index: 63
JAVA_INT org_xmlvm_iphone_UIView_getAutoresizingMask__(JAVA_OBJECT me);
// Vtable index: 64
void org_xmlvm_iphone_UIView_setAutoresizingMask___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 65
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isAutoresizesSubviews__(JAVA_OBJECT me);
// Vtable index: 66
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
// Vtable index: 67
JAVA_OBJECT org_xmlvm_iphone_UIView_sizeThatFits___org_xmlvm_iphone_CGSize(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 68
void org_xmlvm_iphone_UIView_sizeToFit__(JAVA_OBJECT me);
// Vtable index: 69
void org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);

#endif
