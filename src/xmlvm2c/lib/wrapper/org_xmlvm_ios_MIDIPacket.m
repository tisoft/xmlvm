
//XMLVM_BEGIN_IMPLEMENTATION
MIDIPacket toMIDIPacket(void *obj)
{
    org_xmlvm_ios_MIDIPacket* objCObj = obj;
    MIDIPacket toRet;
    toRet.timeStamp = objCObj->fields.org_xmlvm_ios_MIDIPacket.timeStamp_;
    toRet.length = objCObj->fields.org_xmlvm_ios_MIDIPacket.length_;
    return toRet;
}
JAVA_OBJECT fromMIDIPacket(MIDIPacket obj)
{
    org_xmlvm_ios_MIDIPacket* jObj = __NEW_org_xmlvm_ios_MIDIPacket();
    org_xmlvm_ios_MIDIPacket___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_MIDIPacket.timeStamp_ = obj.timeStamp;
    jObj->fields.org_xmlvm_ios_MIDIPacket.length_ = obj.length;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDIPacket]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIPacket___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIPacket_next__]

    Reference<MIDIPacket>* var0 = MIDIPacketNext(toMIDIPacket(me));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
