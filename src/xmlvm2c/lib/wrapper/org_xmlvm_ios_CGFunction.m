
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CGFunction_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGFunction]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFunction___INIT____byte_1ARRAY_int_float_1ARRAY_int_float_1ARRAY_org_xmlvm_ios_Reference]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_FLOAT_ARRAY(a3, n3); 
    XMLVM_VAR_FLOAT_ARRAY(a5, n5); 
    JAVA_OBJECT jObject6 = org_xmlvm_ios_Reference_get__(n6);
    CGFunctionCallbacks var6= toCGFunctionCallbacks(jObject6);
    
    CGFunctionRef var0 = CGFunctionCreate(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,n4,a5->fields.org_xmlvm_runtime_XMLVMArray.array_,&var6);
        org_xmlvm_ios_CGFunction_INTERNAL_CONSTRUCTOR(me, var0);
org_xmlvm_ios_Reference_set___java_lang_Object(n6, fromCGFunctionCallbacks(var6));
    //XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFunction___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFunction_getTypeID__]

    long var0 = CGFunctionGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFunction_retain__]

    XMLVM_VAR_CFTHIZ;
    
    CGFunctionRef var0 = CGFunctionRetain(thiz);
        XMLVM_VAR_INIT_REF(CGFunction, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGFunction_release__]

    XMLVM_VAR_CFTHIZ;
    CGFunctionRelease(thiz);
    
    
//XMLVM_END_WRAPPER
