#import "xmlvm.h"
#import "org_xmlvm_iphone_UIAccelerometerDelegate.h"
#import "org_xmlvm_iphone_UIAcceleration.h"


@interface UIAccelerometerDelegateWrapper : NSObject <UIAccelerometerDelegate> {

id<org_xmlvm_iphone_UIAccelerometerDelegate> delegate;

}

- (id) initWithDelegate: (id<org_xmlvm_iphone_UIAccelerometerDelegate>) del;
- (void) dealloc;
- (void) accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration;

@end


typedef UIAccelerometer org_xmlvm_iphone_UIAccelerometer;
@interface UIAccelerometer (cat_org_xmlvm_iphone_UIAccelerometer)

+ (UIAccelerometer*) getSharedAccelerometer;
- (void) setUpdateInterval___double: (double)interval;
- (void) setDelegate___org_xmlvm_iphone_UIAccelerometerDelegate :(id<org_xmlvm_iphone_UIAccelerometerDelegate>) delegate; 

@end