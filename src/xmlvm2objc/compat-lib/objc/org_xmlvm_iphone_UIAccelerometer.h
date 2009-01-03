#import "xmlvm.h"
#import "org_xmlvm_iphone_UIApplication.h"

@interface org_xmlvm_iphone_UIAccelerometer : UIAccelerometer 
- (void) __init_org_xmlvm_iphone_UIAccelerometer;
- (void) setUpdateInterval___double: (double)interval;
- (void) setDelegate___org_xmlvm_iphone_IAccelerated :(org_xmlvm_iphone_UIApplication*)accelApp; 
- (void) accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration;


 org_xmlvm_iphone_UIApplication* app;

@end