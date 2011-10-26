
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioBuffer toAudioBuffer(void *obj)
{
	org_xmlvm_ios_AudioBuffer* cObj = obj;
	AudioBuffer toRet;
	toRet.mNumberChannels = cObj->fields.org_xmlvm_ios_AudioBuffer.mNumberChannels_;
	toRet.mDataByteSize = cObj->fields.org_xmlvm_ios_AudioBuffer.mDataByteSize_;
	toRet.mData = cObj->fields.org_xmlvm_ios_AudioBuffer.mData_;
	return toRet;
}
JAVA_OBJECT fromAudioBuffer(AudioBuffer obj)
{
	org_xmlvm_ios_AudioBuffer* jObj = __NEW_org_xmlvm_ios_AudioBuffer();
	org_xmlvm_ios_AudioBuffer___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioBuffer.mNumberChannels_ = obj.mNumberChannels;
	jObj->fields.org_xmlvm_ios_AudioBuffer.mDataByteSize_ = obj.mDataByteSize;
	jObj->fields.org_xmlvm_ios_AudioBuffer.mData_ = obj.mData;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioBuffer]
//XMLVM_END_WRAPPER
