
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFBag (CFBagWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFBag (CFBagWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFBag.classInitialized)
        __INIT_org_xmlvm_ios_CFBag();
}
@end

void org_xmlvm_ios_CFBag_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFBag class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFBag();
        org_xmlvm_ios_CFBag_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFBag]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFBag]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag___INIT____org_xmlvm_ios_CFAllocator_byte_2ARRAY_long_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    CFBagCallBacks var4= toCFBagCallBacks(jObject4);
    
    CFBag* var0 = [[CFBag alloc] create:var1];
    org_xmlvm_ios_CFBag_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag___INIT___]
    CFBag* var0 = [[CFBag alloc ] init];
    org_xmlvm_ios_CFBag_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_createCopy___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFBag]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFBag* var0 = CFHostCreateCopy(var1,(CFBag*) (((org_xmlvm_ios_CFBag*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_createMutable___org_xmlvm_ios_CFAllocator_long_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CFBagCallBacks var3= toCFBagCallBacks(jObject3);
    
    CFBag* var0 = ABMultiValueCreateMutable(var1,n2,&var3);
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, fromCFBagCallBacks(var3));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_createMutableCopy___org_xmlvm_ios_CFAllocator_long_org_xmlvm_ios_CFBag]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFBag* var0 = ABMultiValueCreateMutableCopy(var1,n2,(CFBag*) (((org_xmlvm_ios_CFBag*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_getCount__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_getCountOfValue___byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_containsValue___byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_getValue___byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_getValueIfPresent___byte_1ARRAY_byte_2ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_getValues___byte_2ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_applyFunction___java_lang_Object_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_addValue___org_xmlvm_ios_CFBag_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    CFBagAddValue((CFBag*) (((org_xmlvm_ios_CFBag*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_replaceValue___org_xmlvm_ios_CFBag_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    CFBagReplaceValue((CFBag*) (((org_xmlvm_ios_CFBag*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_setValue___org_xmlvm_ios_CFBag_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    ABRecordSetValue((CFBag*) (((org_xmlvm_ios_CFBag*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_removeValue___org_xmlvm_ios_CFBag_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    ABRecordRemoveValue((CFBag*) (((org_xmlvm_ios_CFBag*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFBag_removeAllValues___org_xmlvm_ios_CFBag]
CFArrayRemoveAllValues((CFBag*) (((org_xmlvm_ios_CFBag*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER
