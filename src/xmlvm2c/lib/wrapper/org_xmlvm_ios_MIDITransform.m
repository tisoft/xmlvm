
//XMLVM_BEGIN_IMPLEMENTATION
MIDITransform toMIDITransform(void *obj)
{
    org_xmlvm_ios_MIDITransform* objCObj = obj;
    MIDITransform toRet;
    toRet.transform = objCObj->fields.org_xmlvm_ios_MIDITransform.transform_;
    toRet.param = objCObj->fields.org_xmlvm_ios_MIDITransform.param_;
    return toRet;
}
JAVA_OBJECT fromMIDITransform(MIDITransform obj)
{
    org_xmlvm_ios_MIDITransform* jObj = __NEW_org_xmlvm_ios_MIDITransform();
    org_xmlvm_ios_MIDITransform___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_MIDITransform.transform_ = obj.transform;
    jObj->fields.org_xmlvm_ios_MIDITransform.param_ = obj.param;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDITransform]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDITransform___INIT___]
//XMLVM_END_WRAPPER
