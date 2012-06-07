
//XMLVM_BEGIN_IMPLEMENTATION
AudioFileRegion toAudioFileRegion(void *obj)
{
    org_xmlvm_ios_AudioFileRegion* objCObj = obj;
    AudioFileRegion toRet;
    toRet.mRegionID = objCObj->fields.org_xmlvm_ios_AudioFileRegion.mRegionID_;
    toRet.mName = objCObj->fields.org_xmlvm_ios_AudioFileRegion.mName_;
    toRet.mFlags = objCObj->fields.org_xmlvm_ios_AudioFileRegion.mFlags_;
    toRet.mNumberMarkers = objCObj->fields.org_xmlvm_ios_AudioFileRegion.mNumberMarkers_;
    return toRet;
}
JAVA_OBJECT fromAudioFileRegion(AudioFileRegion obj)
{
    org_xmlvm_ios_AudioFileRegion* jObj = __NEW_org_xmlvm_ios_AudioFileRegion();
    org_xmlvm_ios_AudioFileRegion___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioFileRegion.mRegionID_ = obj.mRegionID;
    jObj->fields.org_xmlvm_ios_AudioFileRegion.mName_ = obj.mName;
    jObj->fields.org_xmlvm_ios_AudioFileRegion.mFlags_ = obj.mFlags;
    jObj->fields.org_xmlvm_ios_AudioFileRegion.mNumberMarkers_ = obj.mNumberMarkers;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioFileRegion]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioFileRegion___INIT___]
//XMLVM_END_WRAPPER
