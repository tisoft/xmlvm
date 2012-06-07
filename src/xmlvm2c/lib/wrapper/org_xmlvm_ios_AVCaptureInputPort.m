
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVCaptureInputPort (AVCaptureInputPortWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVCaptureInputPort (AVCaptureInputPortWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVCaptureInputPort.classInitialized)
        __INIT_org_xmlvm_ios_AVCaptureInputPort();
}
@end

void org_xmlvm_ios_AVCaptureInputPort_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVCaptureInputPort class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVCaptureInputPort();
        org_xmlvm_ios_AVCaptureInputPort_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVCaptureInputPort]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVCaptureInputPort]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureInputPort___INIT___]
    AVCaptureInputPort* var0 = [[AVCaptureInputPort alloc ] init];
    org_xmlvm_ios_AVCaptureInputPort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureInputPort___INIT___]

    AVCaptureInputPort* var0 = [[AVCaptureInputPort alloc]init];

    org_xmlvm_ios_AVCaptureInputPort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureInputPort_getInput__]

    XMLVM_VAR_THIZ;
    AVCaptureInput* var0 = [thiz input];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureInputPort_getMediaType__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz mediaType];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureInputPort_getFormatDescription__]

    XMLVM_VAR_THIZ;
    CMFormatDescription* var0 = [thiz formatDescription];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureInputPort_isEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureInputPort_setEnabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setEnabled:n1];

    
//XMLVM_END_WRAPPER
