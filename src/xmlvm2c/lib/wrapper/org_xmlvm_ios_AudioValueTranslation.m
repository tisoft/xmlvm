
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioValueTranslation toAudioValueTranslation(void *obj)
{
	org_xmlvm_ios_AudioValueTranslation* cObj = obj;
	AudioValueTranslation toRet;
	toRet.mInputData = cObj->fields.org_xmlvm_ios_AudioValueTranslation.mInputData_;
	toRet.mInputDataSize = cObj->fields.org_xmlvm_ios_AudioValueTranslation.mInputDataSize_;
	toRet.mOutputData = cObj->fields.org_xmlvm_ios_AudioValueTranslation.mOutputData_;
	toRet.mOutputDataSize = cObj->fields.org_xmlvm_ios_AudioValueTranslation.mOutputDataSize_;
	return toRet;
}
JAVA_OBJECT fromAudioValueTranslation(AudioValueTranslation obj)
{
	org_xmlvm_ios_AudioValueTranslation* jObj = __NEW_org_xmlvm_ios_AudioValueTranslation();
	org_xmlvm_ios_AudioValueTranslation___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioValueTranslation.mInputData_ = obj.mInputData;
	jObj->fields.org_xmlvm_ios_AudioValueTranslation.mInputDataSize_ = obj.mInputDataSize;
	jObj->fields.org_xmlvm_ios_AudioValueTranslation.mOutputData_ = obj.mOutputData;
	jObj->fields.org_xmlvm_ios_AudioValueTranslation.mOutputDataSize_ = obj.mOutputDataSize;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioValueTranslation]
//XMLVM_END_WRAPPER
