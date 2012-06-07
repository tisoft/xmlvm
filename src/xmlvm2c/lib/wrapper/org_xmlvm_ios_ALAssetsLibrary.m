
//XMLVM_BEGIN_IMPLEMENTATION
@interface ALAssetsLibrary (ALAssetsLibraryWrapperCategory)
+ (void) initialize_class;
@end

@implementation ALAssetsLibrary (ALAssetsLibraryWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_ALAssetsLibrary.classInitialized)
        __INIT_org_xmlvm_ios_ALAssetsLibrary();
}
@end

void org_xmlvm_ios_ALAssetsLibrary_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [ALAssetsLibrary class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_ALAssetsLibrary();
        org_xmlvm_ios_ALAssetsLibrary_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_ALAssetsLibrary]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_ALAssetsLibrary]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsLibrary___INIT___]
    ALAssetsLibrary* var0 = [[ALAssetsLibrary alloc ] init];
    org_xmlvm_ios_ALAssetsLibrary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsLibrary___INIT___]

    ALAssetsLibrary* var0 = [[ALAssetsLibrary alloc]init];

    org_xmlvm_ios_ALAssetsLibrary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsLibrary_enumerateGroupsWithTypes___int_java_lang_Object_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  enumerateGroupsWithTypes:n1 usingBlock:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj failureBlock:((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsLibrary_assetForURL___org_xmlvm_ios_NSURL_java_lang_Object_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  assetForURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) resultBlock:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj failureBlock:((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsLibrary_writeImageToSavedPhotosAlbum___org_xmlvm_ios_CGImage_int_java_lang_Object]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGImage, var1, n1);
    [thiz  writeImageToSavedPhotosAlbum:var1 orientation:n2 completionBlock:((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsLibrary_writeImageToSavedPhotosAlbum___org_xmlvm_ios_CGImage_java_util_Map_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsLibrary_writeImageDataToSavedPhotosAlbum___org_xmlvm_ios_NSData_java_util_Map_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsLibrary_writeVideoAtPathToSavedPhotosAlbum___org_xmlvm_ios_NSURL_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  writeVideoAtPathToSavedPhotosAlbum:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) completionBlock:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsLibrary_videoAtPathIsCompatibleWithSavedPhotosAlbum___org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  videoAtPathIsCompatibleWithSavedPhotosAlbum:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER
