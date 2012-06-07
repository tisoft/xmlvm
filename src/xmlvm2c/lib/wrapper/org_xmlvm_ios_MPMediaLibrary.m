
//XMLVM_BEGIN_IMPLEMENTATION
@interface MPMediaLibrary (MPMediaLibraryWrapperCategory)
+ (void) initialize_class;
@end

@implementation MPMediaLibrary (MPMediaLibraryWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MPMediaLibrary.classInitialized)
        __INIT_org_xmlvm_ios_MPMediaLibrary();
}
@end

void org_xmlvm_ios_MPMediaLibrary_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MPMediaLibrary class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MPMediaLibrary();
        org_xmlvm_ios_MPMediaLibrary_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MPMediaLibrary]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MPMediaLibrary]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaLibrary___INIT___]
    MPMediaLibrary* var0 = [[MPMediaLibrary alloc ] init];
    org_xmlvm_ios_MPMediaLibrary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaLibrary___INIT___]

    MPMediaLibrary* var0 = [[MPMediaLibrary alloc]init];

    org_xmlvm_ios_MPMediaLibrary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaLibrary_defaultMediaLibrary__]

    MPMediaLibrary* var0 =  [MPMediaLibrary defaultMediaLibrary];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaLibrary_getLastModifiedDate__]

    XMLVM_VAR_THIZ;
    NSDate* var0 = [thiz lastModifiedDate];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaLibrary_beginGeneratingLibraryChangeNotifications__]

    XMLVM_VAR_THIZ;
    [thiz beginGeneratingLibraryChangeNotifications];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaLibrary_endGeneratingLibraryChangeNotifications__]

    XMLVM_VAR_THIZ;
    [thiz endGeneratingLibraryChangeNotifications];

    
//XMLVM_END_WRAPPER
