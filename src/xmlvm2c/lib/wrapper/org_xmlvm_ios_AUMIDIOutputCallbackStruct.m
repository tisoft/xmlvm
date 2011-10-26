
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AUMIDIOutputCallbackStruct toAUMIDIOutputCallbackStruct(void *obj)
{
	org_xmlvm_ios_AUMIDIOutputCallbackStruct* cObj = obj;
	AUMIDIOutputCallbackStruct toRet;
	toRet.midiOutputCallback = cObj->fields.org_xmlvm_ios_AUMIDIOutputCallbackStruct.midiOutputCallback_;
	toRet.userData = cObj->fields.org_xmlvm_ios_AUMIDIOutputCallbackStruct.userData_;
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
