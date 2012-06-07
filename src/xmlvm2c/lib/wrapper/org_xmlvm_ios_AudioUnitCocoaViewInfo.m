
//XMLVM_BEGIN_IMPLEMENTATION
AudioUnitCocoaViewInfo toAudioUnitCocoaViewInfo(void *obj)
{
    org_xmlvm_ios_AudioUnitCocoaViewInfo* objCObj = obj;
    AudioUnitCocoaViewInfo toRet;
    toRet.mCocoaAUViewBundleLocation = objCObj->fields.org_xmlvm_ios_AudioUnitCocoaViewInfo.mCocoaAUViewBundleLocation_;
    return toRet;
}
JAVA_OBJECT fromAudioUnitCocoaViewInfo(AudioUnitCocoaViewInfo obj)
{
    org_xmlvm_ios_AudioUnitCocoaViewInfo* jObj = __NEW_org_xmlvm_ios_AudioUnitCocoaViewInfo();
    org_xmlvm_ios_AudioUnitCocoaViewInfo___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioUnitCocoaViewInfo.mCocoaAUViewBundleLocation_ = obj.mCocoaAUViewBundleLocation;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitCocoaViewInfo]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioUnitCocoaViewInfo___INIT___]
//XMLVM_END_WRAPPER
