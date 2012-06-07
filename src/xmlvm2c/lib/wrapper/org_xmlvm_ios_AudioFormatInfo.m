
//XMLVM_BEGIN_IMPLEMENTATION
AudioFormatInfo toAudioFormatInfo(void *obj)
{
    org_xmlvm_ios_AudioFormatInfo* objCObj = obj;
    AudioFormatInfo toRet;
    toRet.mASBD = toAudioStreamBasicDescription(objCObj->fields.org_xmlvm_ios_AudioFormatInfo.mASBD_);
    toRet.mMagicCookie = objCObj->fields.org_xmlvm_ios_AudioFormatInfo.mMagicCookie_;
    toRet.mMagicCookieSize = objCObj->fields.org_xmlvm_ios_AudioFormatInfo.mMagicCookieSize_;
    return toRet;
}
JAVA_OBJECT fromAudioFormatInfo(AudioFormatInfo obj)
{
    org_xmlvm_ios_AudioFormatInfo* jObj = __NEW_org_xmlvm_ios_AudioFormatInfo();
    org_xmlvm_ios_AudioFormatInfo___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioFormatInfo.mASBD_ = fromAudioStreamBasicDescription(obj.mASBD);
    jObj->fields.org_xmlvm_ios_AudioFormatInfo.mMagicCookie_ = obj.mMagicCookie;
    jObj->fields.org_xmlvm_ios_AudioFormatInfo.mMagicCookieSize_ = obj.mMagicCookieSize;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioFormatInfo]
    me->fields.org_xmlvm_ios_AudioFormatInfo.mASBD_ = __NEW_org_xmlvm_ios_AudioStreamBasicDescription();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioFormatInfo___INIT___]
//XMLVM_END_WRAPPER
