
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSMutableSet (NSMutableSetWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSMutableSet (NSMutableSetWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSMutableSet.classInitialized)
        __INIT_org_xmlvm_ios_NSMutableSet();
}
@end

void org_xmlvm_ios_NSMutableSet_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSSet_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSMutableSet class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSMutableSet();
        org_xmlvm_ios_NSMutableSet_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSMutableSet]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSMutableSet]
__DELETE_org_xmlvm_ios_NSSet(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet___INIT____int]

    NSMutableSet* var0 = [[NSMutableSet alloc] initWithCapacity:n1];
    org_xmlvm_ios_NSMutableSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet___INIT___]
    NSMutableSet* var0 = [[NSMutableSet alloc ] init];
    org_xmlvm_ios_NSMutableSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet___INIT____Object_1ARRAY_int]
XMLVM_VAR_OBJECT_ARRAY(a1, n1); 
    
    NSMutableSet* var0 = [[NSMutableSet alloc] initWithObjects:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ count:n2];
    org_xmlvm_ios_NSMutableSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet___INIT____org_xmlvm_ios_Object...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet___INIT____java_util_Set]
NSSet * ObjCVar1 = toNSSet(n1);
    
    NSMutableSet* var0 = [[NSMutableSet alloc] initWithSet:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet___INIT____java_util_Set_boolean]
NSSet * ObjCVar1 = toNSSet(n1);
    
    NSMutableSet* var0 = [[NSMutableSet alloc] initWithSet:ObjCVar1 copyItems:n2];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet___INIT____java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    NSMutableSet* var0 = [[NSMutableSet alloc] initWithArray:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet___INIT___]
    NSMutableSet* var0 = [[NSMutableSet alloc ] init];
    org_xmlvm_ios_NSMutableSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet___INIT___]

    NSMutableSet* var0 = [[NSMutableSet alloc]init];

    org_xmlvm_ios_NSMutableSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet_filterUsingPredicate___org_xmlvm_ios_NSPredicate]

    XMLVM_VAR_THIZ;
    [thiz  filterUsingPredicate:(NSPredicate*) (((org_xmlvm_ios_NSPredicate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet_addObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  addObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet_removeObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  removeObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet_addObjectsFromArray___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  addObjectsFromArray:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet_intersectSet___java_util_Set]

    XMLVM_VAR_THIZ;
    NSSet * ObjCVar1 = toNSSet(n1);
    [thiz  intersectSet:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet_minusSet___java_util_Set]

    XMLVM_VAR_THIZ;
    NSSet * ObjCVar1 = toNSSet(n1);
    [thiz  minusSet:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet_removeAllObjects__]

    XMLVM_VAR_THIZ;
    [thiz removeAllObjects];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet_unionSet___java_util_Set]

    XMLVM_VAR_THIZ;
    NSSet * ObjCVar1 = toNSSet(n1);
    [thiz  unionSet:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet_setSet___java_util_Set]

    XMLVM_VAR_THIZ;
    NSSet * ObjCVar1 = toNSSet(n1);
    [thiz  setSet:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableSet_setWithCapacity___int]

    NSSet* var0 =  [NSMutableSet  setWithCapacity:n1];

    return fromNSSet(var0);
//XMLVM_END_WRAPPER
