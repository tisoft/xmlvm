
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CGPattern_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGPattern]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPattern___INIT____byte_1ARRAY_org_xmlvm_ios_CGRect_org_xmlvm_ios_CGAffineTransform_float_float_int_boolean_org_xmlvm_ios_Reference]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    JAVA_OBJECT jObject8 = org_xmlvm_ios_Reference_get__(n8);
    CGPatternCallbacks var8= toCGPatternCallbacks(jObject8);
    
    CGPatternRef var0 = CGPatternCreate(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,toCGRect(n2),toCGAffineTransform(n3),n4,n5,n6,n7,&var8);
        org_xmlvm_ios_CGPattern_INTERNAL_CONSTRUCTOR(me, var0);
org_xmlvm_ios_Reference_set___java_lang_Object(n8, fromCGPatternCallbacks(var8));
    //XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPattern___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPattern_getTypeID__]

    long var0 = CGPatternGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPattern_retain__]

    XMLVM_VAR_CFTHIZ;
    
    CGPatternRef var0 = CGPatternRetain(thiz);
        XMLVM_VAR_INIT_REF(CGPattern, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPattern_release__]

    XMLVM_VAR_CFTHIZ;
    CGPatternRelease(thiz);
    
    
//XMLVM_END_WRAPPER
