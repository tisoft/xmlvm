
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVCaptureSession (AVCaptureSessionWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVCaptureSession (AVCaptureSessionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVCaptureSession.classInitialized)
        __INIT_org_xmlvm_ios_AVCaptureSession();
}
@end

void org_xmlvm_ios_AVCaptureSession_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVCaptureSession class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVCaptureSession();
        org_xmlvm_ios_AVCaptureSession_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVCaptureSession]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVCaptureSession]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession___INIT___]
    AVCaptureSession* var0 = [[AVCaptureSession alloc ] init];
    org_xmlvm_ios_AVCaptureSession_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession___INIT___]

    AVCaptureSession* var0 = [[AVCaptureSession alloc]init];

    org_xmlvm_ios_AVCaptureSession_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_canSetSessionPreset___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 = [thiz  canSetSessionPreset:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_getSessionPreset__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz sessionPreset];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_setSessionPreset___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setSessionPreset:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_getInputs__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz inputs];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_canAddInput___org_xmlvm_ios_AVCaptureInput]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  canAddInput:(AVCaptureInput*) (((org_xmlvm_ios_AVCaptureInput*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_addInput___org_xmlvm_ios_AVCaptureInput]

    XMLVM_VAR_THIZ;
    [thiz  addInput:(AVCaptureInput*) (((org_xmlvm_ios_AVCaptureInput*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_removeInput___org_xmlvm_ios_AVCaptureInput]

    XMLVM_VAR_THIZ;
    [thiz  removeInput:(AVCaptureInput*) (((org_xmlvm_ios_AVCaptureInput*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_getOutputs__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz outputs];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_canAddOutput___org_xmlvm_ios_AVCaptureOutput]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  canAddOutput:(AVCaptureOutput*) (((org_xmlvm_ios_AVCaptureOutput*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_addOutput___org_xmlvm_ios_AVCaptureOutput]

    XMLVM_VAR_THIZ;
    [thiz  addOutput:(AVCaptureOutput*) (((org_xmlvm_ios_AVCaptureOutput*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_removeOutput___org_xmlvm_ios_AVCaptureOutput]

    XMLVM_VAR_THIZ;
    [thiz  removeOutput:(AVCaptureOutput*) (((org_xmlvm_ios_AVCaptureOutput*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_beginConfiguration__]

    XMLVM_VAR_THIZ;
    [thiz beginConfiguration];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_commitConfiguration__]

    XMLVM_VAR_THIZ;
    [thiz commitConfiguration];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_isRunning__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isRunning];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_isInterrupted__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isInterrupted];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_startRunning__]

    XMLVM_VAR_THIZ;
    [thiz startRunning];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureSession_stopRunning__]

    XMLVM_VAR_THIZ;
    [thiz stopRunning];

    
//XMLVM_END_WRAPPER
