
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioConverterPrimeInfo toAudioConverterPrimeInfo(void *obj)
{
	org_xmlvm_ios_AudioConverterPrimeInfo* cObj = obj;
	AudioConverterPrimeInfo toRet;
	toRet.leadingFrames = cObj->fields.org_xmlvm_ios_AudioConverterPrimeInfo.leadingFrames_;
	toRet.trailingFrames = cObj->fields.org_xmlvm_ios_AudioConverterPrimeInfo.trailingFrames_;
	return toRet;
}
JAVA_OBJECT fromAudioConverterPrimeInfo(AudioConverterPrimeInfo obj)
{
	org_xmlvm_ios_AudioConverterPrimeInfo* jObj = __NEW_org_xmlvm_ios_AudioConverterPrimeInfo();
	org_xmlvm_ios_AudioConverterPrimeInfo___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioConverterPrimeInfo.leadingFrames_ = obj.leadingFrames;
	jObj->fields.org_xmlvm_ios_AudioConverterPrimeInfo.trailingFrames_ = obj.trailingFrames;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioConverterPrimeInfo]
//XMLVM_END_WRAPPER
