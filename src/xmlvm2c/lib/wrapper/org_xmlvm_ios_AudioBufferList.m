
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioBufferList toAudioBufferList(void *obj)
{
	org_xmlvm_ios_AudioBufferList* cObj = obj;
	AudioBufferList toRet;
	toRet.mNumberBuffers = cObj->fields.org_xmlvm_ios_AudioBufferList.mNumberBuffers_;
	return toRet;
}
JAVA_OBJECT fromAudioBufferList(AudioBufferList obj)
{
	org_xmlvm_ios_AudioBufferList* jObj = __NEW_org_xmlvm_ios_AudioBufferList();
	org_xmlvm_ios_AudioBufferList___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioBufferList.mNumberBuffers_ = obj.mNumberBuffers;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioBufferList]
//XMLVM_END_WRAPPER
