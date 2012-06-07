
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CFAllocator_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFAllocator]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAllocator___INIT____org_xmlvm_ios_CFAllocator_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CFAllocatorContext var2= toCFAllocatorContext(jObject2);
    
    CFAllocatorRef var0 = CFAllocatorCreate(var1,&var2);
        org_xmlvm_ios_CFAllocator_INTERNAL_CONSTRUCTOR(me, var0);
org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromCFAllocatorContext(var2));
    //XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAllocator___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAllocator_getTypeID__]

    long var0 = CFAllocatorGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAllocator_setDefault__]

    XMLVM_VAR_CFTHIZ;
    CFAllocatorSetDefault(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAllocator_getDefault__]

    CFAllocatorRef var0 = CFAllocatorGetDefault();
        XMLVM_VAR_INIT_REF(CFAllocator, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAllocator_allocate___long_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAllocator_reallocate___byte_1ARRAY_long_long]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAllocator_deallocate___byte_1ARRAY]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    CFAllocatorDeallocate(thiz,a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAllocator_getPreferredSizeForSize___long_long]

    XMLVM_VAR_CFTHIZ;
    
    long var0 = CFAllocatorGetPreferredSizeForSize(thiz,n1,n2);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFAllocator_getContext___org_xmlvm_ios_Reference]

    XMLVM_VAR_CFTHIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CFAllocatorContext var1= toCFAllocatorContext(jObject1);
    CFAllocatorGetContext(thiz,&var1);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCFAllocatorContext(var1));
    
    
//XMLVM_END_WRAPPER
