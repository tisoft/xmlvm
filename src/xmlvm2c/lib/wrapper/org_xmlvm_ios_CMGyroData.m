
//XMLVM_BEGIN_IMPLEMENTATION
@interface CMGyroData (CMGyroDataWrapperCategory)
+ (void) initialize_class;
@end

@implementation CMGyroData (CMGyroDataWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CMGyroData.classInitialized)
        __INIT_org_xmlvm_ios_CMGyroData();
}
@end

void org_xmlvm_ios_CMGyroData_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CMLogItem_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CMGyroData class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CMGyroData();
        org_xmlvm_ios_CMGyroData_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CMGyroData]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CMGyroData]
__DELETE_org_xmlvm_ios_CMLogItem(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMGyroData___INIT___]
    CMGyroData* var0 = [[CMGyroData alloc ] init];
    org_xmlvm_ios_CMGyroData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMGyroData___INIT___]
    CMGyroData* var0 = [[CMGyroData alloc ] init];
    org_xmlvm_ios_CMGyroData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMGyroData___INIT___]

    CMGyroData* var0 = [[CMGyroData alloc]init];

    org_xmlvm_ios_CMGyroData_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMGyroData_getRotationRate__]

    XMLVM_VAR_THIZ;
    CMRotationRate var0 = [thiz rotationRate];
    
    return fromCMRotationRate(var0);
//XMLVM_END_WRAPPER
