
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSBundle (NSBundleWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSBundle (NSBundleWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSBundle.classInitialized)
        __INIT_org_xmlvm_ios_NSBundle();
}
@end

void org_xmlvm_ios_NSBundle_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSBundle class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSBundle();
        org_xmlvm_ios_NSBundle_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSBundle]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSBundle]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle___INIT____java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSBundle* var0 = [[NSBundle alloc] initWithPath:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSBundle_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle___INIT____org_xmlvm_ios_NSURL]

    NSBundle* var0 = [[NSBundle alloc] initWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSBundle_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle___INIT___]
    NSBundle* var0 = [[NSBundle alloc ] init];
    org_xmlvm_ios_NSBundle_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle___INIT___]

    NSBundle* var0 = [[NSBundle alloc]init];

    org_xmlvm_ios_NSBundle_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_mainBundle__]

    NSBundle* var0 =  [NSBundle mainBundle];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_bundleWithPath___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSBundle* var0 =  [NSBundle  bundleWithPath:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_bundleWithURL___org_xmlvm_ios_NSURL]

    NSBundle* var0 =  [NSBundle  bundleWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_bundleForClass___org_xmlvm_ios_Class]

    NSBundle* var0 =  [NSBundle  bundleForClass:(Class*) (((org_xmlvm_ios_Class*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_bundleWithIdentifier___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSBundle* var0 =  [NSBundle  bundleWithIdentifier:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_allBundles__]

    NSArray* var0 =  [NSBundle allBundles];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_allFrameworks__]

    NSArray* var0 =  [NSBundle allFrameworks];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_load__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz load];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_isLoaded__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isLoaded];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_unload__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz unload];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_preflightAndReturnError___org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    XMLVM_VAR_IOS(NSError, var1, jObject1);
    
    BOOL var0 = [thiz  preflightAndReturnError:&var1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_loadAndReturnError___org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    XMLVM_VAR_IOS(NSError, var1, jObject1);
    
    BOOL var0 = [thiz  loadAndReturnError:&var1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_bundleURL__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz bundleURL];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_resourceURL__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz resourceURL];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_executableURL__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz executableURL];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_URLForAuxiliaryExecutable___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSURL* var0 = [thiz  URLForAuxiliaryExecutable:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_privateFrameworksURL__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz privateFrameworksURL];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_sharedFrameworksURL__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz sharedFrameworksURL];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_sharedSupportURL__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz sharedSupportURL];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_builtInPlugInsURL__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz builtInPlugInsURL];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_bundlePath__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz bundlePath];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_resourcePath__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz resourcePath];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_executablePath__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz executablePath];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_pathForAuxiliaryExecutable___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 = [thiz  pathForAuxiliaryExecutable:ObjCVar1];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_privateFrameworksPath__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz privateFrameworksPath];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_sharedFrameworksPath__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz sharedFrameworksPath];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_sharedSupportPath__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz sharedSupportPath];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_builtInPlugInsPath__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz builtInPlugInsPath];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_URLForResource___java_lang_String_java_lang_String_java_lang_String_org_xmlvm_ios_NSURL]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    NSURL* var0 =  [NSBundle  URLForResource:ObjCVar1 withExtension:ObjCVar2 subdirectory:ObjCVar3 inBundleWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_URLsForResourcesWithExtension___java_lang_String_java_lang_String_org_xmlvm_ios_NSURL]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSArray* var0 =  [NSBundle  URLsForResourcesWithExtension:ObjCVar1 subdirectory:ObjCVar2 inBundleWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_URLForResource___java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSURL* var0 = [thiz  URLForResource:ObjCVar1 withExtension:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_URLForResource___java_lang_String_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    NSURL* var0 = [thiz  URLForResource:ObjCVar1 withExtension:ObjCVar2 subdirectory:ObjCVar3];
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_URLForResource___java_lang_String_java_lang_String_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    NSString * ObjCVar4 = toNSString(n4);
    
    NSURL* var0 = [thiz  URLForResource:ObjCVar1 withExtension:ObjCVar2 subdirectory:ObjCVar3 localization:ObjCVar4];
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];

    [ObjCVar4 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_URLsForResourcesWithExtension___java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSArray* var0 = [thiz  URLsForResourcesWithExtension:ObjCVar1 subdirectory:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_URLsForResourcesWithExtension___java_lang_String_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    NSArray* var0 = [thiz  URLsForResourcesWithExtension:ObjCVar1 subdirectory:ObjCVar2 localization:ObjCVar3];
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_pathForResource___java_lang_String_java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    NSString* var0 =  [NSBundle  pathForResource:ObjCVar1 ofType:ObjCVar2 inDirectoryStatic:ObjCVar3];
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_pathsForResourcesOfType___java_lang_String_java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSArray* var0 =  [NSBundle  pathsForResourcesOfType:ObjCVar1 inDirectoryStatic:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_pathForResource___java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSString* var0 = [thiz  pathForResource:ObjCVar1 ofType:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_pathForResource___java_lang_String_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    NSString* var0 = [thiz  pathForResource:ObjCVar1 ofType:ObjCVar2 inDirectory:ObjCVar3];
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_pathForResource___java_lang_String_java_lang_String_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    NSString * ObjCVar4 = toNSString(n4);
    
    NSString* var0 = [thiz  pathForResource:ObjCVar1 ofType:ObjCVar2 inDirectory:ObjCVar3 forLocalization:ObjCVar4];
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];

    [ObjCVar4 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_pathsForResourcesOfType___java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    NSArray* var0 = [thiz  pathsForResourcesOfType:ObjCVar1 inDirectory:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_pathsForResourcesOfType___java_lang_String_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    NSArray* var0 = [thiz  pathsForResourcesOfType:ObjCVar1 inDirectory:ObjCVar2 forLocalization:ObjCVar3];
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_localizedStringForKey___java_lang_String_java_lang_String_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    NSString * ObjCVar3 = toNSString(n3);
    
    NSString* var0 = [thiz  localizedStringForKey:ObjCVar1 value:ObjCVar2 table:ObjCVar3];
    [ObjCVar1 release];

    [ObjCVar2 release];

    [ObjCVar3 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_bundleIdentifier__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz bundleIdentifier];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_infoDictionary__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_localizedInfoDictionary__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_objectForInfoDictionaryKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 = [thiz  objectForInfoDictionaryKey:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_classNamed___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    Class* var0 = [thiz  classNamed:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_principalClass__]

    XMLVM_VAR_THIZ;
    
    Class* var0 = [thiz principalClass];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_localizations__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz localizations];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_preferredLocalizations__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz preferredLocalizations];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_developmentLocalization__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz developmentLocalization];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_preferredLocalizationsFromArray___java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    NSArray* var0 =  [NSBundle  preferredLocalizationsFromArray:ObjCVar1];
    [ObjCVar1 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_preferredLocalizationsFromArray___java_util_List_java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    NSArray * ObjCVar2 = toNSArray(n2);
    
    NSArray* var0 =  [NSBundle  preferredLocalizationsFromArray:ObjCVar1 forPreferences:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_executableArchitectures__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz executableArchitectures];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSBundle_loadNibNamed___java_lang_String_java_lang_Object_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
