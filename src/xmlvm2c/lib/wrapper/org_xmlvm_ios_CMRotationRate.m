
//XMLVM_BEGIN_IMPLEMENTATION
CMRotationRate toCMRotationRate(void *obj)
{
    org_xmlvm_ios_CMRotationRate* objCObj = obj;
    CMRotationRate toRet;
    toRet.x = objCObj->fields.org_xmlvm_ios_CMRotationRate.x_;
    toRet.y = objCObj->fields.org_xmlvm_ios_CMRotationRate.y_;
    toRet.z = objCObj->fields.org_xmlvm_ios_CMRotationRate.z_;
    return toRet;
}
JAVA_OBJECT fromCMRotationRate(CMRotationRate obj)
{
    org_xmlvm_ios_CMRotationRate* jObj = __NEW_org_xmlvm_ios_CMRotationRate();
    org_xmlvm_ios_CMRotationRate___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CMRotationRate.x_ = obj.x;
    jObj->fields.org_xmlvm_ios_CMRotationRate.y_ = obj.y;
    jObj->fields.org_xmlvm_ios_CMRotationRate.z_ = obj.z;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CMRotationRate]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMRotationRate___INIT___]
//XMLVM_END_WRAPPER
