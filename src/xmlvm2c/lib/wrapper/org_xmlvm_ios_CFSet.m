
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFSet (CFSetWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFSet (CFSetWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFSet.classInitialized)
        __INIT_org_xmlvm_ios_CFSet();
}
@end

void org_xmlvm_ios_CFSet_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFSet class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFSet();
        org_xmlvm_ios_CFSet_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFSet]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFSet]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet___INIT____org_xmlvm_ios_CFAllocator_byte_2ARRAY_long_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    CFSetCallBacks var4= toCFSetCallBacks(jObject4);
    
    CFSet* var0 = [[CFSet alloc] create:var1];
    org_xmlvm_ios_CFSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet___INIT___]
    CFSet* var0 = [[CFSet alloc ] init];
    org_xmlvm_ios_CFSet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_createCopy___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFSet]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFSet* var0 = CFHostCreateCopy(var1,(CFSet*) (((org_xmlvm_ios_CFSet*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_createMutable___org_xmlvm_ios_CFAllocator_long_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CFSetCallBacks var3= toCFSetCallBacks(jObject3);
    
    CFSet* var0 = ABMultiValueCreateMutable(var1,n2,&var3);
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, fromCFSetCallBacks(var3));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_createMutableCopy___org_xmlvm_ios_CFAllocator_long_org_xmlvm_ios_CFSet]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFSet* var0 = ABMultiValueCreateMutableCopy(var1,n2,(CFSet*) (((org_xmlvm_ios_CFSet*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_getCount__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_getCountOfValue___byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_containsValue___byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_getValue___byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_getValueIfPresent___byte_1ARRAY_byte_2ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_getValues___byte_2ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_applyFunction___java_lang_Object_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_addValue___org_xmlvm_ios_CFSet_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    CFBagAddValue((CFSet*) (((org_xmlvm_ios_CFSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_replaceValue___org_xmlvm_ios_CFSet_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    CFBagReplaceValue((CFSet*) (((org_xmlvm_ios_CFSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_setValue___org_xmlvm_ios_CFSet_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    ABRecordSetValue((CFSet*) (((org_xmlvm_ios_CFSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_removeValue___org_xmlvm_ios_CFSet_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    ABRecordRemoveValue((CFSet*) (((org_xmlvm_ios_CFSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSet_removeAllValues___org_xmlvm_ios_CFSet]
CFArrayRemoveAllValues((CFSet*) (((org_xmlvm_ios_CFSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER
