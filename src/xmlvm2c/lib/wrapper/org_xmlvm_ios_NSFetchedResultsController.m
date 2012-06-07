
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSFetchedResultsController (NSFetchedResultsControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSFetchedResultsController (NSFetchedResultsControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSFetchedResultsController.classInitialized)
        __INIT_org_xmlvm_ios_NSFetchedResultsController();
}
@end

void org_xmlvm_ios_NSFetchedResultsController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSFetchedResultsController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSFetchedResultsController();
        org_xmlvm_ios_NSFetchedResultsController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSFetchedResultsController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSFetchedResultsController]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController___INIT____org_xmlvm_ios_NSFetchRequest_org_xmlvm_ios_NSManagedObjectContext_java_lang_String_java_lang_String]
NSString * ObjCVar3 = toNSString(n3);
    NSString * ObjCVar4 = toNSString(n4);
    
    NSFetchedResultsController* var0 = [[NSFetchedResultsController alloc] initWithFetchRequest:(NSFetchRequest*) (((org_xmlvm_ios_NSFetchRequest*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) managedObjectContext:(NSManagedObjectContext*) (((org_xmlvm_ios_NSManagedObjectContext*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) sectionNameKeyPath:ObjCVar3 cacheName:ObjCVar4];
    [ObjCVar3 release];

    [ObjCVar4 release];

    org_xmlvm_ios_NSFetchedResultsController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController___INIT___]
    NSFetchedResultsController* var0 = [[NSFetchedResultsController alloc ] init];
    org_xmlvm_ios_NSFetchedResultsController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController___INIT___]

    NSFetchedResultsController* var0 = [[NSFetchedResultsController alloc]init];

    org_xmlvm_ios_NSFetchedResultsController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController_performFetch___org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    XMLVM_VAR_IOS(NSError, var1, jObject1);
    
    BOOL var0 = [thiz  performFetch:&var1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController_getFetchRequest__]

    XMLVM_VAR_THIZ;
    NSFetchRequest* var0 = [thiz fetchRequest];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController_getManagedObjectContext__]

    XMLVM_VAR_THIZ;
    NSManagedObjectContext* var0 = [thiz managedObjectContext];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController_getSectionNameKeyPath__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz sectionNameKeyPath];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController_getCacheName__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz cacheName];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController_setDelegate___org_xmlvm_ios_NSFetchedResultsControllerDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_NSFetchedResultsControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_NSFetchedResultsControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController_deleteCacheWithName___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
     [NSFetchedResultsController  deleteCacheWithName:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController_getFetchedObjects__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz fetchedObjects];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController_objectAtIndexPath___org_xmlvm_ios_NSIndexPath]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz  objectAtIndexPath:(NSIndexPath*) (((org_xmlvm_ios_NSIndexPath*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController_indexPathForObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSIndexPath* var0 = [thiz  indexPathForObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController_sectionIndexTitleForSectionName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSString* var0 = [thiz  sectionIndexTitleForSectionName:ObjCVar1];
    [ObjCVar1 release];


    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController_getSectionIndexTitles__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz sectionIndexTitles];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController_getSections__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz sections];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedResultsController_sectionForSectionIndexTitle___java_lang_String_int]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  sectionForSectionIndexTitle:ObjCVar1 atIndex:n2];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER
