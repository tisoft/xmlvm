
#import <Foundation/Foundation.h>
#ifndef CONSOLE_APP
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIApplication.h>
#import <UIKit/UIWindow.h>
#import <UIKit/UIView-Hierarchy.h>
#import <UIKit/UIHardware.h>
#import <UIKit/UISimpleTableCell.h>
#import <UIKit/UIImageAndTextTableCell.h>
#import <UIKit/UITableColumn.h>
#import <UIKit/UIPreferencesTable.h>
#import <UIKit/UIPreferencesTextTableCell.h>
#import <UIKit/UISwitchControl.h>
#import <GraphicsServices/GraphicsServices.h>
#import <math.h>
#endif

typedef union {
    id     o;
    int    i;
    float  f;
    double d;
} XMLVMElem;


// java.lang.Object
//----------------------------------------------------------------------------
typedef NSObject java_lang_Object;
@interface NSObject (cat_java_lang_Object) //java_lang_Object : NSObject
- (void) __init_java_lang_Object;
@end


// java.lang.Class
//----------------------------------------------------------------------------
@interface java_lang_Class : java_lang_Object
- (void) __init_java_lang_Class;
@end


// java.io.PrintStream
//----------------------------------------------------------------------------
@interface java_io_PrintStream : java_lang_Object 

- (void) println___int: (int) i;
- (void) println___float: (float) f;
- (void) println___double: (double) d;
- (void) println___java_lang_String: (NSString*) s;

@end


// java.lang.String
//----------------------------------------------------------------------------
typedef NSMutableString java_lang_String;
typedef NSMutableString java_lang_StringBuilder;
@interface NSMutableString (cat_java_lang_String) //java_lang_String : java_lang_Object 

- (void) __init_java_lang_String___java_lang_String: (java_lang_String*) str;
- (void) __init_java_lang_StringBuilder___java_lang_String: (java_lang_String*) str;
+ (NSMutableString*) valueOf___int: (int) i;
+ (NSMutableString*) valueOf___float: (float) f;
+ (NSMutableString*) valueOf___java_lang_Object: (java_lang_Object*) o;
- (NSMutableString*) append___java_lang_String: (java_lang_String*) str;
- (NSMutableString*) toString;
@end


// java.lang.System
//----------------------------------------------------------------------------
java_io_PrintStream* _STATIC_java_lang_System_out;

@interface java_lang_System : java_lang_Object

+ (void) initialize;
+ (java_io_PrintStream*) _GET_STATIC_java_lang_System_out;
+ (void) _PUT_STATIC_java_lang_System_out: (java_io_PrintStream*) v;

@end


// java.lang.Math
//----------------------------------------------------------------------------
@interface java_lang_Math : java_lang_Object

+ (double) random;
+ (double) sqrt___double: (double) x;
+ (double) asin___double: (double) x;
@end


#ifndef CONSOLE_APP

// CGPoint
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGPoint : java_lang_Object {
@public float x;
@public float y;
}
@end


// CGSize
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGSize : java_lang_Object {
@public float width;
@public float height;
}
@end


// CGRect
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGRect : java_lang_Object {
@public org_xmlvm_iphone_CGPoint* origin;
@public org_xmlvm_iphone_CGSize* size;
}
- (id) init;
- (void) dealloc;
- (CGRect) getCGRect;
- (void) __init_org_xmlvm_iphone_CGRect___float_float_float_float :(float)x :(float)y :(float)w :(float)h;
- (void) __init_org_xmlvm_iphone_CGRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)other;
+ (org_xmlvm_iphone_CGRect*) Intersection___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGRect
       :(org_xmlvm_iphone_CGRect*)r1 :(org_xmlvm_iphone_CGRect*)r2;
+ (BOOL) IsNull___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)r;
@end


// NSNotification
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_NSNotification : java_lang_Object
@end


// UIApplication
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UIApplication : UIApplication
- (void) __init_org_xmlvm_iphone_UIApplication;
- (void) applicationDidFinishLaunching: (id) app;
- (void) applicationDidFinishLaunching___org_xmlvm_iphone_NSNotification :(org_xmlvm_iphone_NSNotification*)n1;
- (void) setStatusBarModeAndDuration___int_int: (int) mode :(int) duration;
- (void) acceleratedInX:(float)xAxis Y:(float)yAxis Z:(float)zAxis;
- (void) accelerated___float_float_float :(float)x :(float)y :(float)z;
+ (void) main___java_lang_String_ARRAYTYPE_java_lang_Class :(NSMutableArray*)n1 :(id)n2;
@end


// UIHardware
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UIHardware : java_lang_Object
+ (org_xmlvm_iphone_CGRect*) fullScreenApplicationContentRect;
+ (void) _setStatusBarHeight___float: (float) height;
@end


// UITextLabel
//----------------------------------------------------------------------------
typedef UITextLabel org_xmlvm_iphone_UITextLabel;
@interface UITextLabel (cat_org_xmlvm_iphone_UITextLabel)
- (void) __init_org_xmlvm_iphone_UITextLabel___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) setText___java_lang_String :(NSString*)n1;
- (void) setCentersHorizontally___boolean :(int)n1;
@end



// CGAffineTransform
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGAffineTransform : java_lang_Object {
@public CGAffineTransform transform;
}
+ (org_xmlvm_iphone_CGAffineTransform*) makeRotation___float: (float) alpha;
@end



// UIView
//----------------------------------------------------------------------------
//typedef UIView org_xmlvm_iphone_UIView;
@interface org_xmlvm_iphone_UIView : UIView
- (void) __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
- (void) setNeedsDisplayInRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect;
- (void) drawRect:(CGRect)rect;
- (void) drawRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect;
@end



// UIWindow
//----------------------------------------------------------------------------
typedef UIWindow org_xmlvm_iphone_UIWindow;
@interface UIWindow (cat_org_xmlvm_iphone_UIWindow)
- (void) __init_org_xmlvm_iphone_UIWindow___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (void) orderFront___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*)n1;
- (void) makeKey___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*)n1;
- (void) _setHidden___boolean :(int)n1;
- (void) setContentView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
@end


// UIImage
//----------------------------------------------------------------------------
typedef UIImage org_xmlvm_iphone_UIImage;
@interface UIImage (cat_org_xmlvm_iphone_UIImage)
+ (org_xmlvm_iphone_UIImage*) imageAtPath___java_lang_String :(NSString*)n1;
- (void) draw1PartImageInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect;
@end


// UIImageView
//----------------------------------------------------------------------------
typedef UIImageView org_xmlvm_iphone_UIImageView;
@interface UIImageView (cat_org_xmlvm_iphone_UIImageView)
//- (id) init;
- (void) __init_org_xmlvm_iphone_UIImageView___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect;
- (void) setImage___org_xmlvm_iphone_UIImage: (org_xmlvm_iphone_UIImage*) image;
- (void) setTransform___org_xmlvm_iphone_CGAffineTransform :(org_xmlvm_iphone_CGAffineTransform*)transform;
@end


// CGContext
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGContext : java_lang_Object {
@public CGContextRef context;
}
+ (org_xmlvm_iphone_CGContext*) UICurrentContext;
- (void) setFillColor___float_ARRAYTYPE: (NSMutableArray*) color;
- (void) fillRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect;
@end


// NSTimer
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_NSTimer : java_lang_Object {
@public NSTimer* timer;
}

- (void) __init_org_xmlvm_iphone_NSTimer___float_java_lang_Object_java_lang_String_java_lang_Object_boolean
             :(float) timerInterval
             :(java_lang_Object*) target
             :(java_lang_String*) method
             :(java_lang_Object*) userInfo
             :(int) repeats;
             
@end


// UITableCell
//----------------------------------------------------------------------------
typedef UITableCell org_xmlvm_iphone_UITableCell;
@interface UITableCell (cat_org_xmlvm_iphone_UITableCell)
@end



// UISimpleTableCell
//----------------------------------------------------------------------------
typedef UISimpleTableCell org_xmlvm_iphone_UISimpleTableCell;
@interface UISimpleTableCell (cat_org_xmlvm_iphone_UISimpleTableCell)
- (void) __init_org_xmlvm_iphone_UISimpleTableCell___java_lang_String: (java_lang_String*) title;
@end



// UITableColumn
//----------------------------------------------------------------------------
typedef UITableColumn org_xmlvm_iphone_UITableColumn;
@interface UITableColumn (cat_org_xmlvm_iphone_UITableColumn)
- (void) __init_org_xmlvm_iphone_UITableColumn___java_lang_String_java_lang_String_float
             :(java_lang_String*) title
             :(java_lang_String*) id_
             :(float) width;
@end



// UITableDataSource
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UITableDataSource : java_lang_Object
- (void) __init_org_xmlvm_iphone_UITableDataSource;
- (int)numberOfRowsInTable:(UITable*)table;
- (UITableCell*)table:(UITable*)table cellForRow:(int)row column:(UITableColumn *)column;

// Overriden in derived class
- (int) numberOfRowsInTable___org_xmlvm_iphone_UITable :(UITable*) table;
- (org_xmlvm_iphone_UITableCell*) rowForCell___org_xmlvm_iphone_UITable_int_org_xmlvm_iphone_UITableColumn
      :(UITable*) table
      :(int)row
      :(org_xmlvm_iphone_UITableColumn*)col;

@end


// UITable
//----------------------------------------------------------------------------
typedef UITable org_xmlvm_iphone_UITable;
@interface UITable (cat_org_xmlvm_iphone_UITable)
- (void) __init_org_xmlvm_iphone_UITable___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect;
- (void) addTableColumn___org_xmlvm_iphone_UITableColumn: (org_xmlvm_iphone_UITableColumn*) col;
- (void) setDataSource___org_xmlvm_iphone_UITableDataSource: (org_xmlvm_iphone_UITableDataSource*) source;
- (void) setSeparatorStyle___int: (int) style;

@end


// UIPreferencesTable
//----------------------------------------------------------------------------
@class org_xmlvm_iphone_UIPreferencesTableDataSource;
typedef UIPreferencesTable org_xmlvm_iphone_UIPreferencesTable;
@interface UIPreferencesTable (cat_org_xmlvm_iphone_UIPreferencesTable)
- (void) __init_org_xmlvm_iphone_UIPreferencesTable___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect;
- (void) setDataSource___org_xmlvm_iphone_UIPreferencesTableDataSource: (org_xmlvm_iphone_UIPreferencesTableDataSource*) source;

@end


// UIPreferencesTableCell
//----------------------------------------------------------------------------
typedef UIPreferencesTableCell org_xmlvm_iphone_UIPreferencesTableCell;
@interface UIPreferencesTableCell (cat_org_xmlvm_iphone_UIPreferencesTableCell)
- (void) __init_org_xmlvm_iphone_UIPreferencesTableCell;
- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
- (void) setTitle___java_lang_String: (java_lang_String*) title;
- (void) setEnabled___boolean: (int) flag;
@end


// UIPreferencesTableDataSource
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UIPreferencesTableDataSource : java_lang_Object
- (void) __init_org_xmlvm_iphone_UIPreferencesTableDataSource;

- (int)numberOfGroupsInPreferencesTable:(UIPreferencesTable *)aTable;
- (int)preferencesTable:(UIPreferencesTable *)aTable
    numberOfRowsInGroup:(int)group;
- (UIPreferencesTableCell *)preferencesTable:
    (UIPreferencesTable *)aTable
    cellForGroup:(int)group;
- (float)preferencesTable:(UIPreferencesTable *)aTable
    heightForRow:(int)row
    inGroup:(int)group
    withProposedHeight:(float)proposed;
- (BOOL)preferencesTable:(UIPreferencesTable *)aTable
    isLabelGroup:(int)group;
- (UIPreferencesTableCell *)preferencesTable:
    (UIPreferencesTable *)aTable
    cellForRow:(int)row
    inGroup:(int)group;

// Overriden in derived class

- (org_xmlvm_iphone_UIPreferencesTableCell*) cellForGroup___org_xmlvm_iphone_UIPreferencesTable_int
      :(org_xmlvm_iphone_UIPreferencesTable*)n1
      :(int)n2;
- (org_xmlvm_iphone_UIPreferencesTableCell*) cellForRow___org_xmlvm_iphone_UIPreferencesTable_int_int
      :(org_xmlvm_iphone_UIPreferencesTable*)n1
      :(int)n2
      :(int)n3;
- (float) heightForRow___org_xmlvm_iphone_UIPreferencesTable_int_int_float
      :(org_xmlvm_iphone_UIPreferencesTable*)n1
      :(int)n2
      :(int)n3
      :(float)n4;
- (int) isLabelGroup___org_xmlvm_iphone_UIPreferencesTable_int
      :(org_xmlvm_iphone_UIPreferencesTable*)n1
      :(int)n2;
- (int) numberOfGroupsInPreferencesTable___org_xmlvm_iphone_UIPreferencesTable
      :(org_xmlvm_iphone_UIPreferencesTable*)n1;
- (int) numberOfRowsInGroup___org_xmlvm_iphone_UIPreferencesTable_int
      :(org_xmlvm_iphone_UIPreferencesTable*)n1
      :(int)n2;

@end


// UIPreferencesTextTableCell
//----------------------------------------------------------------------------
typedef UIPreferencesTextTableCell org_xmlvm_iphone_UIPreferencesTextTableCell;
@interface UIPreferencesTextTableCell (cat_org_xmlvm_iphone_UIPreferencesTextTableCell)
- (void) __init_org_xmlvm_iphone_UIPreferencesTextTableCell;
- (void) setValue___java_lang_String: (java_lang_String*) value;
- (java_lang_String*) getValue;
@end


// UISwitchControl
//----------------------------------------------------------------------------
typedef UISwitchControl org_xmlvm_iphone_UISwitchControl;
@interface UISwitchControl (cat_org_xmlvm_iphone_UISwitchControl)
- (void) __init_org_xmlvm_iphone_UISwitchControl___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect;
- (void) setValue___float: (float) value;
- (float) getValue;
@end


// NSData
//----------------------------------------------------------------------------
typedef NSData org_xmlvm_iphone_NSData;
@interface NSData (cat_NSData)
- (java_lang_String*) toString;
@end


// NSURL
//----------------------------------------------------------------------------
typedef NSURL org_xmlvm_iphone_NSURL;
@interface NSURL (cat_NSURL)
- (void) __init_org_xmlvm_iphone_NSURL___java_lang_String: (java_lang_String*) url;
+ (NSURL*) URLWithString___java_lang_String: (java_lang_String*) url;
@end


// NSMutableURLRequest
//----------------------------------------------------------------------------
typedef NSMutableURLRequest org_xmlvm_iphone_NSMutableURLRequest;
@interface NSMutableURLRequest (cat_NSMutableURLRequest)
- (void) __init_org_xmlvm_iphone_NSMutableURLRequest___org_xmlvm_iphone_NSURL: (org_xmlvm_iphone_NSURL*) url;
@end


// NSErrorHolder
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_NSErrorHolder : java_lang_Object
- (void) __init_org_xmlvm_iphone_NSErrorHolder;
@end


// NSHTTPURLResponseHolder
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_NSHTTPURLResponseHolder : java_lang_Object
- (void) __init_org_xmlvm_iphone_NSHTTPURLResponseHolder;
@end


// NSURLConnection
//----------------------------------------------------------------------------
typedef NSURLConnection org_xmlvm_iphone_NSURLConnection;
@interface NSURLConnection (cat_NSURLConnection)
+ (NSData*) sendSynchronousRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSHTTPURLResponseHolder_org_xmlvm_iphone_NSErrorHolder
               :(org_xmlvm_iphone_NSMutableURLRequest*) req
               :(org_xmlvm_iphone_NSHTTPURLResponseHolder*) resp
               :(org_xmlvm_iphone_NSErrorHolder*) err;
@end


#endif
