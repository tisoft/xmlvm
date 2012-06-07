
//XMLVM_BEGIN_IMPLEMENTATION
AudioConverterPrimeInfo toAudioConverterPrimeInfo(void *obj)
{
    org_xmlvm_ios_AudioConverterPrimeInfo* objCObj = obj;
    AudioConverterPrimeInfo toRet;
    toRet.leadingFrames = objCObj->fields.org_xmlvm_ios_AudioConverterPrimeInfo.leadingFrames_;
    toRet.trailingFrames = objCObj->fields.org_xmlvm_ios_AudioConverterPrimeInfo.trailingFrames_;
    return toRet;
}
JAVA_OBJECT fromAudioConverterPrimeInfo(AudioConverterPrimeInfo obj)
{
    org_xmlvm_ios_AudioConverterPrimeInfo* jObj = __NEW_org_xmlvm_ios_AudioConverterPrimeInfo();
    org_xmlvm_ios_AudioConverterPrimeInfo___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioConverterPrimeInfo.leadingFrames_ = obj.leadingFrames;
    jObj->fields.org_xmlvm_ios_AudioConverterPrimeInfo.trailingFrames_ = obj.trailingFrames;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioConverterPrimeInfo]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioConverterPrimeInfo___INIT___]
//XMLVM_END_WRAPPER
