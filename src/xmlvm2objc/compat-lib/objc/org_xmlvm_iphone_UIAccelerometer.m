#import "org_xmlvm_iphone_UIAccelerometer.h"


@implementation UIAccelerometerDelegateWrapper;

- (id) initWithDelegate: (id<org_xmlvm_iphone_UIAccelerometerDelegate>) del
{
	[super init];
	delegate = del;
	return self;
}

- (void) dealloc
{
	[delegate release];
	[super dealloc];
}

- (void) accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
	[delegate accelerometerDidAccelerate___org_xmlvm_iphone_UIAccelerometer_org_xmlvm_iphone_UIAcceleration
	    : accelerometer
	    : acceleration];
}

@end



// UIAccelerometer
//----------------------------------------------------------------------------
@implementation UIAccelerometer (cat_org_xmlvm_iphone_UIAccelerometer)

+ (UIAccelerometer*) getSharedAccelerometer
{
	return [UIAccelerometer sharedAccelerometer];
}

- (void) setUpdateInterval___double: (double)interval
{
    [self setUpdateInterval:interval];
}

- (void) setDelegate___org_xmlvm_iphone_UIAccelerometerDelegate :(id<org_xmlvm_iphone_UIAccelerometerDelegate>) delegate
{
	UIAccelerometerDelegateWrapper* wrapper = [[UIAccelerometerDelegateWrapper alloc] initWithDelegate: delegate];
	[self setDelegate: wrapper];
}

@end