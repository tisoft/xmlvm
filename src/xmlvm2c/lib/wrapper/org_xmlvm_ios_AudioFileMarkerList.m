
//XMLVM_BEGIN_IMPLEMENTATION
AudioFileMarkerList toAudioFileMarkerList(void *obj)
{
    org_xmlvm_ios_AudioFileMarkerList* objCObj = obj;
    AudioFileMarkerList toRet;
    toRet.mSMPTE_TimeType = objCObj->fields.org_xmlvm_ios_AudioFileMarkerList.mSMPTE_TimeType_;
    toRet.mNumberMarkers = objCObj->fields.org_xmlvm_ios_AudioFileMarkerList.mNumberMarkers_;
    return toRet;
}
JAVA_OBJECT fromAudioFileMarkerList(AudioFileMarkerList obj)
{
    org_xmlvm_ios_AudioFileMarkerList* jObj = __NEW_org_xmlvm_ios_AudioFileMarkerList();
    org_xmlvm_ios_AudioFileMarkerList___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioFileMarkerList.mSMPTE_TimeType_ = obj.mSMPTE_TimeType;
    jObj->fields.org_xmlvm_ios_AudioFileMarkerList.mNumberMarkers_ = obj.mNumberMarkers;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioFileMarkerList]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioFileMarkerList___INIT___]
//XMLVM_END_WRAPPER
