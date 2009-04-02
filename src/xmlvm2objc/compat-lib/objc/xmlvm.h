
#import <Foundation/Foundation.h>

#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIApplication.h>
#import <UIKit/UIWindow.h>
#import <UIKit/UIView.h>
#import <UIKit/UIViewController.h>
#import <UIKit/UITableView.h>
#import <UIKit/UITableViewCell.h>
#import <UIKit/UIImage.h>
#import <UIKit/UIImageView.h>
#import <UIKit/UiScreen.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UILabel.h>
#import <UIKit/UITextField.h>
#import <UIKit/UISwitch.h>
#import <math.h>



typedef union {
    id      o;
    int     i;
    float   f;
    double  d;
    long    l;
} XMLVMElem;


// java.lang.null
//----------------------------------------------------------------------------
@interface java_lang_null : NSObject

+ (void) initialize;
+ (NSObject*) _GET_NULL;

@end