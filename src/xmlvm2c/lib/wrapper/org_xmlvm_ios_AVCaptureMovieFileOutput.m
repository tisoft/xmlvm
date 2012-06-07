
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVCaptureMovieFileOutput (AVCaptureMovieFileOutputWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVCaptureMovieFileOutput (AVCaptureMovieFileOutputWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVCaptureMovieFileOutput.classInitialized)
        __INIT_org_xmlvm_ios_AVCaptureMovieFileOutput();
}
@end

void org_xmlvm_ios_AVCaptureMovieFileOutput_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVCaptureFileOutput_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVCaptureMovieFileOutput class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVCaptureMovieFileOutput();
        org_xmlvm_ios_AVCaptureMovieFileOutput_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVCaptureMovieFileOutput]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVCaptureMovieFileOutput]
__DELETE_org_xmlvm_ios_AVCaptureFileOutput(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureMovieFileOutput___INIT___]
    AVCaptureMovieFileOutput* var0 = [[AVCaptureMovieFileOutput alloc ] init];
    org_xmlvm_ios_AVCaptureMovieFileOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureMovieFileOutput___INIT___]
    AVCaptureMovieFileOutput* var0 = [[AVCaptureMovieFileOutput alloc ] init];
    org_xmlvm_ios_AVCaptureMovieFileOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureMovieFileOutput___INIT___]
    AVCaptureMovieFileOutput* var0 = [[AVCaptureMovieFileOutput alloc ] init];
    org_xmlvm_ios_AVCaptureMovieFileOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureMovieFileOutput___INIT___]

    AVCaptureMovieFileOutput* var0 = [[AVCaptureMovieFileOutput alloc]init];

    org_xmlvm_ios_AVCaptureMovieFileOutput_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureMovieFileOutput_getMovieFragmentInterval__]

    XMLVM_VAR_THIZ;
    CMTime var0 = [thiz movieFragmentInterval];
    
    return fromCMTime(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureMovieFileOutput_setMovieFragmentInterval___org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    [thiz setMovieFragmentInterval:toCMTime(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureMovieFileOutput_getMetadata__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz metadata];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVCaptureMovieFileOutput_setMetadata___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setMetadata:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
