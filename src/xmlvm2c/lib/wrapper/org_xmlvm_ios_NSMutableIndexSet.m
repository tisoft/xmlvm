
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSMutableIndexSet (NSMutableIndexSetWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSMutableIndexSet (NSMutableIndexSetWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSMutableIndexSet.classInitialized)
        __INIT_org_xmlvm_ios_NSMutableIndexSet();
}
@end

void org_xmlvm_ios_NSMutableIndexSet_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSIndexSet_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSMutableIndexSet class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSMutableIndexSet();
        org_xmlvm_ios_NSMutableIndexSet_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSMutableIndexSet]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSMutableIndexSet]
__DELETE_org_xmlvm_ios_NSIndexSet(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableIndexSet___INIT___]
    NSMutableIndexSet* var0 = [[NSMutableIndexSet alloc ] init];
    org_xmlvm_ios_NSMutableIndexSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableIndexSet___INIT___]

    NSMutableIndexSet* var0 = [[NSMutableIndexSet alloc]init];

    org_xmlvm_ios_NSMutableIndexSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableIndexSet___INIT____int]

    NSMutableIndexSet* var0 = [[NSMutableIndexSet alloc] initWithIndex:n1];
    org_xmlvm_ios_NSMutableIndexSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableIndexSet___INIT____org_xmlvm_ios_NSRange]

    NSMutableIndexSet* var0 = [[NSMutableIndexSet alloc] initWithIndexesInRange:toNSRange(n1)];
    org_xmlvm_ios_NSMutableIndexSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableIndexSet___INIT____org_xmlvm_ios_NSIndexSet]

    NSMutableIndexSet* var0 = [[NSMutableIndexSet alloc] initWithIndexSet:(NSIndexSet*) (((org_xmlvm_ios_NSIndexSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSMutableIndexSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableIndexSet___INIT___]
    NSMutableIndexSet* var0 = [[NSMutableIndexSet alloc ] init];
    org_xmlvm_ios_NSMutableIndexSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableIndexSet_addIndexes___org_xmlvm_ios_NSIndexSet]

    XMLVM_VAR_THIZ;
    [thiz  addIndexes:(NSIndexSet*) (((org_xmlvm_ios_NSIndexSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableIndexSet_removeIndexes___org_xmlvm_ios_NSIndexSet]

    XMLVM_VAR_THIZ;
    [thiz  removeIndexes:(NSIndexSet*) (((org_xmlvm_ios_NSIndexSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableIndexSet_removeAllIndexes__]

    XMLVM_VAR_THIZ;
    [thiz removeAllIndexes];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableIndexSet_addIndex___int]

    XMLVM_VAR_THIZ;
    [thiz  addIndex:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableIndexSet_removeIndex___int]

    XMLVM_VAR_THIZ;
    [thiz  removeIndex:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableIndexSet_addIndexesInRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    [thiz  addIndexesInRange:toNSRange(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableIndexSet_removeIndexesInRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    [thiz  removeIndexesInRange:toNSRange(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMutableIndexSet_shiftIndexesStartingAtIndex___int_int]

    XMLVM_VAR_THIZ;
    [thiz  shiftIndexesStartingAtIndex:n1 by:n2];

    
//XMLVM_END_WRAPPER
