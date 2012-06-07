
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSDictionary (NSDictionaryWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSDictionary (NSDictionaryWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSDictionary.classInitialized)
        __INIT_org_xmlvm_ios_NSDictionary();
}
@end

void org_xmlvm_ios_NSDictionary_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSDictionary class] || ([NSStringFromClass([obj class]) isEqual:@"__NSCFDictionary"])) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSDictionary();
        org_xmlvm_ios_NSDictionary_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSDictionary]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSDictionary]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary___INIT____Object_1ARRAY_Object_1ARRAY_int]
XMLVM_VAR_OBJECT_ARRAY(a1, n1); 
    XMLVM_VAR_OBJECT_ARRAY(a2, n2); 
    
    NSDictionary* var0 = [[NSDictionary alloc] initWithObjects:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ forKeys:a2->fields.org_xmlvm_runtime_XMLVMArray.array_ count:n3];
    org_xmlvm_ios_NSDictionary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary___INIT____org_xmlvm_ios_Object...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary___INIT____java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary___INIT____java_util_Map_boolean]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary___INIT____java_util_List_java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    NSArray * ObjCVar2 = toNSArray(n2);
    
    NSDictionary* var0 = [[NSDictionary alloc] initWithObjects:ObjCVar1 forKeys:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];

    org_xmlvm_ios_NSDictionary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary___INIT____java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSDictionary* var0 = [[NSDictionary alloc] initWithContentsOfFile:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSDictionary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary___INIT____org_xmlvm_ios_NSURL]

    NSDictionary* var0 = [[NSDictionary alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSDictionary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary___INIT___]
    NSDictionary* var0 = [[NSDictionary alloc ] init];
    org_xmlvm_ios_NSDictionary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary___INIT___]

    NSDictionary* var0 = [[NSDictionary alloc]init];

    org_xmlvm_ios_NSDictionary_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_count__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz count];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_objectForKey___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz  objectForKey:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_keyEnumerator__]

    XMLVM_VAR_THIZ;
    
    NSEnumerator* var0 = [thiz keyEnumerator];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_allKeys__]

    NSAutoreleasePool* p = [[NSAutoreleasePool alloc] init];

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz allKeys];
    [ p release];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_allKeysForObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz  allKeysForObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_allValues__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz allValues];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_description__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz description];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_descriptionInStringsFileFormat__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz descriptionInStringsFileFormat];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_descriptionWithLocale___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  descriptionWithLocale:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_descriptionWithLocale___java_lang_Object_int]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  descriptionWithLocale:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj indent:n2];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_isEqualToDictionary___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_objectEnumerator__]

    XMLVM_VAR_THIZ;
    
    NSEnumerator* var0 = [thiz objectEnumerator];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_objectsForKeys___java_util_List_java_lang_Object]

    NSAutoreleasePool* p = [[NSAutoreleasePool alloc] init];

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    
    NSArray* var0 = [thiz  objectsForKeys:ObjCVar1 notFoundMarker:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    [ObjCVar1 release];

    [ p release];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_writeToFile___java_lang_String_boolean]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 = [thiz  writeToFile:ObjCVar1 atomically:n2];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_writeToURL___org_xmlvm_ios_NSURL_boolean]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  writeToURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) atomically:n2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_keysSortedByValueUsingSelector___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_getObjects___Object_1ARRAY_Object_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_OBJECT_ARRAY(a1, n1); 
    XMLVM_VAR_OBJECT_ARRAY(a2, n2); 
    [thiz  getObjects:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ andKeys:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_enumerateKeysAndObjectsUsingBlock___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  enumerateKeysAndObjectsUsingBlock:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_enumerateKeysAndObjectsWithOptions___int_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  enumerateKeysAndObjectsWithOptions:n1 usingBlock:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_keysSortedByValueUsingComparator___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz  keysSortedByValueUsingComparator:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_keysSortedByValueWithOptions___int_java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz  keysSortedByValueWithOptions:n1 usingComparator:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_keysOfEntriesPassingTest___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSSet* var0 = [thiz  keysOfEntriesPassingTest:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return fromNSSet(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_keysOfEntriesWithOptions___int_java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSSet* var0 = [thiz  keysOfEntriesWithOptions:n1 passingTest:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return fromNSSet(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_dictionary__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_dictionaryWithObject___java_lang_Object_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_dictionaryWithObjects___Object_1ARRAY_Object_1ARRAY_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_dictionaryWithObjectsAndKeys___org_xmlvm_ios_Object...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_dictionaryWithDictionary___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_dictionaryWithObjects___java_util_List_java_util_List]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_dictionaryWithContentsOfFile___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_dictionaryWithContentsOfURL___org_xmlvm_ios_NSURL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_fileSize__]

    XMLVM_VAR_THIZ;
    
    long var0 = [thiz fileSize];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_fileModificationDate__]

    XMLVM_VAR_THIZ;
    
    NSDate* var0 = [thiz fileModificationDate];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_fileType__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz fileType];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_filePosixPermissions__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz filePosixPermissions];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_fileOwnerAccountName__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz fileOwnerAccountName];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_fileGroupOwnerAccountName__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz fileGroupOwnerAccountName];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_fileSystemNumber__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz fileSystemNumber];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_fileSystemFileNumber__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz fileSystemFileNumber];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_fileExtensionHidden__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz fileExtensionHidden];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_fileHFSCreatorCode__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz fileHFSCreatorCode];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_fileHFSTypeCode__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz fileHFSTypeCode];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_fileIsImmutable__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz fileIsImmutable];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_fileIsAppendOnly__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz fileIsAppendOnly];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_fileCreationDate__]

    XMLVM_VAR_THIZ;
    
    NSDate* var0 = [thiz fileCreationDate];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_fileOwnerAccountID__]

    XMLVM_VAR_THIZ;
    
    NSNumber* var0 = [thiz fileOwnerAccountID];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_fileGroupOwnerAccountID__]

    XMLVM_VAR_THIZ;
    
    NSNumber* var0 = [thiz fileGroupOwnerAccountID];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDictionary_valueForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 = [thiz  valueForKey:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
