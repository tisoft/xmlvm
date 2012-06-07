
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVCaptureOutput (AVCaptureOutputWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVCaptureOutput (AVCaptureOutputWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVCaptureOutput.classInitialized)
        __INIT_org_xmlvm_ios_AVCaptureOutput();
}
@end

void org_xmlvm_ios_AVCaptureOutput_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVCaptureOutput class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVCaptureOutput();
        org_xmlvm_ios_AVCaptureOutput_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVCaptureOutput]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVCaptureOutput]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureOutput___INIT___]
    AVCaptureOutput* var0 = [[AVCaptureOutput alloc ] init];
    org_xmlvm_ios_AVCaptureOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureOutput___INIT___]

    AVCaptureOutput* var0 = [[AVCaptureOutput alloc]init];

    org_xmlvm_ios_AVCaptureOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureOutput_getConnections__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz connections];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER
