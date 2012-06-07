
//XMLVM_BEGIN_IMPLEMENTATION
CFDictionaryKeyCallBacks toCFDictionaryKeyCallBacks(void *obj)
{
    org_xmlvm_ios_CFDictionaryKeyCallBacks* objCObj = obj;
    CFDictionaryKeyCallBacks toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.version_;
    toRet.retain = objCObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.retain_;
    toRet.release = objCObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.release_;
    toRet.copyDescription = objCObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.copyDescription_;
    toRet.equal = objCObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.equal_;
    toRet.hash = objCObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.hash_;
    return toRet;
}
JAVA_OBJECT fromCFDictionaryKeyCallBacks(CFDictionaryKeyCallBacks obj)
{
    org_xmlvm_ios_CFDictionaryKeyCallBacks* jObj = __NEW_org_xmlvm_ios_CFDictionaryKeyCallBacks();
    org_xmlvm_ios_CFDictionaryKeyCallBacks___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.retain_ = obj.retain;
    jObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.release_ = obj.release;
    jObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.copyDescription_ = obj.copyDescription;
    jObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.equal_ = obj.equal;
    jObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.hash_ = obj.hash;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFDictionaryKeyCallBacks]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFDictionaryKeyCallBacks___INIT___]
//XMLVM_END_WRAPPER
