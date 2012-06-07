
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSCache (NSCacheWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSCache (NSCacheWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSCache.classInitialized)
        __INIT_org_xmlvm_ios_NSCache();
}
@end

void org_xmlvm_ios_NSCache_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSCache class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSCache();
        org_xmlvm_ios_NSCache_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSCache]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSCache]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache___INIT___]
    NSCache* var0 = [[NSCache alloc ] init];
    org_xmlvm_ios_NSCache_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache___INIT___]

    NSCache* var0 = [[NSCache alloc]init];

    org_xmlvm_ios_NSCache_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache_setName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setName:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache_name__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz name];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache_setDelegate___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  setDelegate:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache_delegate__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz delegate];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache_objectForKey___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz  objectForKey:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache_setObject___java_lang_Object_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  setObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKey:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache_setObject___java_lang_Object_java_lang_Object_int]

    XMLVM_VAR_THIZ;
    [thiz  setObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKey:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj cost:n3];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache_removeObjectForKey___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  removeObjectForKey:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache_removeAllObjects__]

    XMLVM_VAR_THIZ;
    [thiz removeAllObjects];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache_setTotalCostLimit___int]

    XMLVM_VAR_THIZ;
    [thiz  setTotalCostLimit:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache_totalCostLimit__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz totalCostLimit];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache_setCountLimit___int]

    XMLVM_VAR_THIZ;
    [thiz  setCountLimit:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache_countLimit__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz countLimit];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache_evictsObjectsWithDiscardedContent__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz evictsObjectsWithDiscardedContent];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCache_setEvictsObjectsWithDiscardedContent___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setEvictsObjectsWithDiscardedContent:n1];

    
//XMLVM_END_WRAPPER
