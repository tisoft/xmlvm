
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioUnitExternalBuffer toAudioUnitExternalBuffer(void *obj)
{
	org_xmlvm_ios_AudioUnitExternalBuffer* cObj = obj;
	AudioUnitExternalBuffer toRet;
	toRet.buffer = cObj->fields.org_xmlvm_ios_AudioUnitExternalBuffer.buffer_;
	toRet.size = cObj->fields.org_xmlvm_ios_AudioUnitExternalBuffer.size_;
	return toRet;
}
JAVA_OBJECT fromAudioUnitExternalBuffer(AudioUnitExternalBuffer obj)
{
	org_xmlvm_ios_AudioUnitExternalBuffer* jObj = __NEW_org_xmlvm_ios_AudioUnitExternalBuffer();
	org_xmlvm_ios_AudioUnitExternalBuffer___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioUnitExternalBuffer.buffer_ = obj.buffer;
	jObj->fields.org_xmlvm_ios_AudioUnitExternalBuffer.size_ = obj.size;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitExternalBuffer]
//XMLVM_END_WRAPPER
