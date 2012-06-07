
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSCountedSet (NSCountedSetWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSCountedSet (NSCountedSetWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSCountedSet.classInitialized)
        __INIT_org_xmlvm_ios_NSCountedSet();
}
@end

void org_xmlvm_ios_NSCountedSet_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSMutableSet_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSCountedSet class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSCountedSet();
        org_xmlvm_ios_NSCountedSet_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSCountedSet]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSCountedSet]
__DELETE_org_xmlvm_ios_NSMutableSet(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCountedSet___INIT____int]

    NSCountedSet* var0 = [[NSCountedSet alloc] initWithCapacity:n1];
    org_xmlvm_ios_NSCountedSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCountedSet___INIT____java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    NSCountedSet* var0 = [[NSCountedSet alloc] initWithArray:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSCountedSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCountedSet___INIT____java_util_Set]
NSSet * ObjCVar1 = toNSSet(n1);
    
    NSCountedSet* var0 = [[NSCountedSet alloc] initWithSet:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSCountedSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCountedSet___INIT___]
    NSCountedSet* var0 = [[NSCountedSet alloc ] init];
    org_xmlvm_ios_NSCountedSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCountedSet___INIT___]
    NSCountedSet* var0 = [[NSCountedSet alloc ] init];
    org_xmlvm_ios_NSCountedSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCountedSet___INIT____Object_1ARRAY_int]
XMLVM_VAR_OBJECT_ARRAY(a1, n1); 
    
    NSCountedSet* var0 = [[NSCountedSet alloc] initWithObjects:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ count:n2];
    org_xmlvm_ios_NSCountedSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCountedSet___INIT____org_xmlvm_ios_Object...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCountedSet___INIT____java_util_Set_boolean]
NSSet * ObjCVar1 = toNSSet(n1);
    
    NSCountedSet* var0 = [[NSCountedSet alloc] initWithSet:ObjCVar1 copyItems:n2];
    [ObjCVar1 release];

    org_xmlvm_ios_NSCountedSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCountedSet___INIT___]
    NSCountedSet* var0 = [[NSCountedSet alloc ] init];
    org_xmlvm_ios_NSCountedSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCountedSet___INIT___]

    NSCountedSet* var0 = [[NSCountedSet alloc]init];

    org_xmlvm_ios_NSCountedSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCountedSet_countForObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  countForObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCountedSet_objectEnumerator__]

    XMLVM_VAR_THIZ;
    
    NSEnumerator* var0 = [thiz objectEnumerator];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCountedSet_addObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  addObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSCountedSet_removeObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  removeObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER
