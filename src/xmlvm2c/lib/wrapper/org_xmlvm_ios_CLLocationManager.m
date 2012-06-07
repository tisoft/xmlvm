
//XMLVM_BEGIN_IMPLEMENTATION
@interface CLLocationManager (CLLocationManagerWrapperCategory)
+ (void) initialize_class;
@end

@implementation CLLocationManager (CLLocationManagerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CLLocationManager.classInitialized)
        __INIT_org_xmlvm_ios_CLLocationManager();
}
@end

void org_xmlvm_ios_CLLocationManager_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CLLocationManager class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CLLocationManager();
        org_xmlvm_ios_CLLocationManager_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CLLocationManager]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CLLocationManager]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager___INIT___]
    CLLocationManager* var0 = [[CLLocationManager alloc ] init];
    org_xmlvm_ios_CLLocationManager_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager___INIT___]

    CLLocationManager* var0 = [[CLLocationManager alloc]init];

    org_xmlvm_ios_CLLocationManager_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_locationServicesEnabled__]

    BOOL var0 =  [CLLocationManager locationServicesEnabled];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_headingAvailable__]

    BOOL var0 =  [CLLocationManager headingAvailable];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_significantLocationChangeMonitoringAvailable__]

    BOOL var0 =  [CLLocationManager significantLocationChangeMonitoringAvailable];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_regionMonitoringAvailable__]

    BOOL var0 =  [CLLocationManager regionMonitoringAvailable];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_regionMonitoringEnabled__]

    BOOL var0 =  [CLLocationManager regionMonitoringEnabled];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_authorizationStatus__]

    int var0 =  [CLLocationManager authorizationStatus];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_setDelegate___org_xmlvm_ios_CLLocationManagerDelegate]

    XMLVM_VAR_THIZ;
    if(thiz.delegate!= nil) [thiz.delegate release];
    org_xmlvm_ios_CLLocationManagerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_CLLocationManagerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];
    XMLVMUtil_ArrayList_add(reference_array, n1);objc_setAssociatedObject(thiz, &key, jwrapper->nativeDelegateWrapper_, OBJC_ASSOCIATION_RETAIN);
    [jwrapper->nativeDelegateWrapper_ release];
    

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_getLocationServicesEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz locationServicesEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_getPurpose__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz purpose];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_setPurpose___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setPurpose:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_getDistanceFilter__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz distanceFilter];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_setDistanceFilter___double]

    XMLVM_VAR_THIZ;
    [thiz setDistanceFilter:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_getDesiredAccuracy__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz desiredAccuracy];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_setDesiredAccuracy___double]

    XMLVM_VAR_THIZ;
    [thiz setDesiredAccuracy:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_getLocation__]

    XMLVM_VAR_THIZ;
    CLLocation* var0 = [thiz location];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_getHeadingAvailable__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz headingAvailable];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_getHeadingFilter__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz headingFilter];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_setHeadingFilter___double]

    XMLVM_VAR_THIZ;
    [thiz setHeadingFilter:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_getHeadingOrientation__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz headingOrientation];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_setHeadingOrientation___int]

    XMLVM_VAR_THIZ;
    [thiz setHeadingOrientation:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_getHeading__]

    XMLVM_VAR_THIZ;
    CLHeading* var0 = [thiz heading];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_getMaximumRegionMonitoringDistance__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz maximumRegionMonitoringDistance];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_getMonitoredRegions__]

    XMLVM_VAR_THIZ;
    NSSet* var0 = [thiz monitoredRegions];
    
    return fromNSSet(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_startUpdatingLocation__]

    XMLVM_VAR_THIZ;
    [thiz startUpdatingLocation];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_stopUpdatingLocation__]

    XMLVM_VAR_THIZ;
    [thiz stopUpdatingLocation];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_startUpdatingHeading__]

    XMLVM_VAR_THIZ;
    [thiz startUpdatingHeading];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_stopUpdatingHeading__]

    XMLVM_VAR_THIZ;
    [thiz stopUpdatingHeading];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_dismissHeadingCalibrationDisplay__]

    XMLVM_VAR_THIZ;
    [thiz dismissHeadingCalibrationDisplay];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_startMonitoringSignificantLocationChanges__]

    XMLVM_VAR_THIZ;
    [thiz startMonitoringSignificantLocationChanges];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_stopMonitoringSignificantLocationChanges__]

    XMLVM_VAR_THIZ;
    [thiz stopMonitoringSignificantLocationChanges];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_startMonitoringForRegion___org_xmlvm_ios_CLRegion_double]

    XMLVM_VAR_THIZ;
    [thiz  startMonitoringForRegion:(CLRegion*) (((org_xmlvm_ios_CLRegion*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) desiredAccuracy:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationManager_stopMonitoringForRegion___org_xmlvm_ios_CLRegion]

    XMLVM_VAR_THIZ;
    [thiz  stopMonitoringForRegion:(CLRegion*) (((org_xmlvm_ios_CLRegion*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
