
#include "org_xmlvm_iphone_NSTimer.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSTimer __TIB_org_xmlvm_iphone_NSTimer = {
    0, // classInitialized
    "org.xmlvm.iphone.NSTimer", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
#import <CoreFoundation/CoreFoundation.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "org_xmlvm_iphone_NSTimerDelegate.h"


@interface WrapTimer: NSObject <UIAccelerometerDelegate>
{
	org_xmlvm_iphone_NSTimerDelegate *target;
	void *obj;
}

- (id) initWithDelegate: (void *) obj: (org_xmlvm_iphone_NSTimerDelegate *) target: (float) interval: (bool) repeat;
@end

@implementation WrapTimer

- (void)timeFire: (NSTimer*) param
{
	Func_VOO toCall = XMLVM_LOOKUP_INTERFACE_METHOD(self->target, "org.xmlvm.iphone.NSTimerDelegate", XMLVM_VTABLE_IDX_org_xmlvm_iphone_NSTimerDelegate_timerEvent___java_lang_Object);
	toCall(self->target, self->obj);
}

- (id) initWithDelegate: (void *) objIn: (org_xmlvm_iphone_NSTimerDelegate *) targetIn: (float) interval: (bool) repeat
{
	self->obj = objIn;
	self->target = targetIn;
	
	[NSTimer scheduledTimerWithTimeInterval:interval target:self selector: @selector(timeFire:) userInfo:NULL repeats:repeat];	
	return self;
}

@end


//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_NSTimer()
{
    __TIB_org_xmlvm_iphone_NSTimer.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSTimer.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSTimer;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSTimer.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __TIB_org_xmlvm_iphone_NSTimer.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_NSTimer_invalidate__;
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSTimer.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSTimer.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);


    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSTimer]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSTimer(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSTimer]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSTimer()
{
    if (!__TIB_org_xmlvm_iphone_NSTimer.classInitialized) __INIT_org_xmlvm_iphone_NSTimer();
    org_xmlvm_iphone_NSTimer* me = (org_xmlvm_iphone_NSTimer*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSTimer));
    me->tib = &__TIB_org_xmlvm_iphone_NSTimer;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSTimer]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSTimer()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_NSTimer_scheduledTimerWithTimeInterval___float_org_xmlvm_iphone_NSTimerDelegate_java_lang_Object_boolean(JAVA_FLOAT n1, JAVA_OBJECT n2, JAVA_OBJECT n3, JAVA_BOOLEAN n4)
{
    if (!__TIB_org_xmlvm_iphone_NSTimer.classInitialized) __INIT_org_xmlvm_iphone_NSTimer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSTimer_scheduledTimerWithTimeInterval___float_org_xmlvm_iphone_NSTimerDelegate_java_lang_Object_boolean]
	org_xmlvm_iphone_NSTimer* tim = __NEW_org_xmlvm_iphone_NSTimer();
	// n1 = timerInterval
	// n2 = NSTimerDelegate target
	// n3 = userInfo
	// n4 = repeats 
	tim->fields.org_xmlvm_iphone_NSTimer.ocTimer = [[WrapTimer alloc] initWithDelegate: n3: n2: n1 : n4];
	return tim;
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSTimer_invalidate__(JAVA_OBJECT me)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSTimer_invalidate__]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_LONG org_xmlvm_iphone_NSTimer_access$000___org_xmlvm_iphone_NSTimer(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSTimer.classInitialized) __INIT_org_xmlvm_iphone_NSTimer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSTimer_access$000___org_xmlvm_iphone_NSTimer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSTimer_access$100___org_xmlvm_iphone_NSTimer(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSTimer.classInitialized) __INIT_org_xmlvm_iphone_NSTimer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSTimer_access$100___org_xmlvm_iphone_NSTimer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

JAVA_BOOLEAN org_xmlvm_iphone_NSTimer_access$200___org_xmlvm_iphone_NSTimer(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSTimer.classInitialized) __INIT_org_xmlvm_iphone_NSTimer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSTimer_access$200___org_xmlvm_iphone_NSTimer]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

