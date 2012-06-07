
//XMLVM_BEGIN_IMPLEMENTATION
CGPoint toCGPoint(void *obj)
{
    org_xmlvm_ios_CGPoint* objCObj = obj;
    CGPoint toRet;
    toRet.x = objCObj->fields.org_xmlvm_ios_CGPoint.x_;
    toRet.y = objCObj->fields.org_xmlvm_ios_CGPoint.y_;
    return toRet;
}
JAVA_OBJECT fromCGPoint(CGPoint obj)
{
    org_xmlvm_ios_CGPoint* jObj = __NEW_org_xmlvm_ios_CGPoint();
    org_xmlvm_ios_CGPoint___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CGPoint.x_ = obj.x;
    jObj->fields.org_xmlvm_ios_CGPoint.y_ = obj.y;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGPoint]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPoint___INIT____float_float]

    CGPoint var0 = CGPointMake(n1,n2);
    org_xmlvm_ios_CGPoint* jObj = me;
    jObj->fields.org_xmlvm_ios_CGPoint.x_ = var0.x;
    jObj->fields.org_xmlvm_ios_CGPoint.y_ = var0.y;
null//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPoint___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPoint_applyAffineTransform___org_xmlvm_ios_CGAffineTransform]

    CGPoint var0 = CGPointApplyAffineTransform(toCGPoint(me),toCGAffineTransform(n1));
    
    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPoint_equalToPoint___org_xmlvm_ios_CGPoint]

    BOOL var0 = CGPointEqualToPoint(toCGPoint(me),toCGPoint(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPoint_createDictionaryRepresentation__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPoint_makeWithDictionaryRepresentation___org_xmlvm_ios_CFDictionary_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPoint_fromString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    CGPoint var0 = CGPointFromString(ObjCVar1);
    
    [ObjCVar1 release];

    return fromCGPoint(var0);
//XMLVM_END_WRAPPER
