
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVCaptureDeviceInput (AVCaptureDeviceInputWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVCaptureDeviceInput (AVCaptureDeviceInputWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVCaptureDeviceInput.classInitialized)
        __INIT_org_xmlvm_ios_AVCaptureDeviceInput();
}
@end

void org_xmlvm_ios_AVCaptureDeviceInput_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVCaptureInput_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVCaptureDeviceInput class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVCaptureDeviceInput();
        org_xmlvm_ios_AVCaptureDeviceInput_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVCaptureDeviceInput]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVCaptureDeviceInput]
__DELETE_org_xmlvm_ios_AVCaptureInput(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureDeviceInput___INIT____org_xmlvm_ios_AVCaptureDevice_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    AVCaptureDeviceInput* var0 = [[AVCaptureDeviceInput alloc] initWithDevice:(AVCaptureDevice*) (((org_xmlvm_ios_AVCaptureDevice*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var2];
    org_xmlvm_ios_AVCaptureDeviceInput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureDeviceInput___INIT___]
    AVCaptureDeviceInput* var0 = [[AVCaptureDeviceInput alloc ] init];
    org_xmlvm_ios_AVCaptureDeviceInput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureDeviceInput___INIT___]
    AVCaptureDeviceInput* var0 = [[AVCaptureDeviceInput alloc ] init];
    org_xmlvm_ios_AVCaptureDeviceInput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureDeviceInput___INIT___]

    AVCaptureDeviceInput* var0 = [[AVCaptureDeviceInput alloc]init];

    org_xmlvm_ios_AVCaptureDeviceInput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureDeviceInput_deviceInputWithDevice___org_xmlvm_ios_AVCaptureDevice_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    NSObject* var0 =  [AVCaptureDeviceInput  deviceInputWithDevice:(AVCaptureDevice*) (((org_xmlvm_ios_AVCaptureDevice*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureDeviceInput_getDevice__]

    XMLVM_VAR_THIZ;
    AVCaptureDevice* var0 = [thiz device];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
