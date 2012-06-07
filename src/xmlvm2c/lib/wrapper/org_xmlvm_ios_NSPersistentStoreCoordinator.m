
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSPersistentStoreCoordinator (NSPersistentStoreCoordinatorWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSPersistentStoreCoordinator (NSPersistentStoreCoordinatorWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSPersistentStoreCoordinator.classInitialized)
        __INIT_org_xmlvm_ios_NSPersistentStoreCoordinator();
}
@end

void org_xmlvm_ios_NSPersistentStoreCoordinator_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSPersistentStoreCoordinator class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSPersistentStoreCoordinator();
        org_xmlvm_ios_NSPersistentStoreCoordinator_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSPersistentStoreCoordinator]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSPersistentStoreCoordinator]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator___INIT____org_xmlvm_ios_NSManagedObjectModel]

    NSPersistentStoreCoordinator* var0 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:(NSManagedObjectModel*) (((org_xmlvm_ios_NSManagedObjectModel*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSPersistentStoreCoordinator_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator___INIT___]
    NSPersistentStoreCoordinator* var0 = [[NSPersistentStoreCoordinator alloc ] init];
    org_xmlvm_ios_NSPersistentStoreCoordinator_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator___INIT___]

    NSPersistentStoreCoordinator* var0 = [[NSPersistentStoreCoordinator alloc]init];

    org_xmlvm_ios_NSPersistentStoreCoordinator_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_registeredStoreTypes__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_registerStoreClass___org_xmlvm_ios_Class_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
     [NSPersistentStoreCoordinator  registerStoreClass:(Class*) (((org_xmlvm_ios_Class*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forStoreType:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_metadataForPersistentStoreOfType___java_lang_String_org_xmlvm_ios_NSURL_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_setMetadata___java_util_Map_java_lang_String_org_xmlvm_ios_NSURL_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_setMetadata___java_util_Map_org_xmlvm_ios_NSPersistentStore]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_metadataForPersistentStore___org_xmlvm_ios_NSPersistentStore]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_managedObjectModel__]

    XMLVM_VAR_THIZ;
    
    NSManagedObjectModel* var0 = [thiz managedObjectModel];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_persistentStores__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz persistentStores];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_persistentStoreForURL___org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    
    NSPersistentStore* var0 = [thiz  persistentStoreForURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_URLForPersistentStore___org_xmlvm_ios_NSPersistentStore]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz  URLForPersistentStore:(NSPersistentStore*) (((org_xmlvm_ios_NSPersistentStore*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_setURL___org_xmlvm_ios_NSURL_org_xmlvm_ios_NSPersistentStore]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  setURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forPersistentStore:(NSPersistentStore*) (((org_xmlvm_ios_NSPersistentStore*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_addPersistentStoreWithType___java_lang_String_java_lang_String_org_xmlvm_ios_NSURL_java_util_Map_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_removePersistentStore___org_xmlvm_ios_NSPersistentStore_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    BOOL var0 = [thiz  removePersistentStore:(NSPersistentStore*) (((org_xmlvm_ios_NSPersistentStore*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_migratePersistentStore___org_xmlvm_ios_NSPersistentStore_org_xmlvm_ios_NSURL_java_util_Map_java_lang_String_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_managedObjectIDForURIRepresentation___org_xmlvm_ios_NSURL]

    XMLVM_VAR_THIZ;
    
    NSManagedObjectID* var0 = [thiz  managedObjectIDForURIRepresentation:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_lock__]

    XMLVM_VAR_THIZ;
    [thiz lock];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_unlock__]

    XMLVM_VAR_THIZ;
    [thiz unlock];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPersistentStoreCoordinator_tryLock__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz tryLock];

    return var0;
//XMLVM_END_WRAPPER
