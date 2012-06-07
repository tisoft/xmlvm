
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSMigrationManager (NSMigrationManagerWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSMigrationManager (NSMigrationManagerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSMigrationManager.classInitialized)
        __INIT_org_xmlvm_ios_NSMigrationManager();
}
@end

void org_xmlvm_ios_NSMigrationManager_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSMigrationManager class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSMigrationManager();
        org_xmlvm_ios_NSMigrationManager_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSMigrationManager]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSMigrationManager]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager___INIT____org_xmlvm_ios_NSManagedObjectModel_org_xmlvm_ios_NSManagedObjectModel]

    NSMigrationManager* var0 = [[NSMigrationManager alloc] initWithSourceModel:(NSManagedObjectModel*) (((org_xmlvm_ios_NSManagedObjectModel*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) destinationModel:(NSManagedObjectModel*) (((org_xmlvm_ios_NSManagedObjectModel*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSMigrationManager_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager___INIT___]
    NSMigrationManager* var0 = [[NSMigrationManager alloc ] init];
    org_xmlvm_ios_NSMigrationManager_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager___INIT___]

    NSMigrationManager* var0 = [[NSMigrationManager alloc]init];

    org_xmlvm_ios_NSMigrationManager_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_migrateStoreFromURL___org_xmlvm_ios_NSURL_java_lang_String_java_util_Map_org_xmlvm_ios_NSMappingModel_org_xmlvm_ios_NSURL_java_lang_String_java_util_Map_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_reset__]

    XMLVM_VAR_THIZ;
    [thiz reset];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_mappingModel__]

    XMLVM_VAR_THIZ;
    
    NSMappingModel* var0 = [thiz mappingModel];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_sourceModel__]

    XMLVM_VAR_THIZ;
    
    NSManagedObjectModel* var0 = [thiz sourceModel];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_destinationModel__]

    XMLVM_VAR_THIZ;
    
    NSManagedObjectModel* var0 = [thiz destinationModel];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_sourceContext__]

    XMLVM_VAR_THIZ;
    
    NSManagedObjectContext* var0 = [thiz sourceContext];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_destinationContext__]

    XMLVM_VAR_THIZ;
    
    NSManagedObjectContext* var0 = [thiz destinationContext];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_sourceEntityForEntityMapping___org_xmlvm_ios_NSEntityMapping]

    XMLVM_VAR_THIZ;
    
    NSEntityDescription* var0 = [thiz  sourceEntityForEntityMapping:(NSEntityMapping*) (((org_xmlvm_ios_NSEntityMapping*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_destinationEntityForEntityMapping___org_xmlvm_ios_NSEntityMapping]

    XMLVM_VAR_THIZ;
    
    NSEntityDescription* var0 = [thiz  destinationEntityForEntityMapping:(NSEntityMapping*) (((org_xmlvm_ios_NSEntityMapping*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_associateSourceInstance___org_xmlvm_ios_NSManagedObject_org_xmlvm_ios_NSManagedObject_org_xmlvm_ios_NSEntityMapping]

    XMLVM_VAR_THIZ;
    [thiz  associateSourceInstance:(NSManagedObject*) (((org_xmlvm_ios_NSManagedObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) withDestinationInstance:(NSManagedObject*) (((org_xmlvm_ios_NSManagedObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) forEntityMapping:(NSEntityMapping*) (((org_xmlvm_ios_NSEntityMapping*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_destinationInstancesForEntityMappingNamed___java_lang_String_java_util_List]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSArray * ObjCVar2 = toNSArray(n2);
    
    NSArray* var0 = [thiz  destinationInstancesForEntityMappingNamed:ObjCVar1 sourceInstances:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_sourceInstancesForEntityMappingNamed___java_lang_String_java_util_List]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    NSArray * ObjCVar2 = toNSArray(n2);
    
    NSArray* var0 = [thiz  sourceInstancesForEntityMappingNamed:ObjCVar1 destinationInstances:ObjCVar2];
    [ObjCVar1 release];

    [ObjCVar2 release];


    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_currentEntityMapping__]

    XMLVM_VAR_THIZ;
    
    NSEntityMapping* var0 = [thiz currentEntityMapping];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_migrationProgress__]

    XMLVM_VAR_THIZ;
    
    float var0 = [thiz migrationProgress];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_userInfo__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_setUserInfo___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMigrationManager_cancelMigrationWithError___org_xmlvm_ios_NSError]

    XMLVM_VAR_THIZ;
    [thiz  cancelMigrationWithError:(NSError*) (((org_xmlvm_ios_NSError*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
