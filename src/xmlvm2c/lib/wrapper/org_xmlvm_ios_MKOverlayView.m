
//XMLVM_BEGIN_IMPLEMENTATION
@interface MKOverlayView (MKOverlayViewWrapperCategory)
+ (void) initialize_class;
@end

@implementation MKOverlayView (MKOverlayViewWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MKOverlayView.classInitialized)
        __INIT_org_xmlvm_ios_MKOverlayView();
}
@end

void org_xmlvm_ios_MKOverlayView_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MKOverlayView class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MKOverlayView();
        org_xmlvm_ios_MKOverlayView_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MKOverlayView]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MKOverlayView]
__DELETE_org_xmlvm_ios_UIView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayView___INIT____org_xmlvm_ios_MKOverlay]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayView___INIT___]
    MKOverlayView* var0 = [[MKOverlayView alloc ] init];
    org_xmlvm_ios_MKOverlayView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayView___INIT____org_xmlvm_ios_CGRect]

    MKOverlayView* var0 = [[MKOverlayView alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_MKOverlayView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayView___INIT___]
    MKOverlayView* var0 = [[MKOverlayView alloc ] init];
    org_xmlvm_ios_MKOverlayView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayView___INIT___]
    MKOverlayView* var0 = [[MKOverlayView alloc ] init];
    org_xmlvm_ios_MKOverlayView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayView___INIT___]

    MKOverlayView* var0 = [[MKOverlayView alloc]init];

    org_xmlvm_ios_MKOverlayView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayView_getOverlay__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayView_pointForMapPoint___org_xmlvm_ios_MKMapPoint]

    XMLVM_VAR_THIZ;
    
    CGPoint var0 = [thiz  pointForMapPoint:toMKMapPoint(n1)];

    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayView_mapPointForPoint___org_xmlvm_ios_CGPoint]

    XMLVM_VAR_THIZ;
    
    MKMapPoint var0 = [thiz  mapPointForPoint:toCGPoint(n1)];

    return fromMKMapPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayView_rectForMapRect___org_xmlvm_ios_MKMapRect]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  rectForMapRect:toMKMapRect(n1)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayView_mapRectForRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    
    MKMapRect var0 = [thiz  mapRectForRect:toCGRect(n1)];

    return fromMKMapRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayView_canDrawMapRect___org_xmlvm_ios_MKMapRect_float]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  canDrawMapRect:toMKMapRect(n1) zoomScale:n2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayView_drawMapRect___org_xmlvm_ios_MKMapRect_float_org_xmlvm_ios_CGContext]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGContext, var3, n3);
    [thiz  drawMapRect:toMKMapRect(n1) zoomScale:n2 inContext:var3];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayView_setNeedsDisplayInMapRect___org_xmlvm_ios_MKMapRect]

    XMLVM_VAR_THIZ;
    [thiz  setNeedsDisplayInMapRect:toMKMapRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKOverlayView_setNeedsDisplayInMapRect___org_xmlvm_ios_MKMapRect_float]

    XMLVM_VAR_THIZ;
    [thiz  setNeedsDisplayInMapRect:toMKMapRect(n1) zoomScale:n2];

    
//XMLVM_END_WRAPPER
