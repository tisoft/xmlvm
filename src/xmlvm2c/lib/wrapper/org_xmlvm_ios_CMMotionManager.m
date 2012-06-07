
//XMLVM_BEGIN_IMPLEMENTATION
@interface CMMotionManager (CMMotionManagerWrapperCategory)
+ (void) initialize_class;
@end

@implementation CMMotionManager (CMMotionManagerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CMMotionManager.classInitialized)
        __INIT_org_xmlvm_ios_CMMotionManager();
}
@end

void org_xmlvm_ios_CMMotionManager_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CMMotionManager class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CMMotionManager();
        org_xmlvm_ios_CMMotionManager_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CMMotionManager]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CMMotionManager]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager___INIT___]
    CMMotionManager* var0 = [[CMMotionManager alloc ] init];
    org_xmlvm_ios_CMMotionManager_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager___INIT___]

    CMMotionManager* var0 = [[CMMotionManager alloc]init];

    org_xmlvm_ios_CMMotionManager_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_getAccelerometerUpdateInterval__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz accelerometerUpdateInterval];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_setAccelerometerUpdateInterval___double]

    XMLVM_VAR_THIZ;
    [thiz setAccelerometerUpdateInterval:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_isAccelerometerAvailable__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isAccelerometerAvailable];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_isAccelerometerActive__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isAccelerometerActive];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_getAccelerometerData__]

    XMLVM_VAR_THIZ;
    CMAccelerometerData* var0 = [thiz accelerometerData];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_startAccelerometerUpdates__]

    XMLVM_VAR_THIZ;
    [thiz startAccelerometerUpdates];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_startAccelerometerUpdatesToQueue___org_xmlvm_ios_NSOperationQueue_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  startAccelerometerUpdatesToQueue:(NSOperationQueue*) (((org_xmlvm_ios_NSOperationQueue*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) withHandler:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_stopAccelerometerUpdates__]

    XMLVM_VAR_THIZ;
    [thiz stopAccelerometerUpdates];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_getGyroUpdateInterval__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz gyroUpdateInterval];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_setGyroUpdateInterval___double]

    XMLVM_VAR_THIZ;
    [thiz setGyroUpdateInterval:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_isGyroAvailable__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isGyroAvailable];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_isGyroActive__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isGyroActive];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_getGyroData__]

    XMLVM_VAR_THIZ;
    CMGyroData* var0 = [thiz gyroData];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_startGyroUpdates__]

    XMLVM_VAR_THIZ;
    [thiz startGyroUpdates];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_startGyroUpdatesToQueue___org_xmlvm_ios_NSOperationQueue_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  startGyroUpdatesToQueue:(NSOperationQueue*) (((org_xmlvm_ios_NSOperationQueue*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) withHandler:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_stopGyroUpdates__]

    XMLVM_VAR_THIZ;
    [thiz stopGyroUpdates];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_getDeviceMotionUpdateInterval__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz deviceMotionUpdateInterval];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_setDeviceMotionUpdateInterval___double]

    XMLVM_VAR_THIZ;
    [thiz setDeviceMotionUpdateInterval:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_isDeviceMotionAvailable__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isDeviceMotionAvailable];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_isDeviceMotionActive__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isDeviceMotionActive];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_getDeviceMotion__]

    XMLVM_VAR_THIZ;
    CMDeviceMotion* var0 = [thiz deviceMotion];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_startDeviceMotionUpdates__]

    XMLVM_VAR_THIZ;
    [thiz startDeviceMotionUpdates];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_startDeviceMotionUpdatesToQueue___org_xmlvm_ios_NSOperationQueue_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  startDeviceMotionUpdatesToQueue:(NSOperationQueue*) (((org_xmlvm_ios_NSOperationQueue*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) withHandler:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMotionManager_stopDeviceMotionUpdates__]

    XMLVM_VAR_THIZ;
    [thiz stopDeviceMotionUpdates];

    
//XMLVM_END_WRAPPER
