
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CGDataProvider_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGDataProvider]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataProvider___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataProvider_getTypeID__]

    long var0 = CGDataProviderGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataProvider_createSequential___byte_1ARRAY_org_xmlvm_ios_Reference]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGDataProviderSequentialCallbacks var2= toCGDataProviderSequentialCallbacks(jObject2);
    
    CGDataProviderRef var0 = CGDataProviderCreateSequential(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,&var2);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromCGDataProviderSequentialCallbacks(var2));
        XMLVM_VAR_INIT_REF(CGDataProvider, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataProvider_createDirect___byte_1ARRAY_int_org_xmlvm_ios_Reference]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CGDataProviderDirectCallbacks var3= toCGDataProviderDirectCallbacks(jObject3);
    
    CGDataProviderRef var0 = CGDataProviderCreateDirect(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,n2,&var3);
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, fromCGDataProviderDirectCallbacks(var3));
        XMLVM_VAR_INIT_REF(CGDataProvider, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataProvider_createWithData___byte_1ARRAY_byte_1ARRAY_int_java_lang_Object]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    CGDataProviderRef var0 = CGDataProviderCreateWithData(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3,((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj);
        XMLVM_VAR_INIT_REF(CGDataProvider, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataProvider_createWithCFData___org_xmlvm_ios_CFData]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataProvider_createWithURL___org_xmlvm_ios_CFURL]
XMLVM_VAR_IOS_REF(CFURL, var1, n1);
    
    CGDataProviderRef var0 = CGDataProviderCreateWithURL(var1);
        XMLVM_VAR_INIT_REF(CGDataProvider, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataProvider_createWithFilename___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    CGDataProviderRef var0 = CGDataProviderCreateWithFilename(a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
        XMLVM_VAR_INIT_REF(CGDataProvider, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataProvider_retain__]

    XMLVM_VAR_CFTHIZ;
    
    CGDataProviderRef var0 = CGDataProviderRetain(thiz);
        XMLVM_VAR_INIT_REF(CGDataProvider, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataProvider_release__]

    XMLVM_VAR_CFTHIZ;
    CGDataProviderRelease(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataProvider_copyData__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
