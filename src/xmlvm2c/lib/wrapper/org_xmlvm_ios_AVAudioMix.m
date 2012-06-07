
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVAudioMix (AVAudioMixWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVAudioMix (AVAudioMixWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVAudioMix.classInitialized)
        __INIT_org_xmlvm_ios_AVAudioMix();
}
@end

void org_xmlvm_ios_AVAudioMix_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVAudioMix class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVAudioMix();
        org_xmlvm_ios_AVAudioMix_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVAudioMix]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVAudioMix]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioMix___INIT___]
    AVAudioMix* var0 = [[AVAudioMix alloc ] init];
    org_xmlvm_ios_AVAudioMix_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioMix___INIT___]

    AVAudioMix* var0 = [[AVAudioMix alloc]init];

    org_xmlvm_ios_AVAudioMix_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAudioMix_getInputParameters__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz inputParameters];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER
