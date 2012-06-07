
//XMLVM_BEGIN_IMPLEMENTATION
CFRange toCFRange(void *obj)
{
    org_xmlvm_ios_CFRange* objCObj = obj;
    CFRange toRet;
    toRet.location = objCObj->fields.org_xmlvm_ios_CFRange.location_;
    toRet.length = objCObj->fields.org_xmlvm_ios_CFRange.length_;
    return toRet;
}
JAVA_OBJECT fromCFRange(CFRange obj)
{
    org_xmlvm_ios_CFRange* jObj = __NEW_org_xmlvm_ios_CFRange();
    org_xmlvm_ios_CFRange___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFRange.location_ = obj.location;
    jObj->fields.org_xmlvm_ios_CFRange.length_ = obj.length;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFRange]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRange___INIT____long_long]

    CFRange var0 = CFRangeMake(n1,n2);
    org_xmlvm_ios_CFRange* jObj = me;
    jObj->fields.org_xmlvm_ios_CFRange.location_ = var0.location;
    jObj->fields.org_xmlvm_ios_CFRange.length_ = var0.length;
null//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRange___INIT___]
//XMLVM_END_WRAPPER
