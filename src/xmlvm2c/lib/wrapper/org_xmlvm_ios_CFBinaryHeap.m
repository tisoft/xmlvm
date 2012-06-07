
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFBinaryHeap (CFBinaryHeapWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFBinaryHeap (CFBinaryHeapWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFBinaryHeap.classInitialized)
        __INIT_org_xmlvm_ios_CFBinaryHeap();
}
@end

void org_xmlvm_ios_CFBinaryHeap_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFBinaryHeap class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFBinaryHeap();
        org_xmlvm_ios_CFBinaryHeap_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFBinaryHeap]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFBinaryHeap]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBinaryHeap___INIT____org_xmlvm_ios_CFAllocator_long_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CFBinaryHeapCallBacks var3= toCFBinaryHeapCallBacks(jObject3);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    CFBinaryHeapCompareContext var4= toCFBinaryHeapCompareContext(jObject4);
    
    CFBinaryHeap* var0 = [[CFBinaryHeap alloc] create:var1];
    org_xmlvm_ios_CFBinaryHeap_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBinaryHeap___INIT___]
    CFBinaryHeap* var0 = [[CFBinaryHeap alloc ] init];
    org_xmlvm_ios_CFBinaryHeap_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBinaryHeap_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBinaryHeap_createCopy___org_xmlvm_ios_CFAllocator_long_org_xmlvm_ios_CFBinaryHeap]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFBinaryHeap* var0 = CFHostCreateCopy(var1,n2,(CFBinaryHeap*) (((org_xmlvm_ios_CFBinaryHeap*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBinaryHeap_getCount__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBinaryHeap_getCountOfValue___byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBinaryHeap_containsValue___byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBinaryHeap_getMinimum__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBinaryHeap_getMinimumIfPresent___byte_2ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBinaryHeap_getValues___byte_2ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBinaryHeap_applyFunction___java_lang_Object_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBinaryHeap_addValue___byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBinaryHeap_removeMinimumValue__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBinaryHeap_removeAllValues__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
