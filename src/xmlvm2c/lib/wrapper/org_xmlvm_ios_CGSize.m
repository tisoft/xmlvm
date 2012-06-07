
//XMLVM_BEGIN_IMPLEMENTATION
CGSize toCGSize(void *obj)
{
    org_xmlvm_ios_CGSize* objCObj = obj;
    CGSize toRet;
    toRet.width = objCObj->fields.org_xmlvm_ios_CGSize.width_;
    toRet.height = objCObj->fields.org_xmlvm_ios_CGSize.height_;
    return toRet;
}
JAVA_OBJECT fromCGSize(CGSize obj)
{
    org_xmlvm_ios_CGSize* jObj = __NEW_org_xmlvm_ios_CGSize();
    org_xmlvm_ios_CGSize___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CGSize.width_ = obj.width;
    jObj->fields.org_xmlvm_ios_CGSize.height_ = obj.height;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGSize]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGSize___INIT____float_float]

    CGSize var0 = CGSizeMake(n1,n2);
    org_xmlvm_ios_CGSize* jObj = me;
    jObj->fields.org_xmlvm_ios_CGSize.width_ = var0.width;
    jObj->fields.org_xmlvm_ios_CGSize.height_ = var0.height;
null//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGSize___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGSize_applyAffineTransform___org_xmlvm_ios_CGAffineTransform]

    CGSize var0 = CGSizeApplyAffineTransform(toCGSize(me),toCGAffineTransform(n1));
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGSize_equalToSize___org_xmlvm_ios_CGSize]

    BOOL var0 = CGSizeEqualToSize(toCGSize(me),toCGSize(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGSize_createDictionaryRepresentation__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGSize_makeWithDictionaryRepresentation___org_xmlvm_ios_CFDictionary_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGSize_fromString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    CGSize var0 = CGSizeFromString(ObjCVar1);
    
    [ObjCVar1 release];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER
