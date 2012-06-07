
//XMLVM_BEGIN_IMPLEMENTATION
AudioUnitNodeConnection toAudioUnitNodeConnection(void *obj)
{
    org_xmlvm_ios_AudioUnitNodeConnection* objCObj = obj;
    AudioUnitNodeConnection toRet;
    toRet.sourceNode = objCObj->fields.org_xmlvm_ios_AudioUnitNodeConnection.sourceNode_;
    toRet.sourceOutputNumber = objCObj->fields.org_xmlvm_ios_AudioUnitNodeConnection.sourceOutputNumber_;
    toRet.destNode = objCObj->fields.org_xmlvm_ios_AudioUnitNodeConnection.destNode_;
    toRet.destInputNumber = objCObj->fields.org_xmlvm_ios_AudioUnitNodeConnection.destInputNumber_;
    return toRet;
}
JAVA_OBJECT fromAudioUnitNodeConnection(AudioUnitNodeConnection obj)
{
    org_xmlvm_ios_AudioUnitNodeConnection* jObj = __NEW_org_xmlvm_ios_AudioUnitNodeConnection();
    org_xmlvm_ios_AudioUnitNodeConnection___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AudioUnitNodeConnection.sourceNode_ = obj.sourceNode;
    jObj->fields.org_xmlvm_ios_AudioUnitNodeConnection.sourceOutputNumber_ = obj.sourceOutputNumber;
    jObj->fields.org_xmlvm_ios_AudioUnitNodeConnection.destNode_ = obj.destNode;
    jObj->fields.org_xmlvm_ios_AudioUnitNodeConnection.destInputNumber_ = obj.destInputNumber;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitNodeConnection]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioUnitNodeConnection___INIT___]
//XMLVM_END_WRAPPER
