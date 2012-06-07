
//XMLVM_BEGIN_IMPLEMENTATION
@interface MPMediaItemArtwork (MPMediaItemArtworkWrapperCategory)
+ (void) initialize_class;
@end

@implementation MPMediaItemArtwork (MPMediaItemArtworkWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MPMediaItemArtwork.classInitialized)
        __INIT_org_xmlvm_ios_MPMediaItemArtwork();
}
@end

void org_xmlvm_ios_MPMediaItemArtwork_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MPMediaItemArtwork class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MPMediaItemArtwork();
        org_xmlvm_ios_MPMediaItemArtwork_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MPMediaItemArtwork]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MPMediaItemArtwork]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItemArtwork___INIT___]
    MPMediaItemArtwork* var0 = [[MPMediaItemArtwork alloc ] init];
    org_xmlvm_ios_MPMediaItemArtwork_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItemArtwork___INIT___]

    MPMediaItemArtwork* var0 = [[MPMediaItemArtwork alloc]init];

    org_xmlvm_ios_MPMediaItemArtwork_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItemArtwork_imageWithSize___org_xmlvm_ios_CGSize]

    XMLVM_VAR_THIZ;
    
    UIImage* var0 = [thiz  imageWithSize:toCGSize(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItemArtwork_getBounds__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz bounds];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaItemArtwork_getImageCropRect__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz imageCropRect];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER
