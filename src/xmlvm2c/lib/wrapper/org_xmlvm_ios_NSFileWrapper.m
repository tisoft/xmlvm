
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSFileWrapper (NSFileWrapperWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSFileWrapper (NSFileWrapperWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSFileWrapper.classInitialized)
        __INIT_org_xmlvm_ios_NSFileWrapper();
}
@end

void org_xmlvm_ios_NSFileWrapper_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSFileWrapper class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSFileWrapper();
        org_xmlvm_ios_NSFileWrapper_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSFileWrapper]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSFileWrapper]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper___INIT____org_xmlvm_ios_NSURL_int_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSFileWrapper* var0 = [[NSFileWrapper alloc] initWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n2 error:&var3];
    org_xmlvm_ios_NSFileWrapper_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper___INIT____java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper___INIT____org_xmlvm_ios_NSData_org_xmlvm_ios_NSFileWrapper_ContentType]

    if((org_xmlvm_ios_NSFileWrapper_ContentType*) n2 == org_xmlvm_ios_NSFileWrapper_ContentType_GET_NSData())
    {
    NSFileWrapper* var0 = [[NSFileWrapper alloc] initRegularFileWithContents:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSFileWrapper_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSFileWrapper_ContentType*) n2 == org_xmlvm_ios_NSFileWrapper_ContentType_GET_SerializedRepresentation())
    {
    NSFileWrapper* var0 = [[NSFileWrapper alloc] initWithSerializedRepresentation:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSFileWrapper_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper___INIT____org_xmlvm_ios_NSURL]

    NSFileWrapper* var0 = [[NSFileWrapper alloc] initSymbolicLinkWithDestinationURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSFileWrapper_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper___INIT____java_lang_String_org_xmlvm_ios_NSFileWrapper_FileType]

    if((org_xmlvm_ios_NSFileWrapper_FileType*) n2 == org_xmlvm_ios_NSFileWrapper_FileType_GET_SymbolicLinkWithDestination())
    {NSString * ObjCVar1 = toNSString(n1);
    
    NSFileWrapper* var0 = [[NSFileWrapper alloc] initSymbolicLinkWithDestination:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSFileWrapper_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_NSFileWrapper_FileType*) n2 == org_xmlvm_ios_NSFileWrapper_FileType_GET_Regular())
    {NSString * ObjCVar1 = toNSString(n1);
    
    NSFileWrapper* var0 = [[NSFileWrapper alloc] initWithPath:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSFileWrapper_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper___INIT___]
    NSFileWrapper* var0 = [[NSFileWrapper alloc ] init];
    org_xmlvm_ios_NSFileWrapper_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper___INIT___]

    NSFileWrapper* var0 = [[NSFileWrapper alloc]init];

    org_xmlvm_ios_NSFileWrapper_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_isDirectory__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isDirectory];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_isRegularFile__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isRegularFile];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_isSymbolicLink__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isSymbolicLink];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_setPreferredFilename___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setPreferredFilename:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_preferredFilename__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz preferredFilename];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_setFilename___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setFilename:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_filename__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz filename];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_setFileAttributes___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_fileAttributes__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_matchesContentsOfURL___org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  matchesContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_readFromURL___org_xmlvm_ios_NSURL_int_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    BOOL var0 = [thiz  readFromURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n2 error:&var3];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_writeToURL___org_xmlvm_ios_NSURL_int_org_xmlvm_ios_NSURL_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(NSError, var4, jObject4);
    
    BOOL var0 = [thiz  writeToURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) options:n2 originalContentsURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var4];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_serializedRepresentation__]

    XMLVM_VAR_THIZ;
    
    NSData* var0 = [thiz serializedRepresentation];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_addFileWrapper___org_xmlvm_ios_NSFileWrapper]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  addFileWrapper:(NSFileWrapper*) (((org_xmlvm_ios_NSFileWrapper*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_addRegularFileWithContents___org_xmlvm_ios_NSData_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    
    NSString* var0 = [thiz  addRegularFileWithContents:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) preferredFilename:ObjCVar2];
    [ObjCVar2 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_removeFileWrapper___org_xmlvm_ios_NSFileWrapper]

    XMLVM_VAR_THIZ;
    [thiz  removeFileWrapper:(NSFileWrapper*) (((org_xmlvm_ios_NSFileWrapper*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_fileWrappers__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_keyForFileWrapper___org_xmlvm_ios_NSFileWrapper]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  keyForFileWrapper:(NSFileWrapper*) (((org_xmlvm_ios_NSFileWrapper*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_regularFileContents__]

    XMLVM_VAR_THIZ;
    
    NSData* var0 = [thiz regularFileContents];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_symbolicLinkDestinationURL__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz symbolicLinkDestinationURL];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_needsToBeUpdatedFromPath___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 = [thiz  needsToBeUpdatedFromPath:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_updateFromPath___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 = [thiz  updateFromPath:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_writeToFile___java_lang_String_boolean_boolean]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 = [thiz  writeToFile:ObjCVar1 atomically:n2 updateFilenames:n3];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_addFileWithPath___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 = [thiz  addFileWithPath:ObjCVar1];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_addSymbolicLinkWithDestination___java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSString* var0 = [thiz  addSymbolicLinkWithDestination:ObjCVar1 preferredFilename:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFileWrapper_symbolicLinkDestination__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz symbolicLinkDestination];

    return fromNSString(var0);
//XMLVM_END_WRAPPER
