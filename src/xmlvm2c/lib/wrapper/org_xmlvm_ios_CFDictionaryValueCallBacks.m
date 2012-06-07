
//XMLVM_BEGIN_IMPLEMENTATION
CFDictionaryValueCallBacks toCFDictionaryValueCallBacks(void *obj)
{
    org_xmlvm_ios_CFDictionaryValueCallBacks* objCObj = obj;
    CFDictionaryValueCallBacks toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.version_;
    toRet.retain = objCObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.retain_;
    toRet.release = objCObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.release_;
    toRet.copyDescription = objCObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.copyDescription_;
    toRet.equal = objCObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.equal_;
    return toRet;
}
JAVA_OBJECT fromCFDictionaryValueCallBacks(CFDictionaryValueCallBacks obj)
{
    org_xmlvm_ios_CFDictionaryValueCallBacks* jObj = __NEW_org_xmlvm_ios_CFDictionaryValueCallBacks();
    org_xmlvm_ios_CFDictionaryValueCallBacks___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.retain_ = obj.retain;
    jObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.release_ = obj.release;
    jObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.copyDescription_ = obj.copyDescription;
    jObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.equal_ = obj.equal;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFDictionaryValueCallBacks]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFDictionaryValueCallBacks___INIT___]
//XMLVM_END_WRAPPER
