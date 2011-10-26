
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioUnitMIDIControlMapping toAudioUnitMIDIControlMapping(void *obj)
{
	org_xmlvm_ios_AudioUnitMIDIControlMapping* cObj = obj;
	AudioUnitMIDIControlMapping toRet;
	toRet.midiNRPN = cObj->fields.org_xmlvm_ios_AudioUnitMIDIControlMapping.midiNRPN_;
	toRet.midiControl = cObj->fields.org_xmlvm_ios_AudioUnitMIDIControlMapping.midiControl_;
	toRet.scope = cObj->fields.org_xmlvm_ios_AudioUnitMIDIControlMapping.scope_;
	toRet.element = cObj->fields.org_xmlvm_ios_AudioUnitMIDIControlMapping.element_;
	toRet.parameter = cObj->fields.org_xmlvm_ios_AudioUnitMIDIControlMapping.parameter_;
	return toRet;
}
JAVA_OBJECT fromAudioUnitMIDIControlMapping(AudioUnitMIDIControlMapping obj)
{
	org_xmlvm_ios_AudioUnitMIDIControlMapping* jObj = __NEW_org_xmlvm_ios_AudioUnitMIDIControlMapping();
	org_xmlvm_ios_AudioUnitMIDIControlMapping___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioUnitMIDIControlMapping.midiNRPN_ = obj.midiNRPN;
	jObj->fields.org_xmlvm_ios_AudioUnitMIDIControlMapping.midiControl_ = obj.midiControl;
	jObj->fields.org_xmlvm_ios_AudioUnitMIDIControlMapping.scope_ = obj.scope;
	jObj->fields.org_xmlvm_ios_AudioUnitMIDIControlMapping.element_ = obj.element;
	jObj->fields.org_xmlvm_ios_AudioUnitMIDIControlMapping.parameter_ = obj.parameter;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitMIDIControlMapping]
//XMLVM_END_WRAPPER
