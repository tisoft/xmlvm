
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSManagedObjectModel (NSManagedObjectModelWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSManagedObjectModel (NSManagedObjectModelWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSManagedObjectModel.classInitialized)
        __INIT_org_xmlvm_ios_NSManagedObjectModel();
}
@end

void org_xmlvm_ios_NSManagedObjectModel_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSManagedObjectModel class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSManagedObjectModel();
        org_xmlvm_ios_NSManagedObjectModel_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSManagedObjectModel]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSManagedObjectModel]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel___INIT___]

    NSManagedObjectModel* var0 = [[NSManagedObjectModel alloc]init];

    org_xmlvm_ios_NSManagedObjectModel_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel___INIT____org_xmlvm_ios_NSURL]

    NSManagedObjectModel* var0 = [[NSManagedObjectModel alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSManagedObjectModel_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel___INIT___]
    NSManagedObjectModel* var0 = [[NSManagedObjectModel alloc ] init];
    org_xmlvm_ios_NSManagedObjectModel_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_mergedModelFromBundles___java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    NSManagedObjectModel* var0 =  [NSManagedObjectModel  mergedModelFromBundles:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_modelByMergingModels___java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    NSManagedObjectModel* var0 =  [NSManagedObjectModel  modelByMergingModels:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_entitiesByName__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_entities__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz entities];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_setEntities___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setEntities:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_configurations__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz configurations];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_entitiesForConfiguration___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSArray* var0 = [thiz  entitiesForConfiguration:ObjCVar1];
    [ObjCVar1 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_setEntities___java_util_List_java_lang_String]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  setEntities:ObjCVar1 forConfiguration:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_setFetchRequestTemplate___org_xmlvm_ios_NSFetchRequest_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  setFetchRequestTemplate:(NSFetchRequest*) (((org_xmlvm_ios_NSFetchRequest*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forName:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_fetchRequestTemplateForName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSFetchRequest* var0 = [thiz  fetchRequestTemplateForName:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_fetchRequestFromTemplateWithName___java_lang_String_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_localizationDictionary__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_setLocalizationDictionary___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_mergedModelFromBundles___java_util_List_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_modelByMergingModels___java_util_List_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_fetchRequestTemplatesByName__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_versionIdentifiers__]

    XMLVM_VAR_THIZ;
    
    NSSet* var0 = [thiz versionIdentifiers];

    return fromNSSet(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_setVersionIdentifiers___java_util_Set]

    XMLVM_VAR_THIZ;
    NSSet * ObjCVar1 = toNSSet(n1);
    [thiz  setVersionIdentifiers:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_isConfiguration___java_lang_String_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectModel_entityVersionHashesByName__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
