#include "org_xmlvm_iphone_UIViewAnimationDelegate.h"
#include "org_xmlvm_iphone_CGPoint.h"
#include "org_xmlvm_iphone_CGAffineTransform.h"
#include "java_util_List.h"
#include "org_xmlvm_iphone_CGSize.h"
#include "org_xmlvm_iphone_CGRect.h"
#include "org_xmlvm_iphone_UIColor.h"
#include "org_xmlvm_iphone_UIWindow.h"
#include "org_xmlvm_iphone_CALayer.h"
#include "org_xmlvm_iphone_NSDate.h"
#include "java_util_Set.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_UIView.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIView __CLASS_org_xmlvm_iphone_UIView = {
    0, // classInitialized
    "org.xmlvm.iphone.UIView", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_UIResponder, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
#import <UIKit/UIView.h>
#import <UIKit/UIViewController.h>

@interface UIViewWrapper : UIView 
{
	org_xmlvm_iphone_UIView *view;
}
- (void) drawRect:(CGRect)rect;
- (void) setOcView: (org_xmlvm_iphone_UIView *)view;
@end

@implementation UIViewWrapper : UIView

- (void) setOcView: (org_xmlvm_iphone_UIView *)viewIn;
{
	self->view = viewIn;
}

- (void) drawRect:(CGRect)rect
{
	org_xmlvm_iphone_CGRect *passRect = __NEW_org_xmlvm_iphone_CGRect();
	org_xmlvm_iphone_CGRect___INIT____float_float_float_float(passRect, rect.origin.x, rect.origin.y , rect.size.width, rect.size.height);
	
	Func_VOO drawRect = 
	self->view->__class->vtable[XMLVM_VTABLE_IDX_org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect];
    drawRect(self->view, passRect);
}

@end

//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIView()
{
    __CLASS_org_xmlvm_iphone_UIView.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_UIResponder.classInitialized) __INIT_org_xmlvm_iphone_UIResponder();
    __CLASS_org_xmlvm_iphone_UIView.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIView;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIView.vtable, __CLASS_org_xmlvm_iphone_UIResponder.vtable, sizeof(__CLASS_org_xmlvm_iphone_UIResponder.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIView.vtable[21] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setFrame___org_xmlvm_iphone_CGRect;
    __CLASS_org_xmlvm_iphone_UIView.vtable[22] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_getFrame__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[23] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_getCenter__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[24] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setCenter___org_xmlvm_iphone_CGPoint;
    __CLASS_org_xmlvm_iphone_UIView.vtable[25] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setLocation___float_float;
    __CLASS_org_xmlvm_iphone_UIView.vtable[26] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setSize___float_float;
    __CLASS_org_xmlvm_iphone_UIView.vtable[27] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_addSubview___org_xmlvm_iphone_UIView;
    __CLASS_org_xmlvm_iphone_UIView.vtable[28] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_sendSubviewToBack___org_xmlvm_iphone_UIView;
    __CLASS_org_xmlvm_iphone_UIView.vtable[29] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_insertSubview___org_xmlvm_iphone_UIView_int;
    __CLASS_org_xmlvm_iphone_UIView.vtable[30] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_bringSubviewToFront___org_xmlvm_iphone_UIView;
    __CLASS_org_xmlvm_iphone_UIView.vtable[31] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_removeFromSuperview__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[32] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_getSubviews__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[33] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_getSuperview__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[34] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_getWindow__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[35] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_layoutSubviews__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[36] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_getBounds__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[37] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setBounds___org_xmlvm_iphone_CGRect;
    __CLASS_org_xmlvm_iphone_UIView.vtable[38] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setNeedsDisplay__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[39] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setOpaque___boolean;
    __CLASS_org_xmlvm_iphone_UIView.vtable[40] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_isOpaque__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[41] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setClearsContextBeforeDrawing___boolean;
    __CLASS_org_xmlvm_iphone_UIView.vtable[42] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_keyTyped___char;
    __CLASS_org_xmlvm_iphone_UIView.vtable[43] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_getBackgroundColor__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[44] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setBackgroundColor___org_xmlvm_iphone_UIColor;
    __CLASS_org_xmlvm_iphone_UIView.vtable[45] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_getAlpha__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[46] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setAlpha___float;
    __CLASS_org_xmlvm_iphone_UIView.vtable[47] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_touchedInsideView___java_util_Set;
    __CLASS_org_xmlvm_iphone_UIView.vtable[48] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_isHidden__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[49] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setHidden___boolean;
    __CLASS_org_xmlvm_iphone_UIView.vtable[50] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setContentMode___int;
    __CLASS_org_xmlvm_iphone_UIView.vtable[51] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_getContentMode__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[52] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_isUserInteractionEnabled__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[53] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setUserInteractionEnabled___boolean;
    __CLASS_org_xmlvm_iphone_UIView.vtable[54] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_getTransform__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[55] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setTransform___org_xmlvm_iphone_CGAffineTransform;
    __CLASS_org_xmlvm_iphone_UIView.vtable[56] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_clipsToBounds__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[57] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setClipsToBounds___boolean;
    __CLASS_org_xmlvm_iphone_UIView.vtable[58] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_getTag__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[59] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setTag___int;
    __CLASS_org_xmlvm_iphone_UIView.vtable[60] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_convertPointToView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView;
    __CLASS_org_xmlvm_iphone_UIView.vtable[61] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_convertPointFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView;
    __CLASS_org_xmlvm_iphone_UIView.vtable[62] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_convertRectToView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView;
    __CLASS_org_xmlvm_iphone_UIView.vtable[63] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_convertRectFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView;
    __CLASS_org_xmlvm_iphone_UIView.vtable[64] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_getLayer__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[65] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_getAutoresizingMask__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[66] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setAutoresizingMask___int;
    __CLASS_org_xmlvm_iphone_UIView.vtable[67] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_isAutoresizesSubviews__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[68] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_setAutoresizesSubviews___boolean;
    __CLASS_org_xmlvm_iphone_UIView.vtable[69] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_sizeThatFits___org_xmlvm_iphone_CGSize;
    __CLASS_org_xmlvm_iphone_UIView.vtable[70] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_sizeToFit__;
    __CLASS_org_xmlvm_iphone_UIView.vtable[71] = (VTABLE_PTR) &org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIView.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIView.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIView]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIView(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIView]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIView()
{
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    org_xmlvm_iphone_UIView* me = (org_xmlvm_iphone_UIView*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIView));
    me->__class = &__CLASS_org_xmlvm_iphone_UIView;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIView]
    // Tell the GC to finalize us
    XMLVM_FINALIZE(me, __DELETE_org_xmlvm_iphone_UIView);
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIView()
{
    JAVA_OBJECT me = JAVA_NULL;
    me = __NEW_org_xmlvm_iphone_UIView();
    org_xmlvm_iphone_UIView___INIT___(me);
    return me;
}

void org_xmlvm_iphone_UIView___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView___INIT____org_xmlvm_iphone_CGRect]
	org_xmlvm_iphone_UIView *thiz = me;
	UIViewWrapper *toRet = [[UIViewWrapper alloc] initWithFrame: toCGRect(n1)];
	thiz->org_xmlvm_iphone_UIView.ocView = toRet;\
	[toRet setOcView: (org_xmlvm_iphone_UIView*) me];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView___INIT___(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView___INIT___]
	org_xmlvm_iphone_UIView *thiz = me;
	UIViewWrapper *toRet = [[UIViewWrapper alloc] init];
	thiz->org_xmlvm_iphone_UIView.ocView = toRet;
	[toRet setOcView: (org_xmlvm_iphone_UIView*)me];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setFrame___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setFrame___org_xmlvm_iphone_CGRect]
	org_xmlvm_iphone_UIView *view = me;
	UIView *realView = view->org_xmlvm_iphone_UIView.ocView;
	[realView setFrame: toCGRect(n1)];
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIView_getFrame__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_getFrame__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIView_getCenter__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_getCenter__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setCenter___org_xmlvm_iphone_CGPoint(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setCenter___org_xmlvm_iphone_CGPoint]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setLocation___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setLocation___float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setSize___float_float(JAVA_OBJECT me, JAVA_FLOAT n1, JAVA_FLOAT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setSize___float_float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_addSubview___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_addSubview___org_xmlvm_iphone_UIView]
	
	
	org_xmlvm_iphone_UIView *view = me;
	UIView *realViewParent = view->org_xmlvm_iphone_UIView.ocView;
	
	org_xmlvm_iphone_UIView *otherView = n1;
	UIView *realViewChild = otherView->org_xmlvm_iphone_UIView.ocView;
	
	[realViewParent addSubview: realViewChild];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_sendSubviewToBack___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_sendSubviewToBack___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_insertSubview___org_xmlvm_iphone_UIView_int(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_insertSubview___org_xmlvm_iphone_UIView_int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_bringSubviewToFront___org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_bringSubviewToFront___org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_removeFromSuperview__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_removeFromSuperview__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIView_getSubviews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_getSubviews__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIView_getSuperview__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_getSuperview__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIView_getWindow__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_getWindow__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_layoutSubviews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_layoutSubviews__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIView_getBounds__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_getBounds__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setBounds___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setBounds___org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setNeedsDisplay__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setNeedsDisplay__]
	org_xmlvm_iphone_UIView *view = me;
	UIView *realView = view->org_xmlvm_iphone_UIView.ocView;
	[realView setNeedsDisplay];
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setOpaque___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setOpaque___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIView_isOpaque__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_isOpaque__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setClearsContextBeforeDrawing___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setClearsContextBeforeDrawing___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_keyTyped___char(JAVA_OBJECT me, JAVA_CHAR n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_keyTyped___char]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIView_getBackgroundColor__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_getBackgroundColor__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setBackgroundColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setBackgroundColor___org_xmlvm_iphone_UIColor]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_FLOAT org_xmlvm_iphone_UIView_getAlpha__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_getAlpha__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setAlpha___float(JAVA_OBJECT me, JAVA_FLOAT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setAlpha___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIView_touchedInsideView___java_util_Set(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_touchedInsideView___java_util_Set]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIView_isHidden__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_isHidden__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setHidden___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setHidden___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setContentMode___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setContentMode___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIView_getContentMode__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_getContentMode__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIView_isUserInteractionEnabled__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_isUserInteractionEnabled__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setUserInteractionEnabled___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setUserInteractionEnabled___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIView_getTransform__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_getTransform__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setTransform___org_xmlvm_iphone_CGAffineTransform(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setTransform___org_xmlvm_iphone_CGAffineTransform]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIView_clipsToBounds__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_clipsToBounds__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setClipsToBounds___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setClipsToBounds___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIView_getTag__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_getTag__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setTag___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setTag___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIView_convertPointToView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_convertPointToView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIView_convertPointFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_convertPointFromView___org_xmlvm_iphone_CGPoint_org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIView_convertRectToView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_convertRectToView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIView_convertRectFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_convertRectFromView___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_UIView]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIView_getLayer__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_getLayer__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_INT org_xmlvm_iphone_UIView_getAutoresizingMask__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_getAutoresizingMask__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setAutoresizingMask___int(JAVA_OBJECT me, JAVA_INT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setAutoresizingMask___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIView_isAutoresizesSubviews__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_isAutoresizesSubviews__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setAutoresizesSubviews___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setAutoresizesSubviews___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_beginAnimations___java_lang_String(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_beginAnimations___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_commitAnimations__()
{
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_commitAnimations__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setAnimationStartDate___org_xmlvm_iphone_NSDate(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setAnimationStartDate___org_xmlvm_iphone_NSDate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setAnimationsEnabled___boolean(JAVA_BOOLEAN n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setAnimationsEnabled___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setAnimationDuration___double(JAVA_DOUBLE n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setAnimationDuration___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setAnimationDelay___double(JAVA_DOUBLE n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setAnimationDelay___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setAnimationCurve___int(JAVA_INT n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setAnimationCurve___int]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setAnimationRepeatCount___float(JAVA_FLOAT n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setAnimationRepeatCount___float]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setAnimationRepeatAutoreverses___boolean(JAVA_BOOLEAN n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setAnimationRepeatAutoreverses___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setAnimationBeginsFromCurrentState___boolean(JAVA_BOOLEAN n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setAnimationBeginsFromCurrentState___boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setAnimationTransitionForView___int_org_xmlvm_iphone_UIView_boolean(JAVA_INT n1, JAVA_OBJECT n2, JAVA_BOOLEAN n3)
{
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setAnimationTransitionForView___int_org_xmlvm_iphone_UIView_boolean]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_UIView_areAnimationsEnabled__()
{
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_areAnimationsEnabled__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_setAnimationDelegate___org_xmlvm_iphone_UIViewAnimationDelegate(JAVA_OBJECT n1)
{
    if (!__CLASS_org_xmlvm_iphone_UIView.classInitialized) __INIT_org_xmlvm_iphone_UIView();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_setAnimationDelegate___org_xmlvm_iphone_UIViewAnimationDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT org_xmlvm_iphone_UIView_sizeThatFits___org_xmlvm_iphone_CGSize(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_sizeThatFits___org_xmlvm_iphone_CGSize]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_sizeToFit__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_sizeToFit__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIView_drawRect___org_xmlvm_iphone_CGRect]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

