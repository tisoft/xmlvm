
//XMLVM_BEGIN_IMPLEMENTATION
@interface MKCircle (MKCircleWrapperCategory)
+ (void) initialize_class;
@end

@implementation MKCircle (MKCircleWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MKCircle.classInitialized)
        __INIT_org_xmlvm_ios_MKCircle();
}
@end

void org_xmlvm_ios_MKCircle_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_MKShape_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MKCircle class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MKCircle();
        org_xmlvm_ios_MKCircle_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MKCircle]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MKCircle]
__DELETE_org_xmlvm_ios_MKShape(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircle___INIT___]
    MKCircle* var0 = [[MKCircle alloc ] init];
    org_xmlvm_ios_MKCircle_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircle___INIT___]
    MKCircle* var0 = [[MKCircle alloc ] init];
    org_xmlvm_ios_MKCircle_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircle___INIT___]

    MKCircle* var0 = [[MKCircle alloc]init];

    org_xmlvm_ios_MKCircle_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircle_circleWithCenterCoordinate___org_xmlvm_ios_CLLocationCoordinate2D_double]

    MKCircle* var0 =  [MKCircle  circleWithCenterCoordinate:toCLLocationCoordinate2D(n1) radius:n2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircle_circleWithMapRect___org_xmlvm_ios_MKMapRect]

    MKCircle* var0 =  [MKCircle  circleWithMapRect:toMKMapRect(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircle_getCoordinate__]

    XMLVM_VAR_THIZ;
    CLLocationCoordinate2D var0 = [thiz coordinate];
    
    return fromCLLocationCoordinate2D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircle_getRadius__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz radius];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCircle_getBoundingMapRect__]

    XMLVM_VAR_THIZ;
    MKMapRect var0 = [thiz boundingMapRect];
    
    return fromMKMapRect(var0);
//XMLVM_END_WRAPPER
