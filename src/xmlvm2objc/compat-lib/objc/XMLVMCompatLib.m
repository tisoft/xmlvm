
#import <XMLVMCompatLib.h>


// java.lang.Object
//----------------------------------------------------------------------------
@implementation NSObject (cat_java_lang_Object)
- (void) __init_java_lang_Object
{
}

@end


// java.lang.Class
//----------------------------------------------------------------------------
@implementation java_lang_Class;
- (void) __init_java_lang_Class
{
}

@end


// java.io.PrintStream
//----------------------------------------------------------------------------
@implementation java_io_PrintStream;

- (void) println___int: (int) i
{
    printf("%d\n", i);
}


- (void) println___float: (float) f
{
    printf("%f\n", f);
}


- (void) println___double: (double) d
{
    printf("%lf\n", d);
}


- (void) println___java_lang_String: (NSString*) s
{
    printf("%s\n", [s cString]);
}


@end


// java.lang.String
//----------------------------------------------------------------------------
@implementation NSMutableString (cat_java_lang_String)

- (void) __init_java_lang_String___java_lang_String: (java_lang_String*) str
{
    [self setString: str];
}

- (void) __init_java_lang_StringBuilder___java_lang_String: (java_lang_String*) str
{
    [self setString: str];
}

+ (NSMutableString*) valueOf___int: (int) i
{
    NSNumber* n = [NSNumber numberWithInt: i];
    return [NSMutableString stringWithString: [n stringValue]];
}

+ (NSMutableString*) valueOf___float: (float) f
{
    NSNumber* n = [NSNumber numberWithFloat: f];
    return [NSMutableString stringWithString: [n stringValue]];
}

+ (NSMutableString*) valueOf___java_lang_Object: (java_lang_Object*) o
{
    if ([o isKindOfClass: [NSMutableString class]] == YES) {
        return [NSMutableString stringWithString: (NSMutableString*) o];
    }
    return [NSMutableString stringWithString: @"Unkown type in valueOf___java_lang_Object"];
}

- (NSMutableString*) append___java_lang_String: (java_lang_String*) str
{
    [self appendString: str];
    return self;
}

- (NSMutableString*) toString
{
    return self;
}
@end


// java.lang.System
//----------------------------------------------------------------------------
java_io_PrintStream* _STATIC_java_lang_System_out;

@implementation java_lang_System;

+ (void) initialize
{
    java_io_PrintStream* v = [[[java_io_PrintStream alloc] init] autorelease];
    [java_lang_System _PUT_STATIC_java_lang_System_out: v];
}

+ (java_io_PrintStream*) _GET_STATIC_java_lang_System_out
{
    return _STATIC_java_lang_System_out;
}

+ (void) _PUT_STATIC_java_lang_System_out: (java_io_PrintStream*) v
{
    [v retain];
    [_STATIC_java_lang_System_out release];
    _STATIC_java_lang_System_out = v;
}

@end


// java.lang.Math
//----------------------------------------------------------------------------
@implementation java_lang_Math;

+ (double) random
{
    return (double)random()/2147483647.0;
}

+ (double) sqrt___double: (double) x
{
    return sqrt(x);
}

+ (double) asin___double: (double) x
{
    return asin(x);
}

@end


#ifndef CONSOLE_APP


// CGPoint
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGPoint;
@end


// CGSize
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGSize;
@end



// CGRect
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGRect;

- (id) init
{
    [super init];
    origin = [[org_xmlvm_iphone_CGPoint alloc] init];
    size = [[org_xmlvm_iphone_CGSize alloc] init];
    return self;
}

- (void) dealloc
{
    [origin release];
    [size release];
    [super dealloc];
}

- (CGRect) getCGRect
{
    return CGRectMake(origin->x, origin->y, size->width, size->height);
}

- (void) __init_org_xmlvm_iphone_CGRect___float_float_float_float :(float)x :(float)y :(float)w :(float)h
{
    origin->x = x;
    origin->y = y;
    size->width = w;
    size->height = h;
}

- (void) __init_org_xmlvm_iphone_CGRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)other;
{
    origin->x = other->origin->x;
    origin->y = other->origin->y;
    size->width = other->size->width;
    size->height = other->size->height;
}


+ (org_xmlvm_iphone_CGRect*) Intersection___org_xmlvm_iphone_CGRect_org_xmlvm_iphone_CGRect
       :(org_xmlvm_iphone_CGRect*)r1 :(org_xmlvm_iphone_CGRect*)r2
{
    CGRect _r1 = [r1 getCGRect];
    CGRect _r2 = [r2 getCGRect];
    CGRect _r = CGRectIntersection(_r1, _r2);
    org_xmlvm_iphone_CGRect* r = [[org_xmlvm_iphone_CGRect alloc] init];
    r->origin->x = _r.origin.x;
    r->origin->y = _r.origin.y;
    r->size->width = _r.size.width;
    r->size->height = _r.size.height;
    return r;
}

+ (BOOL) IsNull___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)r
{
    CGRect rect = [r getCGRect];
    return CGRectIsNull(rect);
}

@end


// UIApplication
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UIApplication;

- (void) __init_org_xmlvm_iphone_UIApplication
{
}

- (void) applicationDidFinishLaunching: (id) app
{
    [self applicationDidFinishLaunching___org_xmlvm_iphone_NSNotification: nil /* TODO: should pass notification */];
}

- (void) applicationDidFinishLaunching___org_xmlvm_iphone_NSNotification :(org_xmlvm_iphone_NSNotification*)n1
{
    // Never called since overriden in application
}

- (void) setStatusBarModeAndDuration___int_int: (int) mode :(int) duration
{
    [self setStatusBarMode: mode duration: duration];
}

- (void) acceleratedInX:(float)xAxis Y:(float)yAxis Z:(float)zAxis
{
    [self accelerated___float_float_float :xAxis:yAxis:zAxis];
}

- (void) accelerated___float_float_float :(float)x :(float)y :(float)z
{
    // Nothing to do. Will be overloaded in derived class.
}

+ (void) main___java_lang_String_ARRAYTYPE_java_lang_Class :(NSMutableArray*)n1 :(id)n2
{
    // TODO: change args array to argc, argc
    UIApplicationMain(0, nil, n2);
}
@end



// UIHardware
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UIHardware;

+ (org_xmlvm_iphone_CGRect*) fullScreenApplicationContentRect
{
	CGRect rect = [UIHardware fullScreenApplicationContentRect];
    org_xmlvm_iphone_CGRect* xmlvmCGRect = [[[org_xmlvm_iphone_CGRect alloc] init] autorelease];
    xmlvmCGRect->origin->x = rect.origin.x;
    xmlvmCGRect->origin->y = rect.origin.y;
    xmlvmCGRect->size->width = rect.size.width;
    xmlvmCGRect->size->height = rect.size.height;
    return xmlvmCGRect;
}


+ (void) _setStatusBarHeight___float: (float) height
{
    [UIHardware _setStatusBarHeight: height];
}
@end


// UITextLabel
//----------------------------------------------------------------------------
@implementation UITextLabel (cat_org_xmlvm_iphone_UITextLabel);

- (void) __init_org_xmlvm_iphone_UITextLabel___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithFrame: [n1 getCGRect]];
}


- (void) setText___java_lang_String :(NSString*)n1
{
    [self setText: n1];
}


- (void) setCentersHorizontally___boolean :(int)n1
{
    [self setCentersHorizontally: (n1 ? true : false)];
}
@end


// CGAffineTransform
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGAffineTransform;

+ (org_xmlvm_iphone_CGAffineTransform*) makeRotation___float: (float) alpha
{
    org_xmlvm_iphone_CGAffineTransform* t = [[org_xmlvm_iphone_CGAffineTransform alloc] init];
    t->transform = CGAffineTransformMakeRotation(alpha);
    return t;
}
@end



// UIView
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UIView;

- (void) __init_org_xmlvm_iphone_UIView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithFrame: [n1 getCGRect]];
}


- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)view
{
    [self addSubview: view];
}

- (void) setNeedsDisplayInRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect
{
    CGRect r = [rect getCGRect];
    [self setNeedsDisplayInRect: r];
}

- (void) drawRect:(CGRect)rect
{
    org_xmlvm_iphone_CGRect* redrawRect = [[org_xmlvm_iphone_CGRect alloc] init];
    redrawRect->origin->x = rect.origin.x;
    redrawRect->origin->y = rect.origin.y;
    redrawRect->size->width = rect.size.width;
    redrawRect->size->height = rect.size.height;
    [self drawRect___org_xmlvm_iphone_CGRect: redrawRect];
    [redrawRect release];
}

- (void) drawRect___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect
{
    // Will not be called because overridden in derived class
}

@end



// UIImageView
//----------------------------------------------------------------------------
@implementation UIImageView (cat_org_xmlvm_iphone_UIImageView);

/*
- (id) init
{
    [super init];
    imageView = [[UIImageView alloc] init];
}
*/

- (void) __init_org_xmlvm_iphone_UIImageView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithFrame: [n1 getCGRect]];
}

- (void) setImage___org_xmlvm_iphone_UIImage: (org_xmlvm_iphone_UIImage*) image
{
    [self setImage: image];
}

- (void) setTransform___org_xmlvm_iphone_CGAffineTransform :(org_xmlvm_iphone_CGAffineTransform*)trans
{
    [self setTransform: trans->transform];
}

@end


// UIWindow
//----------------------------------------------------------------------------
@implementation UIWindow (cat_org_xmlvm_iphone_UIWindow);

- (void) __init_org_xmlvm_iphone_UIWindow___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1
{
	[self initWithContentRect: [n1 getCGRect]];
}


- (void) orderFront___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*)n1
{
    [self orderFront: n1];
}


- (void) makeKey___org_xmlvm_iphone_UIApplication :(org_xmlvm_iphone_UIApplication*)n1
{
    [self makeKey: n1];
}


- (void) _setHidden___boolean :(int)n1
{
    [self _setHidden: (n1 ? true : false)];
}


- (void) setContentView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1
{
    [self setContentView: n1];
}
@end


// UIImage
//----------------------------------------------------------------------------
@implementation UIImage(cat_org_xmlvm_iphone_UIImage);

+ (org_xmlvm_iphone_UIImage*) imageAtPath___java_lang_String :(NSString*)n1
{
    return [UIImage imageAtPath: n1];
}

- (void) draw1PartImageInRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) rect
{
    CGRect r = [rect getCGRect];
    [self draw1PartImageInRect: r];
}
@end


// CGContext
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGContext;

+ (org_xmlvm_iphone_CGContext*) UICurrentContext
{
    org_xmlvm_iphone_CGContext* c = [[org_xmlvm_iphone_CGContext alloc] init];
    c->context = UICurrentContext();
    return c;
}
    

- (void) setFillColor___float_ARRAYTYPE: (NSMutableArray*) color
{
    float c[4] = { [[color objectAtIndex:0] floatValue],
                   [[color objectAtIndex:1] floatValue],
                   [[color objectAtIndex:2] floatValue],
                   [[color objectAtIndex:3] floatValue] };
    CGContextSetFillColor(context, c);
}

- (void) fillRect___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*)rect
{
    CGRect r = [rect getCGRect];
    CGContextFillRect(context, r);
}


@end


// NSTimer
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_NSTimer;
- (void) __init_org_xmlvm_iphone_NSTimer___float_java_lang_Object_java_lang_String_java_lang_Object_boolean
             :(float) timerInterval
             :(java_lang_Object*) t
             :(java_lang_String*) method
             :(java_lang_Object*) userInfo
             :(int) r
{
    NSMutableString* sel = [NSMutableString stringWithString: (NSString*) method];
    [sel appendString: @"___org_xmlvm_iphone_NSTimer:"];
    [NSTimer scheduledTimerWithTimeInterval:timerInterval
             target:t
             selector:NSSelectorFromString(sel)
             userInfo:userInfo
             repeats:r ];
}

@end



// UITableCell
//----------------------------------------------------------------------------
@implementation UITableCell (cat_org_xmlvm_iphone_UITableCell)
@end



// UISimpleTableCell
//----------------------------------------------------------------------------
@implementation UISimpleTableCell (cat_org_xmlvm_iphone_UISimpleTableCell)

- (void) __init_org_xmlvm_iphone_UISimpleTableCell___java_lang_String: (java_lang_String*) title
{
    [self setTitle: title];
}

@end



// UITableColumn
//----------------------------------------------------------------------------
@implementation UITableColumn (cat_org_xmlvm_iphone_UITableColumn)

- (void) __init_org_xmlvm_iphone_UITableColumn___java_lang_String_java_lang_String_float
             :(java_lang_String*) title
             :(java_lang_String*) id_
             :(float) w
{
    [self initWithTitle: title
          identifier: id_
          width: w];
}
            
@end



// UITableDataSource
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UITableDataSource

- (void) __init_org_xmlvm_iphone_UITableDataSource
{
}

- (int)numberOfRowsInTable:(UITable*)table
{
    [self numberOfRowsInTable___org_xmlvm_iphone_UITable: table];
}

- (UITableCell*)table:(UITable*)table cellForRow:(int)row column:(UITableColumn *)column
{
    return [self rowForCell___org_xmlvm_iphone_UITable_int_org_xmlvm_iphone_UITableColumn
                   :(org_xmlvm_iphone_UITable*)table
                   :(int)row
                   :(org_xmlvm_iphone_UITableColumn*)column];
}

- (int) numberOfRowsInTable___org_xmlvm_iphone_UITable :(UITable*) table
{
    // Will be implemented in derived class
}

- (org_xmlvm_iphone_UITableCell*) rowForCell___org_xmlvm_iphone_UITable_int_org_xmlvm_iphone_UITableColumn
      :(UITable*) table
      :(int)row
      :(org_xmlvm_iphone_UITableColumn*)col
{
    // Will be implemented in derived class
}

@end


// UITable
//----------------------------------------------------------------------------
@implementation UITable (cat_org_xmlvm_iphone_UITable)

- (void) __init_org_xmlvm_iphone_UITable___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) r
{
    CGRect rect = [r getCGRect];
    [self initWithFrame: rect];
}

- (void) addTableColumn___org_xmlvm_iphone_UITableColumn: (org_xmlvm_iphone_UITableColumn*) col
{
    [self addTableColumn: col];
}

- (void) setDataSource___org_xmlvm_iphone_UITableDataSource: (org_xmlvm_iphone_UITableDataSource*) source
{
    [self setDataSource: source];
}


- (void) setSeparatorStyle___int: (int) style
{
    [self setSeparatorStyle: style];
}

@end


// UIPreferencesTable
//----------------------------------------------------------------------------
@implementation UIPreferencesTable (cat_org_xmlvm_iphone_UIPreferencesTable)

- (void) __init_org_xmlvm_iphone_UIPreferencesTable___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) r
{
    CGRect rect = [r getCGRect];
    [self setFrame: rect];
}

- (void) setDataSource___org_xmlvm_iphone_UIPreferencesTableDataSource: (org_xmlvm_iphone_UIPreferencesTableDataSource*) source
{
    [self setDataSource: source];
}

@end


// UIPreferencesTableCell
//----------------------------------------------------------------------------
@implementation UIPreferencesTableCell (cat_org_xmlvm_iphone_UIPreferencesTableCell)
- (void) __init_org_xmlvm_iphone_UIPreferencesTableCell
{
    [self init];
}

- (void) addSubview___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)view
{
    [self addSubview: view];
}

- (void) setTitle___java_lang_String: (java_lang_String*) title
{
    [self setTitle: title];
}

- (void) setEnabled___boolean: (int) flag
{
    [self setEnabled: flag];
}
@end


// UIPreferencesTableDataSource
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UIPreferencesTableDataSource
- (void) __init_org_xmlvm_iphone_UIPreferencesTableDataSource
{
}

- (int)numberOfGroupsInPreferencesTable:(UIPreferencesTable *)aTable
{
    return [self numberOfGroupsInPreferencesTable___org_xmlvm_iphone_UIPreferencesTable: aTable];
}

- (int)preferencesTable:(UIPreferencesTable *)aTable
    numberOfRowsInGroup:(int)group
{
    return [self numberOfRowsInGroup___org_xmlvm_iphone_UIPreferencesTable_int :aTable :group];
}

- (UIPreferencesTableCell *)preferencesTable:
    (UIPreferencesTable *)aTable
    cellForGroup:(int)group
{
    return [self cellForGroup___org_xmlvm_iphone_UIPreferencesTable_int: aTable :group];
}    

- (float)preferencesTable:(UIPreferencesTable *)aTable
    heightForRow:(int)row
    inGroup:(int)group
    withProposedHeight:(float)proposed
{
    return [self heightForRow___org_xmlvm_iphone_UIPreferencesTable_int_int_float: aTable :row :group :proposed];
}

- (BOOL)preferencesTable:(UIPreferencesTable *)aTable
    isLabelGroup:(int)group
{
    return [self isLabelGroup___org_xmlvm_iphone_UIPreferencesTable_int :aTable :group];
}

- (UIPreferencesTableCell *)preferencesTable:
    (UIPreferencesTable *)aTable
    cellForRow:(int)row
    inGroup:(int)group
{
    [self cellForRow___org_xmlvm_iphone_UIPreferencesTable_int_int :aTable :row :group];
}

// Overriden in derived class

- (org_xmlvm_iphone_UIPreferencesTableCell*) cellForGroup___org_xmlvm_iphone_UIPreferencesTable_int
      :(org_xmlvm_iphone_UIPreferencesTable*)n1
      :(int)n2
{
}

- (org_xmlvm_iphone_UIPreferencesTableCell*) cellForRow___org_xmlvm_iphone_UIPreferencesTable_int_int
      :(org_xmlvm_iphone_UIPreferencesTable*)n1
      :(int)n2
      :(int)n3
{
}

- (float) heightForRow___org_xmlvm_iphone_UIPreferencesTable_int_int_float
      :(org_xmlvm_iphone_UIPreferencesTable*)n1
      :(int)n2
      :(int)n3
      :(float)n4
{
}

- (int) isLabelGroup___org_xmlvm_iphone_UIPreferencesTable_int
      :(org_xmlvm_iphone_UIPreferencesTable*)n1
      :(int)n2
{
}

- (int) numberOfGroupsInPreferencesTable___org_xmlvm_iphone_UIPreferencesTable
      :(org_xmlvm_iphone_UIPreferencesTable*)n1
{
}

- (int) numberOfRowsInGroup___org_xmlvm_iphone_UIPreferencesTable_int
      :(org_xmlvm_iphone_UIPreferencesTable*)n1
      :(int)n2
{
}


@end


// UIPreferencesTextTableCell
//----------------------------------------------------------------------------
@implementation UIPreferencesTextTableCell (cat_org_xmlvm_iphone_UIPreferencesTextTableCell)
- (void) __init_org_xmlvm_iphone_UIPreferencesTextTableCell
{
}

- (void) setValue___java_lang_String: (java_lang_String*) value
{
    [self setValue: value];
}

- (java_lang_String*) getValue
{
    return [self value];
}
@end


// UISwitchControl
//----------------------------------------------------------------------------
@implementation UISwitchControl (cat_org_xmlvm_iphone_UISwitchControl)
- (void) __init_org_xmlvm_iphone_UISwitchControl___org_xmlvm_iphone_CGRect: (org_xmlvm_iphone_CGRect*) r
{
    CGRect rect = [r getCGRect];
    [self initWithFrame: rect];
}

- (void) setValue___float: (float) value
{
    [self setValue: value];
}

- (float) getValue
{
    return [self value];
}
@end


// NSData
//----------------------------------------------------------------------------
@implementation NSData (cat_NSData)
- (java_lang_String*) toString
{
    return [[NSMutableString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}
@end


// NSURL
//----------------------------------------------------------------------------
@implementation NSURL (cat_NSURL)
- (void) __init_org_xmlvm_iphone_NSURL___java_lang_String: (java_lang_String*) url
{
    [self initWithString: url];
}

+ (NSURL*) URLWithString___java_lang_String: (java_lang_String*) url
{
    return [NSURL URLWithString: url];
}
@end


// NSMutableURLRequest
//----------------------------------------------------------------------------
@implementation NSMutableURLRequest (cat_NSMutableURLRequest)
- (void) __init_org_xmlvm_iphone_NSMutableURLRequest___org_xmlvm_iphone_NSURL: (org_xmlvm_iphone_NSURL*) url
{
    [self initWithURL: url];
}
@end


// NSErrorHolder
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_NSErrorHolder;
- (void) __init_org_xmlvm_iphone_NSErrorHolder
{
    [self init];
}
@end


// NSHTTPURLResponseHolder
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_NSHTTPURLResponseHolder;
- (void) __init_org_xmlvm_iphone_NSHTTPURLResponseHolder
{
    [self init];
}
@end


// NSURLConnection
//----------------------------------------------------------------------------
@implementation NSURLConnection (cat_NSURLConnection)
+ (NSData*) sendSynchronousRequest___org_xmlvm_iphone_NSMutableURLRequest_org_xmlvm_iphone_NSHTTPURLResponseHolder_org_xmlvm_iphone_NSErrorHolder
               :(org_xmlvm_iphone_NSMutableURLRequest*) req
               :(org_xmlvm_iphone_NSHTTPURLResponseHolder*) respHolder
               :(org_xmlvm_iphone_NSErrorHolder*) errHolder
{
    NSHTTPURLResponse* resp;
    NSError* err;
    NSData* data;
    data = [NSURLConnection sendSynchronousRequest:req
                            returningResponse:&resp
                            error:&err];
    // TODO need to wrap resp and err in Holder classes
    return data;
}
@end



#endif
