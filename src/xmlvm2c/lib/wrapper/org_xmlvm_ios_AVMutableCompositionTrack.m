
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVMutableCompositionTrack (AVMutableCompositionTrackWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVMutableCompositionTrack (AVMutableCompositionTrackWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVMutableCompositionTrack.classInitialized)
        __INIT_org_xmlvm_ios_AVMutableCompositionTrack();
}
@end

void org_xmlvm_ios_AVMutableCompositionTrack_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_AVCompositionTrack_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVMutableCompositionTrack class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVMutableCompositionTrack();
        org_xmlvm_ios_AVMutableCompositionTrack_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVMutableCompositionTrack]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVMutableCompositionTrack]
__DELETE_org_xmlvm_ios_AVCompositionTrack(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack___INIT___]
    AVMutableCompositionTrack* var0 = [[AVMutableCompositionTrack alloc ] init];
    org_xmlvm_ios_AVMutableCompositionTrack_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack___INIT___]
    AVMutableCompositionTrack* var0 = [[AVMutableCompositionTrack alloc ] init];
    org_xmlvm_ios_AVMutableCompositionTrack_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack___INIT___]
    AVMutableCompositionTrack* var0 = [[AVMutableCompositionTrack alloc ] init];
    org_xmlvm_ios_AVMutableCompositionTrack_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack___INIT___]

    AVMutableCompositionTrack* var0 = [[AVMutableCompositionTrack alloc]init];

    org_xmlvm_ios_AVMutableCompositionTrack_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_getNaturalTimeScale__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz naturalTimeScale];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_setNaturalTimeScale___int]

    XMLVM_VAR_THIZ;
    [thiz setNaturalTimeScale:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_getLanguageCode__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz languageCode];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_setLanguageCode___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setLanguageCode:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_getExtendedLanguageTag__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz extendedLanguageTag];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_setExtendedLanguageTag___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setExtendedLanguageTag:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_getPreferredTransform__]

    XMLVM_VAR_THIZ;
    CGAffineTransform var0 = [thiz preferredTransform];
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_setPreferredTransform___org_xmlvm_ios_CGAffineTransform]

    XMLVM_VAR_THIZ;
    [thiz setPreferredTransform:toCGAffineTransform(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_getPreferredVolume__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz preferredVolume];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_setPreferredVolume___float]

    XMLVM_VAR_THIZ;
    [thiz setPreferredVolume:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_getSegments__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz segments];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_setSegments___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setSegments:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_insertTimeRange___org_xmlvm_ios_CMTimeRange_org_xmlvm_ios_AVAssetTrack_org_xmlvm_ios_CMTime_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(NSError, var4, jObject4);
    
    BOOL var0 = [thiz  insertTimeRange:toCMTimeRange(n1) ofTrack:(AVAssetTrack*) (((org_xmlvm_ios_AVAssetTrack*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) atTime:toCMTime(n3) error:&var4];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_insertEmptyTimeRange___org_xmlvm_ios_CMTimeRange]

    XMLVM_VAR_THIZ;
    [thiz  insertEmptyTimeRange:toCMTimeRange(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_removeTimeRange___org_xmlvm_ios_CMTimeRange]

    XMLVM_VAR_THIZ;
    [thiz  removeTimeRange:toCMTimeRange(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_scaleTimeRange___org_xmlvm_ios_CMTimeRange_org_xmlvm_ios_CMTime]

    XMLVM_VAR_THIZ;
    [thiz  scaleTimeRange:toCMTimeRange(n1) toDuration:toCMTime(n2)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVMutableCompositionTrack_validateTrackSegments___java_util_List_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    BOOL var0 = [thiz  validateTrackSegments:ObjCVar1 error:&var2];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER
