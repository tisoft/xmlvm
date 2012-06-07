
//XMLVM_BEGIN_IMPLEMENTATION
AudioBalanceFade toAudioBalanceFade(void *obj)
{
    org_xmlvm_ios_AudioBalanceFade* objCObj = obj;
    AudioBalanceFade toRet;
    toRet.mLeftRightBalance = objCObj->fields.org_xmlvm_ios_AudioBalanceFade.mLeftRightBalance_;
    toRet.mBackFrontFade = objCObj->fields.org_xmlvm_ios_AudioBalanceFade.mBackFrontFade_;
    toRet.mType = objCObj->fields.org_xmlvm_ios_AudioBalanceFade.mType_;
    toRet.mChannelLayout = objCObj->fields.org_xmlvm_ios_AudioBalanceFade.mChannelLayout_;
    return toRet;
}
JAVA_OBJECT fromAudioBalanceFade(AudioBalanceFade obj)
{
    org_xmlvm_ios_AudioBalanceFade* jObj = __NEW_org_xmlvm_ios_AudioBalanceFade();
    org_xmlvm_ios_AudioBalanceFade___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioBalanceFade.mLeftRightBalance_ = obj.mLeftRightBalance;
    jObj->fields.org_xmlvm_ios_AudioBalanceFade.mBackFrontFade_ = obj.mBackFrontFade;
    jObj->fields.org_xmlvm_ios_AudioBalanceFade.mType_ = obj.mType;
    jObj->fields.org_xmlvm_ios_AudioBalanceFade.mChannelLayout_ = obj.mChannelLayout;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioBalanceFade]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioBalanceFade___INIT___]
//XMLVM_END_WRAPPER
