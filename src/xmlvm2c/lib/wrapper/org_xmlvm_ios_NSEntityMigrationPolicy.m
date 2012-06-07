
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSEntityMigrationPolicy (NSEntityMigrationPolicyWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSEntityMigrationPolicy (NSEntityMigrationPolicyWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSEntityMigrationPolicy.classInitialized)
        __INIT_org_xmlvm_ios_NSEntityMigrationPolicy();
}
@end

void org_xmlvm_ios_NSEntityMigrationPolicy_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSEntityMigrationPolicy class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSEntityMigrationPolicy();
        org_xmlvm_ios_NSEntityMigrationPolicy_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSEntityMigrationPolicy]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSEntityMigrationPolicy]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSEntityMigrationPolicy___INIT___]
    NSEntityMigrationPolicy* var0 = [[NSEntityMigrationPolicy alloc ] init];
    org_xmlvm_ios_NSEntityMigrationPolicy_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSEntityMigrationPolicy___INIT___]

    NSEntityMigrationPolicy* var0 = [[NSEntityMigrationPolicy alloc]init];

    org_xmlvm_ios_NSEntityMigrationPolicy_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSEntityMigrationPolicy_beginEntityMapping___org_xmlvm_ios_NSEntityMapping_org_xmlvm_ios_NSMigrationManager_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    BOOL var0 = [thiz  beginEntityMapping:(NSEntityMapping*) (((org_xmlvm_ios_NSEntityMapping*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) manager:(NSMigrationManager*) (((org_xmlvm_ios_NSMigrationManager*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var3];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSEntityMigrationPolicy_createDestinationInstancesForSourceInstance___org_xmlvm_ios_NSManagedObject_org_xmlvm_ios_NSEntityMapping_org_xmlvm_ios_NSMigrationManager_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(NSError, var4, jObject4);
    
    BOOL var0 = [thiz  createDestinationInstancesForSourceInstance:(NSManagedObject*) (((org_xmlvm_ios_NSManagedObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) entityMapping:(NSEntityMapping*) (((org_xmlvm_ios_NSEntityMapping*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) manager:(NSMigrationManager*) (((org_xmlvm_ios_NSMigrationManager*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var4];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSEntityMigrationPolicy_endInstanceCreationForEntityMapping___org_xmlvm_ios_NSEntityMapping_org_xmlvm_ios_NSMigrationManager_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    BOOL var0 = [thiz  endInstanceCreationForEntityMapping:(NSEntityMapping*) (((org_xmlvm_ios_NSEntityMapping*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) manager:(NSMigrationManager*) (((org_xmlvm_ios_NSMigrationManager*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var3];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSEntityMigrationPolicy_createRelationshipsForDestinationInstance___org_xmlvm_ios_NSManagedObject_org_xmlvm_ios_NSEntityMapping_org_xmlvm_ios_NSMigrationManager_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    XMLVM_VAR_IOS(NSError, var4, jObject4);
    
    BOOL var0 = [thiz  createRelationshipsForDestinationInstance:(NSManagedObject*) (((org_xmlvm_ios_NSManagedObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) entityMapping:(NSEntityMapping*) (((org_xmlvm_ios_NSEntityMapping*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) manager:(NSMigrationManager*) (((org_xmlvm_ios_NSMigrationManager*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var4];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSEntityMigrationPolicy_endRelationshipCreationForEntityMapping___org_xmlvm_ios_NSEntityMapping_org_xmlvm_ios_NSMigrationManager_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    BOOL var0 = [thiz  endRelationshipCreationForEntityMapping:(NSEntityMapping*) (((org_xmlvm_ios_NSEntityMapping*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) manager:(NSMigrationManager*) (((org_xmlvm_ios_NSMigrationManager*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var3];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSEntityMigrationPolicy_performCustomValidationForEntityMapping___org_xmlvm_ios_NSEntityMapping_org_xmlvm_ios_NSMigrationManager_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    BOOL var0 = [thiz  performCustomValidationForEntityMapping:(NSEntityMapping*) (((org_xmlvm_ios_NSEntityMapping*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) manager:(NSMigrationManager*) (((org_xmlvm_ios_NSMigrationManager*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var3];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSEntityMigrationPolicy_endEntityMapping___org_xmlvm_ios_NSEntityMapping_org_xmlvm_ios_NSMigrationManager_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    BOOL var0 = [thiz  endEntityMapping:(NSEntityMapping*) (((org_xmlvm_ios_NSEntityMapping*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) manager:(NSMigrationManager*) (((org_xmlvm_ios_NSMigrationManager*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var3];

    return var0;
//XMLVM_END_WRAPPER
