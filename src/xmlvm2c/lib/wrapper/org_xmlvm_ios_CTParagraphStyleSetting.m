
//XMLVM_BEGIN_IMPLEMENTATION
CTParagraphStyleSetting toCTParagraphStyleSetting(void *obj)
{
    org_xmlvm_ios_CTParagraphStyleSetting* objCObj = obj;
    CTParagraphStyleSetting toRet;
    toRet.spec = objCObj->fields.org_xmlvm_ios_CTParagraphStyleSetting.spec_;
    toRet.valueSize = objCObj->fields.org_xmlvm_ios_CTParagraphStyleSetting.valueSize_;
    toRet.value = objCObj->fields.org_xmlvm_ios_CTParagraphStyleSetting.value_;
    return toRet;
}
JAVA_OBJECT fromCTParagraphStyleSetting(CTParagraphStyleSetting obj)
{
    org_xmlvm_ios_CTParagraphStyleSetting* jObj = __NEW_org_xmlvm_ios_CTParagraphStyleSetting();
    org_xmlvm_ios_CTParagraphStyleSetting___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CTParagraphStyleSetting.spec_ = obj.spec;
    jObj->fields.org_xmlvm_ios_CTParagraphStyleSetting.valueSize_ = obj.valueSize;
    jObj->fields.org_xmlvm_ios_CTParagraphStyleSetting.value_ = obj.value;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CTParagraphStyleSetting]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTParagraphStyleSetting___INIT___]
//XMLVM_END_WRAPPER
