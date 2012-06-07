
//XMLVM_BEGIN_IMPLEMENTATION
ExtendedAudioFormatInfo toExtendedAudioFormatInfo(void *obj)
{
    org_xmlvm_ios_ExtendedAudioFormatInfo* objCObj = obj;
    ExtendedAudioFormatInfo toRet;
    toRet.mASBD = toAudioStreamBasicDescription(objCObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mASBD_);
    toRet.mMagicCookie = objCObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mMagicCookie_;
    toRet.mMagicCookieSize = objCObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mMagicCookieSize_;
    toRet.mClassDescription = toAudioClassDescription(objCObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mClassDescription_);
    return toRet;
}
JAVA_OBJECT fromExtendedAudioFormatInfo(ExtendedAudioFormatInfo obj)
{
    org_xmlvm_ios_ExtendedAudioFormatInfo* jObj = __NEW_org_xmlvm_ios_ExtendedAudioFormatInfo();
    org_xmlvm_ios_ExtendedAudioFormatInfo___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mASBD_ = fromAudioStreamBasicDescription(obj.mASBD);
    jObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mMagicCookie_ = obj.mMagicCookie;
    jObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mMagicCookieSize_ = obj.mMagicCookieSize;
    jObj->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mClassDescription_ = fromAudioClassDescription(obj.mClassDescription);
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_ExtendedAudioFormatInfo]
    me->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mASBD_ = __NEW_org_xmlvm_ios_AudioStreamBasicDescription();
    me->fields.org_xmlvm_ios_ExtendedAudioFormatInfo.mClassDescription_ = __NEW_org_xmlvm_ios_AudioClassDescription();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ExtendedAudioFormatInfo___INIT___]
//XMLVM_END_WRAPPER
