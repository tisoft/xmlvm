
//XMLVM_BEGIN_IMPLEMENTATION
MIDISysexSendRequest toMIDISysexSendRequest(void *obj)
{
    org_xmlvm_ios_MIDISysexSendRequest* objCObj = obj;
    MIDISysexSendRequest toRet;
    toRet.destination = objCObj->fields.org_xmlvm_ios_MIDISysexSendRequest.destination_;
    toRet.data = objCObj->fields.org_xmlvm_ios_MIDISysexSendRequest.data_;
    toRet.bytesToSend = objCObj->fields.org_xmlvm_ios_MIDISysexSendRequest.bytesToSend_;
    toRet.complete = objCObj->fields.org_xmlvm_ios_MIDISysexSendRequest.complete_;
    toRet.completionProc = objCObj->fields.org_xmlvm_ios_MIDISysexSendRequest.completionProc_;
    toRet.completionRefCon = objCObj->fields.org_xmlvm_ios_MIDISysexSendRequest.completionRefCon_;
    return toRet;
}
JAVA_OBJECT fromMIDISysexSendRequest(MIDISysexSendRequest obj)
{
    org_xmlvm_ios_MIDISysexSendRequest* jObj = __NEW_org_xmlvm_ios_MIDISysexSendRequest();
    org_xmlvm_ios_MIDISysexSendRequest___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_MIDISysexSendRequest.destination_ = obj.destination;
    jObj->fields.org_xmlvm_ios_MIDISysexSendRequest.data_ = obj.data;
    jObj->fields.org_xmlvm_ios_MIDISysexSendRequest.bytesToSend_ = obj.bytesToSend;
    jObj->fields.org_xmlvm_ios_MIDISysexSendRequest.complete_ = obj.complete;
    jObj->fields.org_xmlvm_ios_MIDISysexSendRequest.completionProc_ = obj.completionProc;
    jObj->fields.org_xmlvm_ios_MIDISysexSendRequest.completionRefCon_ = obj.completionRefCon;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDISysexSendRequest]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDISysexSendRequest___INIT___]
//XMLVM_END_WRAPPER
