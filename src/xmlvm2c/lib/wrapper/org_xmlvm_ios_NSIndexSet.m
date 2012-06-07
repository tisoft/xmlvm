
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSIndexSet (NSIndexSetWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSIndexSet (NSIndexSetWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSIndexSet.classInitialized)
        __INIT_org_xmlvm_ios_NSIndexSet();
}
@end

void org_xmlvm_ios_NSIndexSet_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSIndexSet class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSIndexSet();
        org_xmlvm_ios_NSIndexSet_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSIndexSet]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSIndexSet]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet___INIT___]

    NSIndexSet* var0 = [[NSIndexSet alloc]init];

    org_xmlvm_ios_NSIndexSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet___INIT____int]

    NSIndexSet* var0 = [[NSIndexSet alloc] initWithIndex:n1];
    org_xmlvm_ios_NSIndexSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet___INIT____org_xmlvm_ios_NSRange]

    NSIndexSet* var0 = [[NSIndexSet alloc] initWithIndexesInRange:toNSRange(n1)];
    org_xmlvm_ios_NSIndexSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet___INIT____org_xmlvm_ios_NSIndexSet]

    NSIndexSet* var0 = [[NSIndexSet alloc] initWithIndexSet:(NSIndexSet*) (((org_xmlvm_ios_NSIndexSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSIndexSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet___INIT___]
    NSIndexSet* var0 = [[NSIndexSet alloc ] init];
    org_xmlvm_ios_NSIndexSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_indexSet__]

    NSIndexSet* var0 =  [NSIndexSet indexSet];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_indexSetWithIndex___int]

    NSIndexSet* var0 =  [NSIndexSet  indexSetWithIndex:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_indexSetWithIndexesInRange___org_xmlvm_ios_NSRange]

    NSIndexSet* var0 =  [NSIndexSet  indexSetWithIndexesInRange:toNSRange(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_isEqualToIndexSet___org_xmlvm_ios_NSIndexSet]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  isEqualToIndexSet:(NSIndexSet*) (((org_xmlvm_ios_NSIndexSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_count__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz count];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_firstIndex__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz firstIndex];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_lastIndex__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz lastIndex];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_indexGreaterThanIndex___int]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  indexGreaterThanIndex:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_indexLessThanIndex___int]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  indexLessThanIndex:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_indexGreaterThanOrEqualToIndex___int]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  indexGreaterThanOrEqualToIndex:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_indexLessThanOrEqualToIndex___int]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  indexLessThanOrEqualToIndex:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_getIndexes___int_1ARRAY_int_org_xmlvm_ios_Reference]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_INT_ARRAY(a1, n1); 
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    NSRange var3= toNSRange(jObject3);
    
    int var0 = [thiz  getIndexes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ maxCount:n2 inIndexRange:&var3];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_countOfIndexesInRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  countOfIndexesInRange:toNSRange(n1)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_containsIndex___int]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  containsIndex:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_containsIndexesInRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  containsIndexesInRange:toNSRange(n1)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_containsIndexes___org_xmlvm_ios_NSIndexSet]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  containsIndexes:(NSIndexSet*) (((org_xmlvm_ios_NSIndexSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_intersectsIndexesInRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  intersectsIndexesInRange:toNSRange(n1)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_enumerateIndexesUsingBlock___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  enumerateIndexesUsingBlock:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_enumerateIndexesWithOptions___int_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  enumerateIndexesWithOptions:n1 usingBlock:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_enumerateIndexesInRange___org_xmlvm_ios_NSRange_int_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  enumerateIndexesInRange:toNSRange(n1) options:n2 usingBlock:((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_indexPassingTest___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  indexPassingTest:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_indexWithOptions___int_java_lang_Object]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  indexWithOptions:n1 passingTest:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_indexInRange___org_xmlvm_ios_NSRange_int_java_lang_Object]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  indexInRange:toNSRange(n1) options:n2 passingTest:((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_indexesPassingTest___java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSIndexSet* var0 = [thiz  indexesPassingTest:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_indexesWithOptions___int_java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSIndexSet* var0 = [thiz  indexesWithOptions:n1 passingTest:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSIndexSet_indexesInRange___org_xmlvm_ios_NSRange_int_java_lang_Object]

    XMLVM_VAR_THIZ;
    
    NSIndexSet* var0 = [thiz  indexesInRange:toNSRange(n1) options:n2 passingTest:((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
