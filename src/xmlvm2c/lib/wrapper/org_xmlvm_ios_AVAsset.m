
//XMLVM_BEGIN_IMPLEMENTATION
@interface AVAsset (AVAssetWrapperCategory)
+ (void) initialize_class;
@end

@implementation AVAsset (AVAssetWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AVAsset.classInitialized)
        __INIT_org_xmlvm_ios_AVAsset();
}
@end

void org_xmlvm_ios_AVAsset_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AVAsset class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AVAsset();
        org_xmlvm_ios_AVAsset_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AVAsset]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AVAsset]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset___INIT___]
    AVAsset* var0 = [[AVAsset alloc ] init];
    org_xmlvm_ios_AVAsset_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset___INIT___]

    AVAsset* var0 = [[AVAsset alloc]init];

    org_xmlvm_ios_AVAsset_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_getDuration__]

    XMLVM_VAR_THIZ;
    CMTime var0 = [thiz duration];
    
    return fromCMTime(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_getPreferredRate__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz preferredRate];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_getPreferredVolume__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz preferredVolume];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_getPreferredTransform__]

    XMLVM_VAR_THIZ;
    CGAffineTransform var0 = [thiz preferredTransform];
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_getNaturalSize__]

    XMLVM_VAR_THIZ;
    CGSize var0 = [thiz naturalSize];
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_getProvidesPreciseDurationAndTiming__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz providesPreciseDurationAndTiming];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_cancelLoading__]

    XMLVM_VAR_THIZ;
    [thiz cancelLoading];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_getTracks__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz tracks];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_trackWithTrackID___int]

    XMLVM_VAR_THIZ;
    
    AVAssetTrack* var0 = [thiz  trackWithTrackID:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_tracksWithMediaType___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSArray* var0 = [thiz  tracksWithMediaType:ObjCVar1];
    [ObjCVar1 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_tracksWithMediaCharacteristic___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSArray* var0 = [thiz  tracksWithMediaCharacteristic:ObjCVar1];
    [ObjCVar1 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_getLyrics__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz lyrics];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_getCommonMetadata__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz commonMetadata];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_getAvailableMetadataFormats__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz availableMetadataFormats];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_metadataForFormat___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSArray* var0 = [thiz  metadataForFormat:ObjCVar1];
    [ObjCVar1 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_getAvailableChapterLocales__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz availableChapterLocales];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_chapterMetadataGroupsWithTitleLocale___org_xmlvm_ios_NSLocale_java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar2 = toNSArray(n2);
    
    NSArray* var0 = [thiz  chapterMetadataGroupsWithTitleLocale:(NSLocale*) (((org_xmlvm_ios_NSLocale*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) containingItemsWithCommonKeys:ObjCVar2];
    [ObjCVar2 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_getHasProtectedContent__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz hasProtectedContent];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_isPlayable__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isPlayable];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_isExportable__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isExportable];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_isReadable__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isReadable];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_isComposable__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isComposable];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AVAsset_unusedTrackID__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz unusedTrackID];

    return var0;
//XMLVM_END_WRAPPER
