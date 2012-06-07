
//XMLVM_BEGIN_IMPLEMENTATION
AudioFormatListItem toAudioFormatListItem(void *obj)
{
    org_xmlvm_ios_AudioFormatListItem* objCObj = obj;
    AudioFormatListItem toRet;
    toRet.mASBD = toAudioStreamBasicDescription(objCObj->fields.org_xmlvm_ios_AudioFormatListItem.mASBD_);
    toRet.mChannelLayoutTag = objCObj->fields.org_xmlvm_ios_AudioFormatListItem.mChannelLayoutTag_;
    return toRet;
}
JAVA_OBJECT fromAudioFormatListItem(AudioFormatListItem obj)
{
    org_xmlvm_ios_AudioFormatListItem* jObj = __NEW_org_xmlvm_ios_AudioFormatListItem();
    org_xmlvm_ios_AudioFormatListItem___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioFormatListItem.mASBD_ = fromAudioStreamBasicDescription(obj.mASBD);
    jObj->fields.org_xmlvm_ios_AudioFormatListItem.mChannelLayoutTag_ = obj.mChannelLayoutTag;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioFormatListItem]
    me->fields.org_xmlvm_ios_AudioFormatListItem.mASBD_ = __NEW_org_xmlvm_ios_AudioStreamBasicDescription();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioFormatListItem___INIT___]
//XMLVM_END_WRAPPER
