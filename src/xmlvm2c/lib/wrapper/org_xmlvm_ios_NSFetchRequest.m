
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSFetchRequest (NSFetchRequestWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSFetchRequest (NSFetchRequestWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSFetchRequest.classInitialized)
        __INIT_org_xmlvm_ios_NSFetchRequest();
}
@end

void org_xmlvm_ios_NSFetchRequest_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSFetchRequest class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSFetchRequest();
        org_xmlvm_ios_NSFetchRequest_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSFetchRequest]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSFetchRequest]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest___INIT___]
    NSFetchRequest* var0 = [[NSFetchRequest alloc ] init];
    org_xmlvm_ios_NSFetchRequest_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest___INIT___]

    NSFetchRequest* var0 = [[NSFetchRequest alloc]init];

    org_xmlvm_ios_NSFetchRequest_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_entity__]

    XMLVM_VAR_THIZ;
    
    NSEntityDescription* var0 = [thiz entity];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_setEntity___org_xmlvm_ios_NSEntityDescription]

    XMLVM_VAR_THIZ;
    [thiz  setEntity:(NSEntityDescription*) (((org_xmlvm_ios_NSEntityDescription*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_predicate__]

    XMLVM_VAR_THIZ;
    
    NSPredicate* var0 = [thiz predicate];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_setPredicate___org_xmlvm_ios_NSPredicate]

    XMLVM_VAR_THIZ;
    [thiz  setPredicate:(NSPredicate*) (((org_xmlvm_ios_NSPredicate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_sortDescriptors__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz sortDescriptors];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_setSortDescriptors___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setSortDescriptors:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_fetchLimit__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz fetchLimit];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_setFetchLimit___int]

    XMLVM_VAR_THIZ;
    [thiz  setFetchLimit:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_affectedStores__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz affectedStores];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_setAffectedStores___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setAffectedStores:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_resultType__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz resultType];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_setResultType___int]

    XMLVM_VAR_THIZ;
    [thiz  setResultType:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_includesSubentities__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz includesSubentities];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_setIncludesSubentities___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setIncludesSubentities:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_includesPropertyValues__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz includesPropertyValues];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_setIncludesPropertyValues___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setIncludesPropertyValues:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_returnsObjectsAsFaults__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz returnsObjectsAsFaults];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_setReturnsObjectsAsFaults___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setReturnsObjectsAsFaults:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_relationshipKeyPathsForPrefetching__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz relationshipKeyPathsForPrefetching];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_setRelationshipKeyPathsForPrefetching___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setRelationshipKeyPathsForPrefetching:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_includesPendingChanges__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz includesPendingChanges];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_setIncludesPendingChanges___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setIncludesPendingChanges:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_returnsDistinctResults__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz returnsDistinctResults];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_setReturnsDistinctResults___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setReturnsDistinctResults:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_propertiesToFetch__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz propertiesToFetch];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_setPropertiesToFetch___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setPropertiesToFetch:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_fetchOffset__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz fetchOffset];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_setFetchOffset___int]

    XMLVM_VAR_THIZ;
    [thiz  setFetchOffset:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_fetchBatchSize__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz fetchBatchSize];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchRequest_setFetchBatchSize___int]

    XMLVM_VAR_THIZ;
    [thiz  setFetchBatchSize:n1];

    
//XMLVM_END_WRAPPER
