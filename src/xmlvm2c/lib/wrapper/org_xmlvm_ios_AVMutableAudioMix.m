
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVMutableAudioMix (AVMutableAudioMixWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVMutableAudioMix (AVMutableAudioMixWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVMutableAudioMix.classInitialized)
        __INIT_org_xmlvm_ios_AVMutableAudioMix();
}
@end

void org_xmlvm_ios_AVMutableAudioMix_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVAudioMix_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVMutableAudioMix class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVMutableAudioMix();
        org_xmlvm_ios_AVMutableAudioMix_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVMutableAudioMix]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVMutableAudioMix]
__DELETE_org_xmlvm_ios_AVAudioMix(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableAudioMix___INIT___]
    AVMutableAudioMix* var0 = [[AVMutableAudioMix alloc ] init];
    org_xmlvm_ios_AVMutableAudioMix_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableAudioMix___INIT___]
    AVMutableAudioMix* var0 = [[AVMutableAudioMix alloc ] init];
    org_xmlvm_ios_AVMutableAudioMix_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableAudioMix___INIT___]

    AVMutableAudioMix* var0 = [[AVMutableAudioMix alloc]init];

    org_xmlvm_ios_AVMutableAudioMix_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableAudioMix_audioMix__]

    AVMutableAudioMix* var0 =  [AVMutableAudioMix audioMix];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableAudioMix_getInputParameters__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz inputParameters];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableAudioMix_setInputParameters___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setInputParameters:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
