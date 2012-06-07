
//XMLVM_BEGIN_IMPLEMENTATION
@interface CLLocation (CLLocationWrapperCategory)
+ (void) initialize_class;
@end

@implementation CLLocation (CLLocationWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CLLocation.classInitialized)
        __INIT_org_xmlvm_ios_CLLocation();
}
@end

void org_xmlvm_ios_CLLocation_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CLLocation class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CLLocation();
        org_xmlvm_ios_CLLocation_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CLLocation]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CLLocation]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocation___INIT____double_double]

    CLLocation* var0 = [[CLLocation alloc] initWithLatitude:n1 longitude:n2];
    org_xmlvm_ios_CLLocation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocation___INIT____org_xmlvm_ios_CLLocationCoordinate2D_double_double_double_org_xmlvm_ios_NSDate]

    CLLocation* var0 = [[CLLocation alloc] initWithCoordinate:toCLLocationCoordinate2D(n1) altitude:n2 horizontalAccuracy:n3 verticalAccuracy:n4 timestamp:(NSDate*) (((org_xmlvm_ios_NSDate*) n5)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_CLLocation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocation___INIT____org_xmlvm_ios_CLLocationCoordinate2D_double_double_double_double_double_org_xmlvm_ios_NSDate]

    CLLocation* var0 = [[CLLocation alloc] initWithCoordinate:toCLLocationCoordinate2D(n1) altitude:n2 horizontalAccuracy:n3 verticalAccuracy:n4 course:n5 speed:n6 timestamp:(NSDate*) (((org_xmlvm_ios_NSDate*) n7)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_CLLocation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocation___INIT___]
    CLLocation* var0 = [[CLLocation alloc ] init];
    org_xmlvm_ios_CLLocation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocation___INIT___]

    CLLocation* var0 = [[CLLocation alloc]init];

    org_xmlvm_ios_CLLocation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocation_getCoordinate__]

    XMLVM_VAR_THIZ;
    CLLocationCoordinate2D var0 = [thiz coordinate];
    
    return fromCLLocationCoordinate2D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocation_getAltitude__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz altitude];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocation_getHorizontalAccuracy__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz horizontalAccuracy];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocation_getVerticalAccuracy__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz verticalAccuracy];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocation_getCourse__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz course];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocation_getSpeed__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz speed];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocation_getTimestamp__]

    XMLVM_VAR_THIZ;
    NSDate* var0 = [thiz timestamp];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocation_description__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz description];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocation_getDistanceFrom___org_xmlvm_ios_CLLocation]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz  getDistanceFrom:(CLLocation*) (((org_xmlvm_ios_CLLocation*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocation_distanceFromLocation___org_xmlvm_ios_CLLocation]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz  distanceFromLocation:(CLLocation*) (((org_xmlvm_ios_CLLocation*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER
