
//XMLVM_BEGIN_IMPLEMENTATION
@interface CMAccelerometerData (CMAccelerometerDataWrapperCategory)
+ (void) initialize_class;
@end

@implementation CMAccelerometerData (CMAccelerometerDataWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CMAccelerometerData.classInitialized)
        __INIT_org_xmlvm_ios_CMAccelerometerData();
}
@end

void org_xmlvm_ios_CMAccelerometerData_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CMLogItem_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CMAccelerometerData class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CMAccelerometerData();
        org_xmlvm_ios_CMAccelerometerData_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CMAccelerometerData]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CMAccelerometerData]
__DELETE_org_xmlvm_ios_CMLogItem(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAccelerometerData___INIT___]
    CMAccelerometerData* var0 = [[CMAccelerometerData alloc ] init];
    org_xmlvm_ios_CMAccelerometerData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAccelerometerData___INIT___]
    CMAccelerometerData* var0 = [[CMAccelerometerData alloc ] init];
    org_xmlvm_ios_CMAccelerometerData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAccelerometerData___INIT___]

    CMAccelerometerData* var0 = [[CMAccelerometerData alloc]init];

    org_xmlvm_ios_CMAccelerometerData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAccelerometerData_getAcceleration__]

    XMLVM_VAR_THIZ;
    CMAcceleration var0 = [thiz acceleration];
    
    return fromCMAcceleration(var0);
//XMLVM_END_WRAPPER
