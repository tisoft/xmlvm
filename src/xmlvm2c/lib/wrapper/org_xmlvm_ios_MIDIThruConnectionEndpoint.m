
//XMLVM_BEGIN_IMPLEMENTATION
MIDIThruConnectionEndpoint toMIDIThruConnectionEndpoint(void *obj)
{
    org_xmlvm_ios_MIDIThruConnectionEndpoint* objCObj = obj;
    MIDIThruConnectionEndpoint toRet;
    toRet.endpointRef = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionEndpoint.endpointRef_;
    toRet.uniqueID = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionEndpoint.uniqueID_;
    return toRet;
}
JAVA_OBJECT fromMIDIThruConnectionEndpoint(MIDIThruConnectionEndpoint obj)
{
    org_xmlvm_ios_MIDIThruConnectionEndpoint* jObj = __NEW_org_xmlvm_ios_MIDIThruConnectionEndpoint();
    org_xmlvm_ios_MIDIThruConnectionEndpoint___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_MIDIThruConnectionEndpoint.endpointRef_ = obj.endpointRef;
    jObj->fields.org_xmlvm_ios_MIDIThruConnectionEndpoint.uniqueID_ = obj.uniqueID;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDIThruConnectionEndpoint]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIThruConnectionEndpoint___INIT___]
//XMLVM_END_WRAPPER
