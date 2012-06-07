
//XMLVM_BEGIN_IMPLEMENTATION
MIDIPacketList toMIDIPacketList(void *obj)
{
    org_xmlvm_ios_MIDIPacketList* objCObj = obj;
    MIDIPacketList toRet;
    toRet.numPackets = objCObj->fields.org_xmlvm_ios_MIDIPacketList.numPackets_;
    return toRet;
}
JAVA_OBJECT fromMIDIPacketList(MIDIPacketList obj)
{
    org_xmlvm_ios_MIDIPacketList* jObj = __NEW_org_xmlvm_ios_MIDIPacketList();
    org_xmlvm_ios_MIDIPacketList___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_MIDIPacketList.numPackets_ = obj.numPackets;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDIPacketList]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIPacketList___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIPacketList_init__]

    Reference<MIDIPacket>* var0 = MIDIPacketListInit(toMIDIPacketList(me));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIPacketList_add___int_org_xmlvm_ios_Reference_long_int_byte_1ARRAY]
JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    MIDIPacket var2= toMIDIPacket(jObject2);
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    
    Reference<MIDIPacket>* var0 = MIDIPacketListAdd(toMIDIPacketList(me),n1,&var2,n3,n4,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromMIDIPacket(var2));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
