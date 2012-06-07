
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSPropertyDescription (NSPropertyDescriptionWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSPropertyDescription (NSPropertyDescriptionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSPropertyDescription.classInitialized)
        __INIT_org_xmlvm_ios_NSPropertyDescription();
}
@end

void org_xmlvm_ios_NSPropertyDescription_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSPropertyDescription class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSPropertyDescription();
        org_xmlvm_ios_NSPropertyDescription_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSPropertyDescription]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSPropertyDescription]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription___INIT___]
    NSPropertyDescription* var0 = [[NSPropertyDescription alloc ] init];
    org_xmlvm_ios_NSPropertyDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription___INIT___]

    NSPropertyDescription* var0 = [[NSPropertyDescription alloc]init];

    org_xmlvm_ios_NSPropertyDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_entity__]

    XMLVM_VAR_THIZ;
    
    NSEntityDescription* var0 = [thiz entity];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_name__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz name];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_setName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setName:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_isOptional__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isOptional];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_setOptional___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setOptional:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_isTransient__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isTransient];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_setTransient___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setTransient:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_validationPredicates__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz validationPredicates];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_validationWarnings__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz validationWarnings];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_setValidationPredicates___java_util_List_java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    NSArray * ObjCVar2 = toNSArray(n2);
    [thiz  setValidationPredicates:ObjCVar1 withValidationWarnings:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_userInfo__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_setUserInfo___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_isIndexed__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isIndexed];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_setIndexed___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setIndexed:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_versionHash__]

    XMLVM_VAR_THIZ;
    
    NSData* var0 = [thiz versionHash];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_versionHashModifier__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz versionHashModifier];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_setVersionHashModifier___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setVersionHashModifier:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_isIndexedBySpotlight__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isIndexedBySpotlight];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_setIndexedBySpotlight___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setIndexedBySpotlight:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_isStoredInExternalRecord__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isStoredInExternalRecord];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_setStoredInExternalRecord___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setStoredInExternalRecord:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_renamingIdentifier__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz renamingIdentifier];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyDescription_setRenamingIdentifier___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setRenamingIdentifier:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
