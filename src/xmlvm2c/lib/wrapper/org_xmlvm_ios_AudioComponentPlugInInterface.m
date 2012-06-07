
//XMLVM_BEGIN_IMPLEMENTATION
AudioComponentPlugInInterface toAudioComponentPlugInInterface(void *obj)
{
    org_xmlvm_ios_AudioComponentPlugInInterface* objCObj = obj;
    AudioComponentPlugInInterface toRet;
    toRet.reserved = objCObj->fields.org_xmlvm_ios_AudioComponentPlugInInterface.reserved_;
    return toRet;
}
JAVA_OBJECT fromAudioComponentPlugInInterface(AudioComponentPlugInInterface obj)
{
    org_xmlvm_ios_AudioComponentPlugInInterface* jObj = __NEW_org_xmlvm_ios_AudioComponentPlugInInterface();
    org_xmlvm_ios_AudioComponentPlugInInterface___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioComponentPlugInInterface.reserved_ = obj.reserved;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioComponentPlugInInterface]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioComponentPlugInInterface___INIT___]
//XMLVM_END_WRAPPER
