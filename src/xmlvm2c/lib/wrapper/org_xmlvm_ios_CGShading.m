
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CGShading_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGShading]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGShading___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGShading_getTypeID__]

    long var0 = CGShadingGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGShading_createAxial___org_xmlvm_ios_CGColorSpace_org_xmlvm_ios_CGPoint_org_xmlvm_ios_CGPoint_org_xmlvm_ios_CGFunction_boolean_boolean]
XMLVM_VAR_IOS_REF(CGColorSpace, var1, n1);
    XMLVM_VAR_IOS_REF(CGFunction, var4, n4);
    
    CGShadingRef var0 = CGShadingCreateAxial(var1,toCGPoint(n2),toCGPoint(n3),var4,n5,n6);
        XMLVM_VAR_INIT_REF(CGShading, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGShading_createRadial___org_xmlvm_ios_CGColorSpace_org_xmlvm_ios_CGPoint_float_org_xmlvm_ios_CGPoint_float_org_xmlvm_ios_CGFunction_boolean_boolean]
XMLVM_VAR_IOS_REF(CGColorSpace, var1, n1);
    XMLVM_VAR_IOS_REF(CGFunction, var6, n6);
    
    CGShadingRef var0 = CGShadingCreateRadial(var1,toCGPoint(n2),n3,toCGPoint(n4),n5,var6,n7,n8);
        XMLVM_VAR_INIT_REF(CGShading, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGShading_retain__]

    XMLVM_VAR_CFTHIZ;
    
    CGShadingRef var0 = CGShadingRetain(thiz);
        XMLVM_VAR_INIT_REF(CGShading, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGShading_release__]

    XMLVM_VAR_CFTHIZ;
    CGShadingRelease(thiz);
    
    
//XMLVM_END_WRAPPER
