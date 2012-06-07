
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVCaptureInput (AVCaptureInputWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVCaptureInput (AVCaptureInputWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVCaptureInput.classInitialized)
        __INIT_org_xmlvm_ios_AVCaptureInput();
}
@end

void org_xmlvm_ios_AVCaptureInput_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVCaptureInput class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVCaptureInput();
        org_xmlvm_ios_AVCaptureInput_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVCaptureInput]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVCaptureInput]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureInput___INIT___]
    AVCaptureInput* var0 = [[AVCaptureInput alloc ] init];
    org_xmlvm_ios_AVCaptureInput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureInput___INIT___]

    AVCaptureInput* var0 = [[AVCaptureInput alloc]init];

    org_xmlvm_ios_AVCaptureInput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureInput_getPorts__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz ports];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER
