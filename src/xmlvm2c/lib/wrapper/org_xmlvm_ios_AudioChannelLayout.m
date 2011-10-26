
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioChannelLayout toAudioChannelLayout(void *obj)
{
	org_xmlvm_ios_AudioChannelLayout* cObj = obj;
	AudioChannelLayout toRet;
	toRet.mChannelLayoutTag = cObj->fields.org_xmlvm_ios_AudioChannelLayout.mChannelLayoutTag_;
	toRet.mChannelBitmap = cObj->fields.org_xmlvm_ios_AudioChannelLayout.mChannelBitmap_;
	toRet.mNumberChannelDescriptions = cObj->fields.org_xmlvm_ios_AudioChannelLayout.mNumberChannelDescriptions_;
	return toRet;
}
JAVA_OBJECT fromAudioChannelLayout(AudioChannelLayout obj)
{
	org_xmlvm_ios_AudioChannelLayout* jObj = __NEW_org_xmlvm_ios_AudioChannelLayout();
	org_xmlvm_ios_AudioChannelLayout___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioChannelLayout.mChannelLayoutTag_ = obj.mChannelLayoutTag;
	jObj->fields.org_xmlvm_ios_AudioChannelLayout.mChannelBitmap_ = obj.mChannelBitmap;
	jObj->fields.org_xmlvm_ios_AudioChannelLayout.mNumberChannelDescriptions_ = obj.mNumberChannelDescriptions;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioChannelLayout]
//XMLVM_END_WRAPPER
