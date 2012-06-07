
//XMLVM_BEGIN_IMPLEMENTATION
AUMIDIOutputCallbackStruct toAUMIDIOutputCallbackStruct(void *obj)
{
    org_xmlvm_ios_AUMIDIOutputCallbackStruct* objCObj = obj;
    AUMIDIOutputCallbackStruct toRet;
    toRet.midiOutputCallback = objCObj->fields.org_xmlvm_ios_AUMIDIOutputCallbackStruct.midiOutputCallback_;
    toRet.userData = objCObj->fields.org_xmlvm_ios_AUMIDIOutputCallbackStruct.userData_;
    return toRet;
}
JAVA_OBJECT fromAUMIDIOutputCallbackStruct(AUMIDIOutputCallbackStruct obj)
{
    org_xmlvm_ios_AUMIDIOutputCallbackStruct* jObj = __NEW_org_xmlvm_ios_AUMIDIOutputCallbackStruct();
    org_xmlvm_ios_AUMIDIOutputCallbackStruct___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AUMIDIOutputCallbackStruct.midiOutputCallback_ = obj.midiOutputCallback;
    jObj->fields.org_xmlvm_ios_AUMIDIOutputCallbackStruct.userData_ = obj.userData;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUMIDIOutputCallbackStruct]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AUMIDIOutputCallbackStruct___INIT___]
//XMLVM_END_WRAPPER
