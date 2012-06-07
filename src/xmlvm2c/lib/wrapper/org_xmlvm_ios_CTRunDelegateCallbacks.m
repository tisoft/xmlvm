
//XMLVM_BEGIN_IMPLEMENTATION
CTRunDelegateCallbacks toCTRunDelegateCallbacks(void *obj)
{
    org_xmlvm_ios_CTRunDelegateCallbacks* objCObj = obj;
    CTRunDelegateCallbacks toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_CTRunDelegateCallbacks.version_;
    toRet.dealloc = objCObj->fields.org_xmlvm_ios_CTRunDelegateCallbacks.dealloc_;
    toRet.getAscent = objCObj->fields.org_xmlvm_ios_CTRunDelegateCallbacks.getAscent_;
    toRet.getDescent = objCObj->fields.org_xmlvm_ios_CTRunDelegateCallbacks.getDescent_;
    toRet.getWidth = objCObj->fields.org_xmlvm_ios_CTRunDelegateCallbacks.getWidth_;
    return toRet;
}
JAVA_OBJECT fromCTRunDelegateCallbacks(CTRunDelegateCallbacks obj)
{
    org_xmlvm_ios_CTRunDelegateCallbacks* jObj = __NEW_org_xmlvm_ios_CTRunDelegateCallbacks();
    org_xmlvm_ios_CTRunDelegateCallbacks___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CTRunDelegateCallbacks.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_CTRunDelegateCallbacks.dealloc_ = obj.dealloc;
    jObj->fields.org_xmlvm_ios_CTRunDelegateCallbacks.getAscent_ = obj.getAscent;
    jObj->fields.org_xmlvm_ios_CTRunDelegateCallbacks.getDescent_ = obj.getDescent;
    jObj->fields.org_xmlvm_ios_CTRunDelegateCallbacks.getWidth_ = obj.getWidth;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CTRunDelegateCallbacks]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTRunDelegateCallbacks___INIT___]
//XMLVM_END_WRAPPER
