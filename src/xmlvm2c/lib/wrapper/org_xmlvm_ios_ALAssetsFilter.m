
//XMLVM_BEGIN_IMPLEMENTATION
@interface ALAssetsFilter (ALAssetsFilterWrapperCategory)
+ (void) initialize_class;
@end

@implementation ALAssetsFilter (ALAssetsFilterWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_ALAssetsFilter.classInitialized)
        __INIT_org_xmlvm_ios_ALAssetsFilter();
}
@end

void org_xmlvm_ios_ALAssetsFilter_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [ALAssetsFilter class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_ALAssetsFilter();
        org_xmlvm_ios_ALAssetsFilter_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_ALAssetsFilter]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_ALAssetsFilter]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsFilter___INIT___]
    ALAssetsFilter* var0 = [[ALAssetsFilter alloc ] init];
    org_xmlvm_ios_ALAssetsFilter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsFilter___INIT___]

    ALAssetsFilter* var0 = [[ALAssetsFilter alloc]init];

    org_xmlvm_ios_ALAssetsFilter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsFilter_allPhotos__]

    ALAssetsFilter* var0 =  [ALAssetsFilter allPhotos];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsFilter_allVideos__]

    ALAssetsFilter* var0 =  [ALAssetsFilter allVideos];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ALAssetsFilter_allAssets__]

    ALAssetsFilter* var0 =  [ALAssetsFilter allAssets];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
