
//XMLVM_BEGIN_IMPLEMENTATION
MIDIControlTransform toMIDIControlTransform(void *obj)
{
    org_xmlvm_ios_MIDIControlTransform* objCObj = obj;
    MIDIControlTransform toRet;
    toRet.controlType = objCObj->fields.org_xmlvm_ios_MIDIControlTransform.controlType_;
    toRet.remappedControlType = objCObj->fields.org_xmlvm_ios_MIDIControlTransform.remappedControlType_;
    toRet.controlNumber = objCObj->fields.org_xmlvm_ios_MIDIControlTransform.controlNumber_;
    toRet.transform = objCObj->fields.org_xmlvm_ios_MIDIControlTransform.transform_;
    toRet.param = objCObj->fields.org_xmlvm_ios_MIDIControlTransform.param_;
    return toRet;
}
JAVA_OBJECT fromMIDIControlTransform(MIDIControlTransform obj)
{
    org_xmlvm_ios_MIDIControlTransform* jObj = __NEW_org_xmlvm_ios_MIDIControlTransform();
    org_xmlvm_ios_MIDIControlTransform___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_MIDIControlTransform.controlType_ = obj.controlType;
    jObj->fields.org_xmlvm_ios_MIDIControlTransform.remappedControlType_ = obj.remappedControlType;
    jObj->fields.org_xmlvm_ios_MIDIControlTransform.controlNumber_ = obj.controlNumber;
    jObj->fields.org_xmlvm_ios_MIDIControlTransform.transform_ = obj.transform;
    jObj->fields.org_xmlvm_ios_MIDIControlTransform.param_ = obj.param;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDIControlTransform]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIControlTransform___INIT___]
//XMLVM_END_WRAPPER
