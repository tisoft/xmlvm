
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSMutableArray (NSMutableArrayWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSMutableArray (NSMutableArrayWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSMutableArray.classInitialized)
        __INIT_org_xmlvm_ios_NSMutableArray();
}
@end

void org_xmlvm_ios_NSMutableArray_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSArray_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSMutableArray class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSMutableArray();
        org_xmlvm_ios_NSMutableArray_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSMutableArray]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSMutableArray]
__DELETE_org_xmlvm_ios_NSArray(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray___INIT____int]

    NSMutableArray* var0 = [[NSMutableArray alloc] initWithCapacity:n1];
    org_xmlvm_ios_NSMutableArray_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray___INIT___]
    NSMutableArray* var0 = [[NSMutableArray alloc ] init];
    org_xmlvm_ios_NSMutableArray_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray___INIT____Object_1ARRAY_int]
XMLVM_VAR_OBJECT_ARRAY(a1, n1); 
    
    NSMutableArray* var0 = [[NSMutableArray alloc] initWithObjects:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ count:n2];
    org_xmlvm_ios_NSMutableArray_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray___INIT____org_xmlvm_ios_Object...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray___INIT____java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    NSMutableArray* var0 = [[NSMutableArray alloc] initWithArray:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableArray_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray___INIT____java_util_List_boolean]
NSArray * ObjCVar1 = toNSArray(n1);
    
    NSMutableArray* var0 = [[NSMutableArray alloc] initWithArray:ObjCVar1 copyItems:n2];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableArray_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray___INIT____java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSMutableArray* var0 = [[NSMutableArray alloc] initWithContentsOfFile:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSMutableArray_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray___INIT____org_xmlvm_ios_NSURL]

    NSMutableArray* var0 = [[NSMutableArray alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSMutableArray_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray___INIT___]
    NSMutableArray* var0 = [[NSMutableArray alloc ] init];
    org_xmlvm_ios_NSMutableArray_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray___INIT___]

    NSMutableArray* var0 = [[NSMutableArray alloc]init];

    org_xmlvm_ios_NSMutableArray_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_addObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  addObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_insertObject___java_lang_Object_int]

    XMLVM_VAR_THIZ;
    [thiz  insertObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj atIndex:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_removeLastObject__]

    XMLVM_VAR_THIZ;
    [thiz removeLastObject];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_removeObjectAtIndex___int]

    XMLVM_VAR_THIZ;
    [thiz  removeObjectAtIndex:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_replaceObjectAtIndex___int_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  replaceObjectAtIndex:n1 withObject:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_addObjectsFromArray___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  addObjectsFromArray:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_exchangeObjectAtIndex___int_int]

    XMLVM_VAR_THIZ;
    [thiz  exchangeObjectAtIndex:n1 withObjectAtIndex:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_removeAllObjects__]

    XMLVM_VAR_THIZ;
    [thiz removeAllObjects];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_removeObject___java_lang_Object_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    [thiz  removeObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj inRange:toNSRange(n2)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_removeObject___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  removeObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_removeObjectIdenticalTo___java_lang_Object_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    [thiz  removeObjectIdenticalTo:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj inRange:toNSRange(n2)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_removeObjectIdenticalTo___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  removeObjectIdenticalTo:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_removeObjectsFromIndices___int_1ARRAY_int]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_INT_ARRAY(a1, n1); 
    [thiz  removeObjectsFromIndices:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ numIndices:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_removeObjectsInArray___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  removeObjectsInArray:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_removeObjectsInRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    [thiz  removeObjectsInRange:toNSRange(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_replaceObjectsInRange___org_xmlvm_ios_NSRange_java_util_List_org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar2 = toNSArray(n2);
    [thiz  replaceObjectsInRange:toNSRange(n1) withObjectsFromArray:ObjCVar2 range:toNSRange(n3)];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_replaceObjectsInRange___org_xmlvm_ios_NSRange_java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar2 = toNSArray(n2);
    [thiz  replaceObjectsInRange:toNSRange(n1) withObjectsFromArray:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_setArray___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setArray:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_sortUsingFunction___java_lang_Object_byte_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    [thiz  sortUsingFunction:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj context:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_sortUsingSelector___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_insertObjects___java_util_List_org_xmlvm_ios_NSIndexSet]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  insertObjects:ObjCVar1 atIndexes:(NSIndexSet*) (((org_xmlvm_ios_NSIndexSet*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_removeObjectsAtIndexes___org_xmlvm_ios_NSIndexSet]

    XMLVM_VAR_THIZ;
    [thiz  removeObjectsAtIndexes:(NSIndexSet*) (((org_xmlvm_ios_NSIndexSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_replaceObjectsAtIndexes___org_xmlvm_ios_NSIndexSet_java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar2 = toNSArray(n2);
    [thiz  replaceObjectsAtIndexes:(NSIndexSet*) (((org_xmlvm_ios_NSIndexSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) withObjects:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_sortUsingComparator___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  sortUsingComparator:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_sortWithOptions___int_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  sortWithOptions:n1 usingComparator:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_arrayWithCapacity___int]

    NSArray* var0 =  [NSMutableArray  arrayWithCapacity:n1];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_filterUsingPredicate___org_xmlvm_ios_NSPredicate]

    XMLVM_VAR_THIZ;
    [thiz  filterUsingPredicate:(NSPredicate*) (((org_xmlvm_ios_NSPredicate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableArray_sortUsingDescriptors___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  sortUsingDescriptors:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
