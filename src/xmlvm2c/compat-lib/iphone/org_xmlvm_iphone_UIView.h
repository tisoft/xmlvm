#ifndef __ORG_XMLVM_IPHONE_UIVIEW__
#define __ORG_XMLVM_IPHONE_UIVIEW__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIResponder.h"

// Circular references:
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
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewController
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIViewController
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIViewController)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIView)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIWindow
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIWindow
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIWindow)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CALayer
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CALayer
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CALayer)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_NSDate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_NSDate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_internal_renderer_UIViewRenderer
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_internal_renderer_UIViewRenderer
XMLVM_FORWARD_DECL(org_xmlvm_iphone_internal_renderer_UIViewRenderer)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_Set
#define XMLVM_FORWARD_DECL_java_util_Set
XMLVM_FORWARD_DECL(java_util_Set)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.UIView
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UIView, 75)

//XMLVM_BEGIN_MEMBERS
#define __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView void *ocView;
//XMLVM_END_MEMBERS

#define __INSTANCE_MEMBERS_org_xmlvm_iphone_UIView \
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIResponder; \
    struct { \
        JAVA_OBJECT controller_; \
        __ADDITIONAL_INSTANCE_MEMBERS_org_xmlvm_iphone_UIView \
    } org_xmlvm_iphone_UIView

struct org_xmlvm_iphone_UIView {
    __CLASS_DEFINITION_org_xmlvm_iphone_UIView* __class;
    __INSTANCE_MEMBERS_org_xmlvm_iphone_UIView;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIView
typedef struct org_xmlvm_iphone_UIView org_xmlvm_iphone_UIView;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UIView 75
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setFrame___org_xmlvm_iphone_CGRect 20
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getFrame__ 21
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setLocation___float_float 22
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setSize___float_float 23
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_addSubview___org_xmlvm_iphone_UIView 24
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_sendSubviewToBack___org_xmlvm_iphone_UIView 25
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_insertSubview___org_xmlvm_iphone_UIView_int 26
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_bringSubviewToFront___org_xmlvm_iphone_UIView 27
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_removeFromSuperview__ 28
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getSubviews__ 29
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getSuperview__ 30
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getWindow__ 31
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_layoutSubviews__ 32
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getBounds__ 33
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setBounds___org_xmlvm_iphone_CGRect 34
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setNeedsDisplay__ 35
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setOpaque___boolean 36
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_isOpaque__ 37
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setClearsContextBeforeDrawing___boolean 38
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_keyTyped___char 39
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getBackgroundColor__ 40
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setBackgroundColor___org_xmlvm_iphone_UIColor 41
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getAlpha__ 42
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setAlpha___float 43
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_touchedInsideView___java_util_Set 44
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_isHidden__ 45
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setHidden___boolean 46
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setContentMode___int 47
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getContentMode__ 48
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_isUserInteractionEnabled__ 49
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setUserInteractionEnabled___boolean 50
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getTransform__ 51
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setTransform___org_xmlvm_iphone_CGAffineTransform 52
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_clipsToBounds__ 53
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setClipsToBounds___boolean 54
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getTag__ 55
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setTag___int 56
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_convertPointToView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView 57
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_convertPointFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView 58
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_convertRectToView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView 59
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_convertRectFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView 60
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getLayer__ 61
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_getAutoresizingMask__ 62
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setAutoresizingMask___int 63
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_isAutoresizesSubviews__ 64
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_setAutoresizesSubviews___boolean 65
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_sizeThatFits___org_xmlvm_iphone_CGSize 66
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_sizeToFit__ 67
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_xmlvmDrawRect___org_xmlvm_iphone_CGRect 68
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect 69
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_xmlvmGetRenderer__ 70
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_xmlvmSetRenderer___org_xmlvm_iphone_internal_renderer_UIViewRenderer 71
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_xmlvmSetOffsets___int_int 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_xmlvmGetOffsetLeft__ 73
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_xmlvmGetOffsetTop__ 74

void __INIT_org_xmlvm_iphone_UIView();
JAVA_OBJECT __NEW_org_xmlvm_iphone_UIView();
void org_xmlvm_iphone_UIView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
void org_xmlvm_iphone_UIView___INIT___(JAVA_OBJECT me);
// Vtable index: 20
void org_xmlvm_iphone_UIView_setFrame___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 21
JAVA_OBJECT org_xmlvm_iphone_UIView_getFrame__(JAVA_OBJECT me);
// Vtable index: 22
void org_xmlvm_iphone_UIView_setLocation___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 23
void org_xmlvm_iphone_UIView_setSize___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2);
// Vtable index: 24
void org_xmlvm_iphone_UIView_addSubview___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 25
void org_xmlvm_iphone_UIView_sendSubviewToBack___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 26
void org_xmlvm_iphone_UIView_insertSubview___org_xmlvm_iphone_UIView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2);
// Vtable index: 27
void org_xmlvm_iphone_UIView_bringSubviewToFront___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 28
void org_xmlvm_iphone_UIView_removeFromSuperview__(JAVA_OBJECT me);
// Vtable index: 29
JAVA_OBJECT org_xmlvm_iphone_UIView_getSubviews__(JAVA_OBJECT me);
// Vtable index: 30
JAVA_OBJECT org_xmlvm_iphone_UIView_getSuperview__(JAVA_OBJECT me);
// Vtable index: 31
JAVA_OBJECT org_xmlvm_iphone_UIView_getWindow__(JAVA_OBJECT me);
// Vtable index: 32
void org_xmlvm_iphone_UIView_layoutSubviews__(JAVA_OBJECT me);
// Vtable index: 33
JAVA_OBJECT org_xmlvm_iphone_UIView_getBounds__(JAVA_OBJECT me);
// Vtable index: 34
void org_xmlvm_iphone_UIView_setBounds___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 35
void org_xmlvm_iphone_UIView_setNeedsDisplay__(JAVA_OBJECT me);
// Vtable index: 36
void org_xmlvm_iphone_UIView_setOpaque___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 37
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isOpaque__(JAVA_OBJECT me);
// Vtable index: 38
void org_xmlvm_iphone_UIView_setClearsContextBeforeDrawing___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 39
void org_xmlvm_iphone_UIView_keyTyped___char(JAVA_OBJECT me, JAVA_CHAR n1);
// Vtable index: 40
JAVA_OBJECT org_xmlvm_iphone_UIView_getBackgroundColor__(JAVA_OBJECT me);
// Vtable index: 41
void org_xmlvm_iphone_UIView_setBackgroundColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 42
JAVA_FLOAT org_xmlvm_iphone_UIView_getAlpha__(JAVA_OBJECT me);
// Vtable index: 43
void org_xmlvm_iphone_UIView_setAlpha___float(JAVA_OBJECT me, JAVA_FLOAT n1);
// Vtable index: 44
JAVA_BOOLEAN org_xmlvm_iphone_UIView_touchedInsideView___java_util_Set(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 45
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isHidden__(JAVA_OBJECT me);
// Vtable index: 46
void org_xmlvm_iphone_UIView_setHidden___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 47
void org_xmlvm_iphone_UIView_setContentMode___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 48
JAVA_INT org_xmlvm_iphone_UIView_getContentMode__(JAVA_OBJECT me);
// Vtable index: 49
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isUserInteractionEnabled__(JAVA_OBJECT me);
// Vtable index: 50
void org_xmlvm_iphone_UIView_setUserInteractionEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 51
JAVA_OBJECT org_xmlvm_iphone_UIView_getTransform__(JAVA_OBJECT me);
// Vtable index: 52
void org_xmlvm_iphone_UIView_setTransform___org_xmlvm_iphone_CGAffineTransform(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 53
JAVA_BOOLEAN org_xmlvm_iphone_UIView_clipsToBounds__(JAVA_OBJECT me);
// Vtable index: 54
void org_xmlvm_iphone_UIView_setClipsToBounds___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 55
JAVA_INT org_xmlvm_iphone_UIView_getTag__(JAVA_OBJECT me);
// Vtable index: 56
void org_xmlvm_iphone_UIView_setTag___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 57
JAVA_OBJECT org_xmlvm_iphone_UIView_convertPointToView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 58
JAVA_OBJECT org_xmlvm_iphone_UIView_convertPointFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 59
JAVA_OBJECT org_xmlvm_iphone_UIView_convertRectToView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 60
JAVA_OBJECT org_xmlvm_iphone_UIView_convertRectFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2);
// Vtable index: 61
JAVA_OBJECT org_xmlvm_iphone_UIView_getLayer__(JAVA_OBJECT me);
// Vtable index: 62
JAVA_INT org_xmlvm_iphone_UIView_getAutoresizingMask__(JAVA_OBJECT me);
// Vtable index: 63
void org_xmlvm_iphone_UIView_setAutoresizingMask___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 64
JAVA_BOOLEAN org_xmlvm_iphone_UIView_isAutoresizesSubviews__(JAVA_OBJECT me);
// Vtable index: 65
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
// Vtable index: 66
JAVA_OBJECT org_xmlvm_iphone_UIView_sizeThatFits___org_xmlvm_iphone_CGSize(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 67
void org_xmlvm_iphone_UIView_sizeToFit__(JAVA_OBJECT me);
// Vtable index: 68
void org_xmlvm_iphone_UIView_xmlvmDrawRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 69
void org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 70
JAVA_OBJECT org_xmlvm_iphone_UIView_xmlvmGetRenderer__(JAVA_OBJECT me);
// Vtable index: 71
void org_xmlvm_iphone_UIView_xmlvmSetRenderer___org_xmlvm_iphone_internal_renderer_UIViewRenderer(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 72
void org_xmlvm_iphone_UIView_xmlvmSetOffsets___int_int(JAVA_OBJECT me, JAVA_INT n1, JAVA_INT n2);
// Vtable index: 73
JAVA_INT org_xmlvm_iphone_UIView_xmlvmGetOffsetLeft__(JAVA_OBJECT me);
// Vtable index: 74
JAVA_INT org_xmlvm_iphone_UIView_xmlvmGetOffsetTop__(JAVA_OBJECT me);

#endif
