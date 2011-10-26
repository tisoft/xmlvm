
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioUnitMeterClipping toAudioUnitMeterClipping(void *obj)
{
	org_xmlvm_ios_AudioUnitMeterClipping* cObj = obj;
	AudioUnitMeterClipping toRet;
	toRet.peakValueSinceLastCall = cObj->fields.org_xmlvm_ios_AudioUnitMeterClipping.peakValueSinceLastCall_;
	toRet.sawInfinity = cObj->fields.org_xmlvm_ios_AudioUnitMeterClipping.sawInfinity_;
	toRet.sawNotANumber = cObj->fields.org_xmlvm_ios_AudioUnitMeterClipping.sawNotANumber_;
	return toRet;
}
JAVA_OBJECT fromAudioUnitMeterClipping(AudioUnitMeterClipping obj)
{
	org_xmlvm_ios_AudioUnitMeterClipping* jObj = __NEW_org_xmlvm_ios_AudioUnitMeterClipping();
	org_xmlvm_ios_AudioUnitMeterClipping___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioUnitMeterClipping.peakValueSinceLastCall_ = obj.peakValueSinceLastCall;
	jObj->fields.org_xmlvm_ios_AudioUnitMeterClipping.sawInfinity_ = obj.sawInfinity;
	jObj->fields.org_xmlvm_ios_AudioUnitMeterClipping.sawNotANumber_ = obj.sawNotANumber;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitMeterClipping]
//XMLVM_END_WRAPPER
