
//XMLVM_BEGIN_IMPLEMENTATION
@interface CMAttitude (CMAttitudeWrapperCategory)
+ (void) initialize_class;
@end

@implementation CMAttitude (CMAttitudeWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CMAttitude.classInitialized)
        __INIT_org_xmlvm_ios_CMAttitude();
}
@end

void org_xmlvm_ios_CMAttitude_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CMAttitude class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CMAttitude();
        org_xmlvm_ios_CMAttitude_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CMAttitude]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CMAttitude]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAttitude___INIT___]
    CMAttitude* var0 = [[CMAttitude alloc ] init];
    org_xmlvm_ios_CMAttitude_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAttitude___INIT___]

    CMAttitude* var0 = [[CMAttitude alloc]init];

    org_xmlvm_ios_CMAttitude_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAttitude_getRoll__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz roll];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAttitude_getPitch__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz pitch];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAttitude_getYaw__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz yaw];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAttitude_getRotationMatrix__]

    XMLVM_VAR_THIZ;
    CMRotationMatrix var0 = [thiz rotationMatrix];
    
    return fromCMRotationMatrix(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAttitude_getQuaternion__]

    XMLVM_VAR_THIZ;
    CMQuaternion var0 = [thiz quaternion];
    
    return fromCMQuaternion(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAttitude_multiplyByInverseOfAttitude___org_xmlvm_ios_CMAttitude]

    XMLVM_VAR_THIZ;
    [thiz  multiplyByInverseOfAttitude:(CMAttitude*) (((org_xmlvm_ios_CMAttitude*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
