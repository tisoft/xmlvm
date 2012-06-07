
//XMLVM_BEGIN_IMPLEMENTATION
CFStringInlineBuffer toCFStringInlineBuffer(void *obj)
{
    org_xmlvm_ios_CFStringInlineBuffer* objCObj = obj;
    CFStringInlineBuffer toRet;
    toRet.theString = objCObj->fields.org_xmlvm_ios_CFStringInlineBuffer.theString_;
    toRet.directBuffer = objCObj->fields.org_xmlvm_ios_CFStringInlineBuffer.directBuffer_;
    toRet.rangeToBuffer = toCFRange(objCObj->fields.org_xmlvm_ios_CFStringInlineBuffer.rangeToBuffer_);
    toRet.bufferedRangeStart = objCObj->fields.org_xmlvm_ios_CFStringInlineBuffer.bufferedRangeStart_;
    toRet.bufferedRangeEnd = objCObj->fields.org_xmlvm_ios_CFStringInlineBuffer.bufferedRangeEnd_;
    return toRet;
}
JAVA_OBJECT fromCFStringInlineBuffer(CFStringInlineBuffer obj)
{
    org_xmlvm_ios_CFStringInlineBuffer* jObj = __NEW_org_xmlvm_ios_CFStringInlineBuffer();
    org_xmlvm_ios_CFStringInlineBuffer___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFStringInlineBuffer.theString_ = obj.theString;
    jObj->fields.org_xmlvm_ios_CFStringInlineBuffer.directBuffer_ = obj.directBuffer;
    jObj->fields.org_xmlvm_ios_CFStringInlineBuffer.rangeToBuffer_ = fromCFRange(obj.rangeToBuffer);
    jObj->fields.org_xmlvm_ios_CFStringInlineBuffer.bufferedRangeStart_ = obj.bufferedRangeStart;
    jObj->fields.org_xmlvm_ios_CFStringInlineBuffer.bufferedRangeEnd_ = obj.bufferedRangeEnd;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFStringInlineBuffer]
    me->fields.org_xmlvm_ios_CFStringInlineBuffer.rangeToBuffer_ = __NEW_org_xmlvm_ios_CFRange();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFStringInlineBuffer___INIT___]
//XMLVM_END_WRAPPER
