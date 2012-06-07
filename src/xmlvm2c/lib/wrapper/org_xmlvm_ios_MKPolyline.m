
//XMLVM_BEGIN_IMPLEMENTATION
@interface MKPolyline (MKPolylineWrapperCategory)
+ (void) initialize_class;
@end

@implementation MKPolyline (MKPolylineWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MKPolyline.classInitialized)
        __INIT_org_xmlvm_ios_MKPolyline();
}
@end

void org_xmlvm_ios_MKPolyline_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MKMultiPoint_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MKPolyline class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MKPolyline();
        org_xmlvm_ios_MKPolyline_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MKPolyline]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MKPolyline]
__DELETE_org_xmlvm_ios_MKMultiPoint(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolyline___INIT___]
    MKPolyline* var0 = [[MKPolyline alloc ] init];
    org_xmlvm_ios_MKPolyline_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolyline___INIT___]
    MKPolyline* var0 = [[MKPolyline alloc ] init];
    org_xmlvm_ios_MKPolyline_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolyline___INIT___]
    MKPolyline* var0 = [[MKPolyline alloc ] init];
    org_xmlvm_ios_MKPolyline_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolyline___INIT___]

    MKPolyline* var0 = [[MKPolyline alloc]init];

    org_xmlvm_ios_MKPolyline_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolyline_polylineWithPoints___org_xmlvm_ios_Reference_int]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    MKMapPoint var1= toMKMapPoint(jObject1);
    
    MKPolyline* var0 =  [MKPolyline  polylineWithPoints:&var1 count:n2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolyline_polylineWithCoordinates___org_xmlvm_ios_Reference_int]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CLLocationCoordinate2D var1= toCLLocationCoordinate2D(jObject1);
    
    MKPolyline* var0 =  [MKPolyline  polylineWithCoordinates:&var1 count:n2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolyline_getCoordinate__]

    XMLVM_VAR_THIZ;
    CLLocationCoordinate2D var0 = [thiz coordinate];
    
    return fromCLLocationCoordinate2D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolyline_getBoundingMapRect__]

    XMLVM_VAR_THIZ;
    MKMapRect var0 = [thiz boundingMapRect];
    
    return fromMKMapRect(var0);
//XMLVM_END_WRAPPER
