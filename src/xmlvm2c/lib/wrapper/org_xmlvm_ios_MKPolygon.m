
//XMLVM_BEGIN_IMPLEMENTATION
@interface MKPolygon (MKPolygonWrapperCategory)
+ (void) initialize_class;
@end

@implementation MKPolygon (MKPolygonWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MKPolygon.classInitialized)
        __INIT_org_xmlvm_ios_MKPolygon();
}
@end

void org_xmlvm_ios_MKPolygon_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MKMultiPoint_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MKPolygon class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MKPolygon();
        org_xmlvm_ios_MKPolygon_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MKPolygon]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MKPolygon]
__DELETE_org_xmlvm_ios_MKMultiPoint(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygon___INIT___]
    MKPolygon* var0 = [[MKPolygon alloc ] init];
    org_xmlvm_ios_MKPolygon_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygon___INIT___]
    MKPolygon* var0 = [[MKPolygon alloc ] init];
    org_xmlvm_ios_MKPolygon_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygon___INIT___]
    MKPolygon* var0 = [[MKPolygon alloc ] init];
    org_xmlvm_ios_MKPolygon_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygon___INIT___]

    MKPolygon* var0 = [[MKPolygon alloc]init];

    org_xmlvm_ios_MKPolygon_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygon_polygonWithPoints___org_xmlvm_ios_Reference_int]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    MKMapPoint var1= toMKMapPoint(jObject1);
    
    MKPolygon* var0 =  [MKPolygon  polygonWithPoints:&var1 count:n2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygon_polygonWithPoints___org_xmlvm_ios_Reference_int_java_util_List]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    MKMapPoint var1= toMKMapPoint(jObject1);
    NSArray * ObjCVar3 = toNSArray(n3);
    
    MKPolygon* var0 =  [MKPolygon  polygonWithPoints:&var1 count:n2 interiorPolygons:ObjCVar3];
    [ObjCVar3 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygon_polygonWithCoordinates___org_xmlvm_ios_Reference_int]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CLLocationCoordinate2D var1= toCLLocationCoordinate2D(jObject1);
    
    MKPolygon* var0 =  [MKPolygon  polygonWithCoordinates:&var1 count:n2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygon_polygonWithCoordinates___org_xmlvm_ios_Reference_int_java_util_List]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CLLocationCoordinate2D var1= toCLLocationCoordinate2D(jObject1);
    NSArray * ObjCVar3 = toNSArray(n3);
    
    MKPolygon* var0 =  [MKPolygon  polygonWithCoordinates:&var1 count:n2 interiorPolygons:ObjCVar3];
    [ObjCVar3 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygon_getInteriorPolygons__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz interiorPolygons];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygon_getCoordinate__]

    XMLVM_VAR_THIZ;
    CLLocationCoordinate2D var0 = [thiz coordinate];
    
    return fromCLLocationCoordinate2D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKPolygon_getBoundingMapRect__]

    XMLVM_VAR_THIZ;
    MKMapRect var0 = [thiz boundingMapRect];
    
    return fromMKMapRect(var0);
//XMLVM_END_WRAPPER
