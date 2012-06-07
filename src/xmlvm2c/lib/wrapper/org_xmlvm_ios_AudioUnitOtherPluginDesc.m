
//XMLVM_BEGIN_IMPLEMENTATION
AudioUnitOtherPluginDesc toAudioUnitOtherPluginDesc(void *obj)
{
    org_xmlvm_ios_AudioUnitOtherPluginDesc* objCObj = obj;
    AudioUnitOtherPluginDesc toRet;
    toRet.format = objCObj->fields.org_xmlvm_ios_AudioUnitOtherPluginDesc.format_;
    toRet.plugin = toAudioClassDescription(objCObj->fields.org_xmlvm_ios_AudioUnitOtherPluginDesc.plugin_);
    return toRet;
}
JAVA_OBJECT fromAudioUnitOtherPluginDesc(AudioUnitOtherPluginDesc obj)
{
    org_xmlvm_ios_AudioUnitOtherPluginDesc* jObj = __NEW_org_xmlvm_ios_AudioUnitOtherPluginDesc();
    org_xmlvm_ios_AudioUnitOtherPluginDesc___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioUnitOtherPluginDesc.format_ = obj.format;
    jObj->fields.org_xmlvm_ios_AudioUnitOtherPluginDesc.plugin_ = fromAudioClassDescription(obj.plugin);
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitOtherPluginDesc]
    me->fields.org_xmlvm_ios_AudioUnitOtherPluginDesc.plugin_ = __NEW_org_xmlvm_ios_AudioClassDescription();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioUnitOtherPluginDesc___INIT___]
//XMLVM_END_WRAPPER
