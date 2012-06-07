
//XMLVM_BEGIN_IMPLEMENTATION
@interface MPMediaQuery (MPMediaQueryWrapperCategory)
+ (void) initialize_class;
@end

@implementation MPMediaQuery (MPMediaQueryWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_MPMediaQuery.classInitialized)
        __INIT_org_xmlvm_ios_MPMediaQuery();
}
@end

void org_xmlvm_ios_MPMediaQuery_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [MPMediaQuery class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_MPMediaQuery();
        org_xmlvm_ios_MPMediaQuery_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_MPMediaQuery]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_MPMediaQuery]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery___INIT___]

    MPMediaQuery* var0 = [[MPMediaQuery alloc]init];

    org_xmlvm_ios_MPMediaQuery_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery___INIT____java_util_Set]
NSSet * ObjCVar1 = toNSSet(n1);
    
    MPMediaQuery* var0 = [[MPMediaQuery alloc] initWithFilterPredicates:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_MPMediaQuery_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery___INIT___]
    MPMediaQuery* var0 = [[MPMediaQuery alloc ] init];
    org_xmlvm_ios_MPMediaQuery_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_getFilterPredicates__]

    XMLVM_VAR_THIZ;
    NSSet* var0 = [thiz filterPredicates];
    
    return fromNSSet(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_setFilterPredicates___java_util_Set]

    XMLVM_VAR_THIZ;
    NSSet * ObjCVar1 = toNSSet(n1);
    [thiz setFilterPredicates:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_addFilterPredicate___org_xmlvm_ios_MPMediaPredicate]

    XMLVM_VAR_THIZ;
    [thiz  addFilterPredicate:(MPMediaPredicate*) (((org_xmlvm_ios_MPMediaPredicate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_removeFilterPredicate___org_xmlvm_ios_MPMediaPredicate]

    XMLVM_VAR_THIZ;
    [thiz  removeFilterPredicate:(MPMediaPredicate*) (((org_xmlvm_ios_MPMediaPredicate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_getItems__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz items];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_getCollections__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz collections];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_getGroupingType__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz groupingType];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_setGroupingType___int]

    XMLVM_VAR_THIZ;
    [thiz setGroupingType:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_getItemSections__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz itemSections];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_getCollectionSections__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz collectionSections];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_albumsQuery__]

    MPMediaQuery* var0 =  [MPMediaQuery albumsQuery];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_artistsQuery__]

    MPMediaQuery* var0 =  [MPMediaQuery artistsQuery];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_songsQuery__]

    MPMediaQuery* var0 =  [MPMediaQuery songsQuery];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_playlistsQuery__]

    MPMediaQuery* var0 =  [MPMediaQuery playlistsQuery];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_podcastsQuery__]

    MPMediaQuery* var0 =  [MPMediaQuery podcastsQuery];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_audiobooksQuery__]

    MPMediaQuery* var0 =  [MPMediaQuery audiobooksQuery];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_compilationsQuery__]

    MPMediaQuery* var0 =  [MPMediaQuery compilationsQuery];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_composersQuery__]

    MPMediaQuery* var0 =  [MPMediaQuery composersQuery];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MPMediaQuery_genresQuery__]

    MPMediaQuery* var0 =  [MPMediaQuery genresQuery];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
