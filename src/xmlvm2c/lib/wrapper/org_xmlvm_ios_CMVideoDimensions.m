
//XMLVM_BEGIN_IMPLEMENTATION
CMVideoDimensions toCMVideoDimensions(void *obj)
{
    org_xmlvm_ios_CMVideoDimensions* objCObj = obj;
    CMVideoDimensions toRet;
    toRet.width = objCObj->fields.org_xmlvm_ios_CMVideoDimensions.width_;
    toRet.height = objCObj->fields.org_xmlvm_ios_CMVideoDimensions.height_;
    return toRet;
}
JAVA_OBJECT fromCMVideoDimensions(CMVideoDimensions obj)
{
    org_xmlvm_ios_CMVideoDimensions* jObj = __NEW_org_xmlvm_ios_CMVideoDimensions();
    org_xmlvm_ios_CMVideoDimensions___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CMVideoDimensions.width_ = obj.width;
    jObj->fields.org_xmlvm_ios_CMVideoDimensions.height_ = obj.height;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CMVideoDimensions]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMVideoDimensions___INIT___]
//XMLVM_END_WRAPPER
