
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIDevice (UIDeviceWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIDevice (UIDeviceWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIDevice.classInitialized)
        __INIT_org_xmlvm_ios_UIDevice();
}
@end

void org_xmlvm_ios_UIDevice_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIDevice class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIDevice();
        org_xmlvm_ios_UIDevice_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIDevice]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIDevice]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice___INIT___]
    UIDevice* var0 = [[UIDevice alloc ] init];
    org_xmlvm_ios_UIDevice_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice___INIT___]

    UIDevice* var0 = [[UIDevice alloc]init];

    org_xmlvm_ios_UIDevice_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_currentDevice__]

    UIDevice* var0 =  [UIDevice currentDevice];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_getName__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz name];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_getModel__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz model];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_getLocalizedModel__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz localizedModel];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_getSystemName__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz systemName];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_getSystemVersion__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz systemVersion];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_getOrientation__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz orientation];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_getUniqueIdentifier__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz uniqueIdentifier];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_isGeneratingDeviceOrientationNotifications__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isGeneratingDeviceOrientationNotifications];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_beginGeneratingDeviceOrientationNotifications__]

    XMLVM_VAR_THIZ;
    [thiz beginGeneratingDeviceOrientationNotifications];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_endGeneratingDeviceOrientationNotifications__]

    XMLVM_VAR_THIZ;
    [thiz endGeneratingDeviceOrientationNotifications];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_isBatteryMonitoringEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isBatteryMonitoringEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_setBatteryMonitoringEnabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setBatteryMonitoringEnabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_getBatteryState__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz batteryState];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_getBatteryLevel__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz batteryLevel];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_isProximityMonitoringEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isProximityMonitoringEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_setProximityMonitoringEnabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setProximityMonitoringEnabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_getProximityState__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz proximityState];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_isMultitaskingSupported__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isMultitaskingSupported];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_getUserInterfaceIdiom__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz userInterfaceIdiom];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIDevice_playInputClick__]

    XMLVM_VAR_THIZ;
    [thiz playInputClick];

    
//XMLVM_END_WRAPPER
