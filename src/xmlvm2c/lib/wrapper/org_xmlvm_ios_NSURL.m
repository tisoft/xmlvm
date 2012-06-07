
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSURL (NSURLWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSURL (NSURLWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSURL.classInitialized)
        __INIT_org_xmlvm_ios_NSURL();
}
@end

void org_xmlvm_ios_NSURL_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSURL class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSURL();
        org_xmlvm_ios_NSURL_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSURL]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSURL]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL___INIT____java_lang_String_java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    NSURL* var0 = [[NSURL alloc] initWithScheme:ObjCVar1 host:ObjCVar2 path:ObjCVar3];
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];

    org_xmlvm_ios_NSURL_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL___INIT____java_lang_String_boolean]
NSString * ObjCVar1 = toNSString(n1);
    
    NSURL* var0 = [[NSURL alloc] initFileURLWithPath:ObjCVar1 isDirectory:n2];
    [ObjCVar1 release];

    org_xmlvm_ios_NSURL_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL___INIT____java_lang_String_org_xmlvm_ios_NSURL_URLType]

    if((org_xmlvm_ios_NSURL_URLType*) n2 == org_xmlvm_ios_NSURL_URLType_GET_Any())
    {NSString * ObjCVar1 = toNSString(n1);
    
    NSURL* var0 = [[NSURL alloc] initWithString:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSURL_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSURL_URLType*) n2 == org_xmlvm_ios_NSURL_URLType_GET_FileURL())
    {NSString * ObjCVar1 = toNSString(n1);
    
    NSURL* var0 = [[NSURL alloc] initFileURLWithPath:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSURL_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL___INIT____java_lang_String_org_xmlvm_ios_NSURL]
NSString * ObjCVar1 = toNSString(n1);
    
    NSURL* var0 = [[NSURL alloc] initWithString:ObjCVar1 relativeToURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_NSURL_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL___INIT____org_xmlvm_ios_NSData_int_org_xmlvm_ios_NSURL_boolean_1ARRAY_org_xmlvm_ios_Reference]
XMLVM_VAR_BOOLEAN_ARRAY(a4, n4); 
    JAVA_OBJECT jObject5 = org_xmlvm_ios_Reference_get__(n5);
    XMLVM_VAR_IOS(NSError, var5, jObject5);
    
    NSURL* var0 = [[NSURL alloc] initByResolvingBookmarkData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n2 relativeToURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) bookmarkDataIsStale:a4->fields.org_xmlvm_runtime_XMLVMArray.array_ error:&var5];
    org_xmlvm_ios_NSURL_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL___INIT___]
    NSURL* var0 = [[NSURL alloc ] init];
    org_xmlvm_ios_NSURL_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL___INIT___]

    NSURL* var0 = [[NSURL alloc]init];

    org_xmlvm_ios_NSURL_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_fileURLWithPath___java_lang_String_boolean]
NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 =  [NSURL  fileURLWithPath:ObjCVar1 isDirectory:n2];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_fileURLWithPath___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 =  [NSURL  fileURLWithPath:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_URLWithString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSURL* var0 =  [NSURL  URLWithString:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_URLWithString___java_lang_String_org_xmlvm_ios_NSURL]
NSString * ObjCVar1 = toNSString(n1);
    
    NSURL* var0 =  [NSURL  URLWithString:ObjCVar1 relativeToURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_absoluteString__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz absoluteString];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_relativeString__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz relativeString];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_baseURL__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz baseURL];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_absoluteURL__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz absoluteURL];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_scheme__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz scheme];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_resourceSpecifier__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz resourceSpecifier];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_host__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz host];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_port__]

    XMLVM_VAR_THIZ;
    
    NSNumber* var0 = [thiz port];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_user__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz user];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_password__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz password];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_path__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz path];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_fragment__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz fragment];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_parameterString__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz parameterString];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_query__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz query];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_relativePath__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz relativePath];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_isFileURL__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isFileURL];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_standardizedURL__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz standardizedURL];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_getResourceValue___Object_1ARRAY_java_lang_String_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_OBJECT_ARRAY(a1, n1); 
    NSString * ObjCVar2 = toNSString(n2);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    BOOL var0 = [thiz  getResourceValue:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ forKey:ObjCVar2 error:&var3];
    [ObjCVar2 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_resourceValuesForKeys___java_util_List_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_setResourceValue___java_lang_Object_java_lang_String_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    BOOL var0 = [thiz  setResourceValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKey:ObjCVar2 error:&var3];
    [ObjCVar2 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_setResourceValues___java_util_Map_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_checkResourceIsReachableAndReturnError___org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    XMLVM_VAR_IOS(NSError, var1, jObject1);
    
    BOOL var0 = [thiz  checkResourceIsReachableAndReturnError:&var1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_isFileReferenceURL__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isFileReferenceURL];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_fileReferenceURL__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz fileReferenceURL];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_filePathURL__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz filePathURL];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_bookmarkDataWithOptions___int_java_util_List_org_xmlvm_ios_NSURL_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar2 = toNSArray(n2);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(NSError, var4, jObject4);
    
    NSData* var0 = [thiz  bookmarkDataWithOptions:n1 includingResourceValuesForKeys:ObjCVar2 relativeToURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var4];
    [ObjCVar2 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_URLByResolvingBookmarkData___org_xmlvm_ios_NSData_int_org_xmlvm_ios_NSURL_boolean_1ARRAY_org_xmlvm_ios_Reference]
XMLVM_VAR_BOOLEAN_ARRAY(a4, n4); 
    JAVA_OBJECT jObject5 = org_xmlvm_ios_Reference_get__(n5);
    XMLVM_VAR_IOS(NSError, var5, jObject5);
    
    NSURL* var0 =  [NSURL  URLByResolvingBookmarkData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n2 relativeToURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) bookmarkDataIsStale:a4->fields.org_xmlvm_runtime_XMLVMArray.array_ error:&var5];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_resourceValuesForKeys___java_util_List_org_xmlvm_ios_NSData]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_writeBookmarkData___org_xmlvm_ios_NSData_org_xmlvm_ios_NSURL_int_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(NSError, var4, jObject4);
    
    BOOL var0 =  [NSURL  writeBookmarkData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) toURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n3 error:&var4];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_bookmarkDataWithContentsOfURL___org_xmlvm_ios_NSURL_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    NSData* var0 =  [NSURL  bookmarkDataWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_resourceDataUsingCache___boolean]

    XMLVM_VAR_THIZ;
    
    NSData* var0 = [thiz  resourceDataUsingCache:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_loadResourceDataNotifyingClient___java_lang_Object_boolean]

    XMLVM_VAR_THIZ;
    [thiz  loadResourceDataNotifyingClient:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj usingCache:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_propertyForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 = [thiz  propertyForKey:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_setResourceData___org_xmlvm_ios_NSData]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  setResourceData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_setProperty___java_lang_Object_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    
    BOOL var0 = [thiz  setProperty:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKey:ObjCVar2];
    [ObjCVar2 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_URLHandleUsingCache___boolean]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_fileURLWithPathComponents___java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    NSURL* var0 =  [NSURL  fileURLWithPathComponents:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_pathComponents__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz pathComponents];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_lastPathComponent__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz lastPathComponent];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_pathExtension__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz pathExtension];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_URLByAppendingPathComponent___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSURL* var0 = [thiz  URLByAppendingPathComponent:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_URLByDeletingLastPathComponent__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz URLByDeletingLastPathComponent];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_URLByAppendingPathExtension___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSURL* var0 = [thiz  URLByAppendingPathExtension:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_URLByDeletingPathExtension__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz URLByDeletingPathExtension];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_URLByStandardizingPath__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz URLByStandardizingPath];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_URLByResolvingSymlinksInPath__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz URLByResolvingSymlinksInPath];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_getPreviewItemURL__]

    XMLVM_VAR_THIZ;
    NSURL* var0 = [thiz previewItemURL];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSURL_getPreviewItemTitle__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz previewItemTitle];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER
