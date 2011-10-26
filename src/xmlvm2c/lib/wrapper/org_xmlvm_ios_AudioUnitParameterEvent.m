
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioUnitParameterEvent toAudioUnitParameterEvent(void *obj)
{
	org_xmlvm_ios_AudioUnitParameterEvent* cObj = obj;
	AudioUnitParameterEvent toRet;
	toRet.scope = cObj->fields.org_xmlvm_ios_AudioUnitParameterEvent.scope_;
	toRet.element = cObj->fields.org_xmlvm_ios_AudioUnitParameterEvent.element_;
	toRet.parameter = cObj->fields.org_xmlvm_ios_AudioUnitParameterEvent.parameter_;
	toRet.eventType = cObj->fields.org_xmlvm_ios_AudioUnitParameterEvent.eventType_;
	return toRet;
}
JAVA_OBJECT fromAudioUnitParameterEvent(AudioUnitParameterEvent obj)
{
	org_xmlvm_ios_AudioUnitParameterEvent* jObj = __NEW_org_xmlvm_ios_AudioUnitParameterEvent();
	org_xmlvm_ios_AudioUnitParameterEvent___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioUnitParameterEvent.scope_ = obj.scope;
	jObj->fields.org_xmlvm_ios_AudioUnitParameterEvent.element_ = obj.element;
	jObj->fields.org_xmlvm_ios_AudioUnitParameterEvent.parameter_ = obj.parameter;
	jObj->fields.org_xmlvm_ios_AudioUnitParameterEvent.eventType_ = obj.eventType;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitParameterEvent]
//XMLVM_END_WRAPPER
