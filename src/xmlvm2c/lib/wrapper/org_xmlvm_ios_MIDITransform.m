
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MIDITransform toMIDITransform(void *obj)
{
	org_xmlvm_ios_MIDITransform* cObj = obj;
	MIDITransform toRet;
	toRet.transform = cObj->fields.org_xmlvm_ios_MIDITransform.transform_;
	toRet.param = cObj->fields.org_xmlvm_ios_MIDITransform.param_;
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
