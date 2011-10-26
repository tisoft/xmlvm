
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioValueRange toAudioValueRange(void *obj)
{
	org_xmlvm_ios_AudioValueRange* cObj = obj;
	AudioValueRange toRet;
	toRet.mMinimum = cObj->fields.org_xmlvm_ios_AudioValueRange.mMinimum_;
	toRet.mMaximum = cObj->fields.org_xmlvm_ios_AudioValueRange.mMaximum_;
	return toRet;
}
JAVA_OBJECT fromAudioValueRange(AudioValueRange obj)
{
	org_xmlvm_ios_AudioValueRange* jObj = __NEW_org_xmlvm_ios_AudioValueRange();
	org_xmlvm_ios_AudioValueRange___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioValueRange.mMinimum_ = obj.mMinimum;
	jObj->fields.org_xmlvm_ios_AudioValueRange.mMaximum_ = obj.mMaximum;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioValueRange]
//XMLVM_END_WRAPPER
