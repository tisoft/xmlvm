#include "org_xmlvm_iphone_UIAccelerometerDelegate.h"

#include "org_xmlvm_iphone_UIAccelerometer.h"

__CLASS_DEFINITION_org_xmlvm_iphone_UIAccelerometer __CLASS_org_xmlvm_iphone_UIAccelerometer = {
    0, // classInitialized
    "org.xmlvm.iphone.UIAccelerometer", // className
    (__CLASS_DEFINITION_TEMPLATE*) &__CLASS_org_xmlvm_iphone_NSObject, // extends
};

//XMLVM_BEGIN_IMPLEMENTATION
/*
#import <UIKit/UIAccelerometer.h>

bridge_UIAccelerometer bridge_UIAccelerometer_sharedAccelerometer__()
{
	return (bridge_UIAccelerometer) [UIAccelerometer sharedAccelerometer];
}
void bridge_UIAccelerometer_setUpdateInterval(bridge_UIAccelerometer accel, double value)
{
	UIAccelerometer *a = (UIAccelerometer*)accel;
	[a setUpdateInterval: value];
}


@interface WrapAccel: NSObject <UIAccelerometerDelegate>
{
	bridge_UIAccelerometerDelegateEventSink target;
	void *obj;
	bridge_UIAccelerometer accel;
}

- (id) initWithDelegate: (void *) obj: (bridge_UIAccelerometerDelegateEventSink) target: (bridge_UIAccelerometer) accel;
@end

@implementation WrapAccel

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration;
{
	target(obj, 0);
}

- (id) initWithDelegate: (void *) objIn: (bridge_UIAccelerometerDelegateEventSink) targetIn: (bridge_UIAccelerometer) accelIn
{
	self->obj = objIn;
	self->target = targetIn;
	self->accel = accelIn;
	
	UIAccelerometer *a = (UIAccelerometer*)accel;
	
	[a setDelegate: self];
	return self;
}

@end


//TODO: go where?
bridge_UIAccelerometerDelegateEventSink toCall)
{
	WrapAccel *toRet = [[WrapAccel alloc] initWithDelegate: targetObject : toCall: accel];
	return (bridge_UIAccelerometerDelegate) toRet;
	
}
*/
//XMLVM_END_IMPLEMENTATION


void __INIT_org_xmlvm_iphone_UIAccelerometer()
{
    __CLASS_org_xmlvm_iphone_UIAccelerometer.classInitialized = 1;
    // Initialize base class if necessary
    if (!__CLASS_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __CLASS_org_xmlvm_iphone_UIAccelerometer.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_UIAccelerometer;
    // Copy vtable from base class
    XMLVM_MEMCPY(__CLASS_org_xmlvm_iphone_UIAccelerometer.vtable, __CLASS_org_xmlvm_iphone_NSObject.vtable, sizeof(__CLASS_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    __CLASS_org_xmlvm_iphone_UIAccelerometer.vtable[14] = (VTABLE_PTR) &org_xmlvm_iphone_UIAccelerometer_setUpdateInterval___double;
    __CLASS_org_xmlvm_iphone_UIAccelerometer.vtable[15] = (VTABLE_PTR) &org_xmlvm_iphone_UIAccelerometer_setDelegate___org_xmlvm_iphone_UIAccelerometerDelegate;
    // Initialize vtable for implementing interfaces
    __CLASS_org_xmlvm_iphone_UIAccelerometer.numImplementedInterfaces = 0;
    __CLASS_org_xmlvm_iphone_UIAccelerometer.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * 0);

    org_xmlvm_iphone_UIAccelerometer___CLINIT_();
    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_UIAccelerometer]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_UIAccelerometer(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_UIAccelerometer]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_UIAccelerometer()
{
    if (!__CLASS_org_xmlvm_iphone_UIAccelerometer.classInitialized) __INIT_org_xmlvm_iphone_UIAccelerometer();
    org_xmlvm_iphone_UIAccelerometer* me = (org_xmlvm_iphone_UIAccelerometer*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_UIAccelerometer));
    me->__class = &__CLASS_org_xmlvm_iphone_UIAccelerometer;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_UIAccelerometer]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UIAccelerometer()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

JAVA_OBJECT org_xmlvm_iphone_UIAccelerometer_sharedAccelerometer__()
{
    if (!__CLASS_org_xmlvm_iphone_UIAccelerometer.classInitialized) __INIT_org_xmlvm_iphone_UIAccelerometer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAccelerometer_sharedAccelerometer__]
	//TODO: real impl
	return __NEW_org_xmlvm_iphone_UIAccelerometer();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAccelerometer_setUpdateInterval___double(JAVA_OBJECT me, JAVA_DOUBLE n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAccelerometer_setUpdateInterval___double]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAccelerometer_setDelegate___org_xmlvm_iphone_UIAccelerometerDelegate(JAVA_OBJECT me, JAVA_OBJECT n1)
{
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAccelerometer_setDelegate___org_xmlvm_iphone_UIAccelerometerDelegate]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_UIAccelerometer___CLINIT_()
{
    if (!__CLASS_org_xmlvm_iphone_UIAccelerometer.classInitialized) __INIT_org_xmlvm_iphone_UIAccelerometer();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_UIAccelerometer___CLINIT___]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

