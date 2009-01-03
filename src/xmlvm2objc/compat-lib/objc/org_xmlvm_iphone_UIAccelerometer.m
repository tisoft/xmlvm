#import "org_xmlvm_iphone_UIAccelerometer.h"




// UIApplication
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UIAccelerometer;

- (void) __init_org_xmlvm_iphone_UIAccelerometer
{
   
}

// UIAccelerometerDelegate method, called when the device accelerates.
- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
 {
	
	 [app OnAccelerate___float_float_float :(float)acceleration.x :(float)acceleration.y :(float)acceleration.z];
}


- (void) setUpdateInterval___double: (double)interval
{
    [[UIAccelerometer sharedAccelerometer] setUpdateInterval:interval];

}

- (void) setDelegate___org_xmlvm_iphone_IAccelerated :(org_xmlvm_iphone_UIApplication*)accelApp; 
{ 
 app = accelApp;
 [[UIAccelerometer sharedAccelerometer] setDelegate:self];

}

@end