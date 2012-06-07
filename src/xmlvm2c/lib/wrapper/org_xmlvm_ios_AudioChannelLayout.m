
//XMLVM_BEGIN_IMPLEMENTATION
AudioChannelLayout toAudioChannelLayout(void *obj)
{
    org_xmlvm_ios_AudioChannelLayout* objCObj = obj;
    AudioChannelLayout toRet;
    toRet.mChannelLayoutTag = objCObj->fields.org_xmlvm_ios_AudioChannelLayout.mChannelLayoutTag_;
    toRet.mChannelBitmap = objCObj->fields.org_xmlvm_ios_AudioChannelLayout.mChannelBitmap_;
    toRet.mNumberChannelDescriptions = objCObj->fields.org_xmlvm_ios_AudioChannelLayout.mNumberChannelDescriptions_;
    return toRet;
}
JAVA_OBJECT fromAudioChannelLayout(AudioChannelLayout obj)
{
    org_xmlvm_ios_AudioChannelLayout* jObj = __NEW_org_xmlvm_ios_AudioChannelLayout();
    org_xmlvm_ios_AudioChannelLayout___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioChannelLayout.mChannelLayoutTag_ = obj.mChannelLayoutTag;
    jObj->fields.org_xmlvm_ios_AudioChannelLayout.mChannelBitmap_ = obj.mChannelBitmap;
    jObj->fields.org_xmlvm_ios_AudioChannelLayout.mNumberChannelDescriptions_ = obj.mNumberChannelDescriptions;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioChannelLayout]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioChannelLayout___INIT___]
//XMLVM_END_WRAPPER
