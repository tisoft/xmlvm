
//XMLVM_BEGIN_IMPLEMENTATION
CGRect toCGRect(void *obj)
{
    org_xmlvm_ios_CGRect* objCObj = obj;
    CGRect toRet;
    toRet.origin = toCGPoint(objCObj->fields.org_xmlvm_ios_CGRect.origin_);
    toRet.size = toCGSize(objCObj->fields.org_xmlvm_ios_CGRect.size_);
    return toRet;
}
JAVA_OBJECT fromCGRect(CGRect obj)
{
    org_xmlvm_ios_CGRect* jObj = __NEW_org_xmlvm_ios_CGRect();
    org_xmlvm_ios_CGRect___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CGRect.origin_ = fromCGPoint(obj.origin);
    jObj->fields.org_xmlvm_ios_CGRect.size_ = fromCGSize(obj.size);
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGRect]
    me->fields.org_xmlvm_ios_CGRect.origin_ = __NEW_org_xmlvm_ios_CGPoint();
    me->fields.org_xmlvm_ios_CGRect.size_ = __NEW_org_xmlvm_ios_CGSize();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect___INIT____float_float_float_float]

    CGRect var0 = CGRectMake(n1,n2,n3,n4);
    org_xmlvm_ios_CGRect* jObj = me;
    jObj->fields.org_xmlvm_ios_CGRect.origin_ = fromCGPoint(var0.origin);
    jObj->fields.org_xmlvm_ios_CGRect.size_ = fromCGSize(var0.size);
null//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_applyAffineTransform___org_xmlvm_ios_CGAffineTransform]

    CGRect var0 = CGRectApplyAffineTransform(toCGRect(me),toCGAffineTransform(n1));
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_getMinX__]

    float var0 = CGRectGetMinX(toCGRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_getMidX__]

    float var0 = CGRectGetMidX(toCGRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_getMaxX__]

    float var0 = CGRectGetMaxX(toCGRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_getMinY__]

    float var0 = CGRectGetMinY(toCGRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_getMidY__]

    float var0 = CGRectGetMidY(toCGRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_getMaxY__]

    float var0 = CGRectGetMaxY(toCGRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_getWidth__]

    float var0 = CGRectGetWidth(toCGRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_getHeight__]

    float var0 = CGRectGetHeight(toCGRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_equalToRect___org_xmlvm_ios_CGRect]

    BOOL var0 = CGRectEqualToRect(toCGRect(me),toCGRect(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_standardize__]

    CGRect var0 = CGRectStandardize(toCGRect(me));
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_isEmpty__]

    BOOL var0 = CGRectIsEmpty(toCGRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_isNull__]

    BOOL var0 = CGRectIsNull(toCGRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_isInfinite__]

    BOOL var0 = CGRectIsInfinite(toCGRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_inset___float_float]

    CGRect var0 = CGRectInset(toCGRect(me),n1,n2);
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_integral__]

    CGRect var0 = CGRectIntegral(toCGRect(me));
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_union___org_xmlvm_ios_CGRect]

    CGRect var0 = CGRectUnion(toCGRect(me),toCGRect(n1));
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_intersection___org_xmlvm_ios_CGRect]

    CGRect var0 = CGRectIntersection(toCGRect(me),toCGRect(n1));
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_offset___float_float]

    CGRect var0 = CGRectOffset(toCGRect(me),n1,n2);
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_divide___org_xmlvm_ios_Reference_org_xmlvm_ios_Reference_float_int]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CGRect var1= toCGRect(jObject1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGRect var2= toCGRect(jObject2);
    CGRectDivide(toCGRect(me),&var1,&var2,n3,n4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromCGRect(var2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_containsPoint___org_xmlvm_ios_CGPoint]

    BOOL var0 = CGRectContainsPoint(toCGRect(me),toCGPoint(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_containsRect___org_xmlvm_ios_CGRect]

    BOOL var0 = CGRectContainsRect(toCGRect(me),toCGRect(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_intersectsRect___org_xmlvm_ios_CGRect]

    BOOL var0 = CGRectIntersectsRect(toCGRect(me),toCGRect(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_createDictionaryRepresentation__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_makeWithDictionaryRepresentation___org_xmlvm_ios_CFDictionary_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect_fromString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    CGRect var0 = CGRectFromString(ObjCVar1);
    
    [ObjCVar1 release];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER
