
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioClassDescription toAudioClassDescription(void *obj)
{
	org_xmlvm_ios_AudioClassDescription* cObj = obj;
	AudioClassDescription toRet;
	toRet.mType = cObj->fields.org_xmlvm_ios_AudioClassDescription.mType_;
	toRet.mSubType = cObj->fields.org_xmlvm_ios_AudioClassDescription.mSubType_;
	toRet.mManufacturer = cObj->fields.org_xmlvm_ios_AudioClassDescription.mManufacturer_;
	return toRet;
}
JAVA_OBJECT fromAudioClassDescription(AudioClassDescription obj)
{
	org_xmlvm_ios_AudioClassDescription* jObj = __NEW_org_xmlvm_ios_AudioClassDescription();
	org_xmlvm_ios_AudioClassDescription___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioClassDescription.mType_ = obj.mType;
	jObj->fields.org_xmlvm_ios_AudioClassDescription.mSubType_ = obj.mSubType;
	jObj->fields.org_xmlvm_ios_AudioClassDescription.mManufacturer_ = obj.mManufacturer;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioClassDescription]
//XMLVM_END_WRAPPER
