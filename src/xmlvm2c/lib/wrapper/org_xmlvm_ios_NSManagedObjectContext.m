
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSManagedObjectContext (NSManagedObjectContextWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSManagedObjectContext (NSManagedObjectContextWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSManagedObjectContext.classInitialized)
        __INIT_org_xmlvm_ios_NSManagedObjectContext();
}
@end

void org_xmlvm_ios_NSManagedObjectContext_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSManagedObjectContext class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSManagedObjectContext();
        org_xmlvm_ios_NSManagedObjectContext_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSManagedObjectContext]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSManagedObjectContext]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext___INIT___]
    NSManagedObjectContext* var0 = [[NSManagedObjectContext alloc ] init];
    org_xmlvm_ios_NSManagedObjectContext_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext___INIT___]

    NSManagedObjectContext* var0 = [[NSManagedObjectContext alloc]init];

    org_xmlvm_ios_NSManagedObjectContext_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_setPersistentStoreCoordinator___org_xmlvm_ios_NSPersistentStoreCoordinator]

    XMLVM_VAR_THIZ;
    [thiz  setPersistentStoreCoordinator:(NSPersistentStoreCoordinator*) (((org_xmlvm_ios_NSPersistentStoreCoordinator*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_persistentStoreCoordinator__]

    XMLVM_VAR_THIZ;
    
    NSPersistentStoreCoordinator* var0 = [thiz persistentStoreCoordinator];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_setUndoManager___org_xmlvm_ios_NSUndoManager]

    XMLVM_VAR_THIZ;
    [thiz  setUndoManager:(NSUndoManager*) (((org_xmlvm_ios_NSUndoManager*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_undoManager__]

    XMLVM_VAR_THIZ;
    
    NSUndoManager* var0 = [thiz undoManager];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_hasChanges__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz hasChanges];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_objectRegisteredForID___org_xmlvm_ios_NSManagedObjectID]

    XMLVM_VAR_THIZ;
    
    NSManagedObject* var0 = [thiz  objectRegisteredForID:(NSManagedObjectID*) (((org_xmlvm_ios_NSManagedObjectID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_objectWithID___org_xmlvm_ios_NSManagedObjectID]

    XMLVM_VAR_THIZ;
    
    NSManagedObject* var0 = [thiz  objectWithID:(NSManagedObjectID*) (((org_xmlvm_ios_NSManagedObjectID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_existingObjectWithID___org_xmlvm_ios_NSManagedObjectID_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    NSManagedObject* var0 = [thiz  existingObjectWithID:(NSManagedObjectID*) (((org_xmlvm_ios_NSManagedObjectID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_executeFetchRequest___org_xmlvm_ios_NSFetchRequest_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    NSArray* var0 = [thiz  executeFetchRequest:(NSFetchRequest*) (((org_xmlvm_ios_NSFetchRequest*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var2];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_countForFetchRequest___org_xmlvm_ios_NSFetchRequest_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    int var0 = [thiz  countForFetchRequest:(NSFetchRequest*) (((org_xmlvm_ios_NSFetchRequest*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_insertObject___org_xmlvm_ios_NSManagedObject]

    XMLVM_VAR_THIZ;
    [thiz  insertObject:(NSManagedObject*) (((org_xmlvm_ios_NSManagedObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_deleteObject___org_xmlvm_ios_NSManagedObject]

    XMLVM_VAR_THIZ;
    [thiz  deleteObject:(NSManagedObject*) (((org_xmlvm_ios_NSManagedObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_refreshObject___org_xmlvm_ios_NSManagedObject_boolean]

    XMLVM_VAR_THIZ;
    [thiz  refreshObject:(NSManagedObject*) (((org_xmlvm_ios_NSManagedObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) mergeChanges:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_detectConflictsForObject___org_xmlvm_ios_NSManagedObject]

    XMLVM_VAR_THIZ;
    [thiz  detectConflictsForObject:(NSManagedObject*) (((org_xmlvm_ios_NSManagedObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_observeValueForKeyPath___java_lang_String_java_lang_Object_java_util_Map_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_processPendingChanges__]

    XMLVM_VAR_THIZ;
    [thiz processPendingChanges];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_assignObject___java_lang_Object_org_xmlvm_ios_NSPersistentStore]

    XMLVM_VAR_THIZ;
    [thiz  assignObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj toPersistentStore:(NSPersistentStore*) (((org_xmlvm_ios_NSPersistentStore*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_insertedObjects__]

    XMLVM_VAR_THIZ;
    
    NSSet* var0 = [thiz insertedObjects];

    return fromNSSet(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_updatedObjects__]

    XMLVM_VAR_THIZ;
    
    NSSet* var0 = [thiz updatedObjects];

    return fromNSSet(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_deletedObjects__]

    XMLVM_VAR_THIZ;
    
    NSSet* var0 = [thiz deletedObjects];

    return fromNSSet(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_registeredObjects__]

    XMLVM_VAR_THIZ;
    
    NSSet* var0 = [thiz registeredObjects];

    return fromNSSet(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_undo__]

    XMLVM_VAR_THIZ;
    [thiz undo];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_redo__]

    XMLVM_VAR_THIZ;
    [thiz redo];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_reset__]

    XMLVM_VAR_THIZ;
    [thiz reset];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_rollback__]

    XMLVM_VAR_THIZ;
    [thiz rollback];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_save___org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    XMLVM_VAR_IOS(NSError, var1, jObject1);
    
    BOOL var0 = [thiz  save:&var1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_lock__]

    XMLVM_VAR_THIZ;
    [thiz lock];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_unlock__]

    XMLVM_VAR_THIZ;
    [thiz unlock];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_tryLock__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz tryLock];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_propagatesDeletesAtEndOfEvent__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz propagatesDeletesAtEndOfEvent];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_setPropagatesDeletesAtEndOfEvent___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setPropagatesDeletesAtEndOfEvent:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_retainsRegisteredObjects__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz retainsRegisteredObjects];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_setRetainsRegisteredObjects___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setRetainsRegisteredObjects:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_stalenessInterval__]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz stalenessInterval];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_setStalenessInterval___double]

    XMLVM_VAR_THIZ;
    [thiz  setStalenessInterval:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_setMergePolicy___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  setMergePolicy:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_mergePolicy__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz mergePolicy];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_obtainPermanentIDsForObjects___java_util_List_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    BOOL var0 = [thiz  obtainPermanentIDsForObjects:ObjCVar1 error:&var2];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectContext_mergeChangesFromContextDidSaveNotification___org_xmlvm_ios_NSNotification]

    XMLVM_VAR_THIZ;
    [thiz  mergeChangesFromContextDidSaveNotification:(NSNotification*) (((org_xmlvm_ios_NSNotification*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
