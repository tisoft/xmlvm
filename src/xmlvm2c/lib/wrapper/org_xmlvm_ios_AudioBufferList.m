
//XMLVM_BEGIN_IMPLEMENTATION
AudioBufferList toAudioBufferList(void *obj)
{
    org_xmlvm_ios_AudioBufferList* objCObj = obj;
    AudioBufferList toRet;
    toRet.mNumberBuffers = objCObj->fields.org_xmlvm_ios_AudioBufferList.mNumberBuffers_;
    return toRet;
}
JAVA_OBJECT fromAudioBufferList(AudioBufferList obj)
{
    org_xmlvm_ios_AudioBufferList* jObj = __NEW_org_xmlvm_ios_AudioBufferList();
    org_xmlvm_ios_AudioBufferList___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioBufferList.mNumberBuffers_ = obj.mNumberBuffers;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioBufferList]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioBufferList___INIT___]
//XMLVM_END_WRAPPER
