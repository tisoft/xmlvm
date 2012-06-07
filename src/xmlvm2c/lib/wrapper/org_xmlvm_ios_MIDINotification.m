
//XMLVM_BEGIN_IMPLEMENTATION
MIDINotification toMIDINotification(void *obj)
{
    org_xmlvm_ios_MIDINotification* objCObj = obj;
    MIDINotification toRet;
    toRet.messageID = objCObj->fields.org_xmlvm_ios_MIDINotification.messageID_;
    toRet.messageSize = objCObj->fields.org_xmlvm_ios_MIDINotification.messageSize_;
    return toRet;
}
JAVA_OBJECT fromMIDINotification(MIDINotification obj)
{
    org_xmlvm_ios_MIDINotification* jObj = __NEW_org_xmlvm_ios_MIDINotification();
    org_xmlvm_ios_MIDINotification___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_MIDINotification.messageID_ = obj.messageID;
    jObj->fields.org_xmlvm_ios_MIDINotification.messageSize_ = obj.messageSize;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDINotification]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDINotification___INIT___]
//XMLVM_END_WRAPPER
