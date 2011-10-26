
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MIDIControlTransform toMIDIControlTransform(void *obj)
{
	org_xmlvm_ios_MIDIControlTransform* cObj = obj;
	MIDIControlTransform toRet;
	toRet.controlType = cObj->fields.org_xmlvm_ios_MIDIControlTransform.controlType_;
	toRet.remappedControlType = cObj->fields.org_xmlvm_ios_MIDIControlTransform.remappedControlType_;
	toRet.controlNumber = cObj->fields.org_xmlvm_ios_MIDIControlTransform.controlNumber_;
	toRet.transform = cObj->fields.org_xmlvm_ios_MIDIControlTransform.transform_;
	toRet.param = cObj->fields.org_xmlvm_ios_MIDIControlTransform.param_;
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
