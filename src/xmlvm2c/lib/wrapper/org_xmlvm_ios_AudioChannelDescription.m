
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioChannelDescription toAudioChannelDescription(void *obj)
{
	org_xmlvm_ios_AudioChannelDescription* cObj = obj;
	AudioChannelDescription toRet;
	toRet.mChannelLabel = cObj->fields.org_xmlvm_ios_AudioChannelDescription.mChannelLabel_;
	toRet.mChannelFlags = cObj->fields.org_xmlvm_ios_AudioChannelDescription.mChannelFlags_;
	return toRet;
}
JAVA_OBJECT fromAudioChannelDescription(AudioChannelDescription obj)
{
	org_xmlvm_ios_AudioChannelDescription* jObj = __NEW_org_xmlvm_ios_AudioChannelDescription();
	org_xmlvm_ios_AudioChannelDescription___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioChannelDescription.mChannelLabel_ = obj.mChannelLabel;
	jObj->fields.org_xmlvm_ios_AudioChannelDescription.mChannelFlags_ = obj.mChannelFlags;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioChannelDescription]
//XMLVM_END_WRAPPER
