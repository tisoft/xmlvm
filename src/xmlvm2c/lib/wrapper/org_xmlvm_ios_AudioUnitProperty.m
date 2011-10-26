
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioUnitProperty toAudioUnitProperty(void *obj)
{
	org_xmlvm_ios_AudioUnitProperty* cObj = obj;
	AudioUnitProperty toRet;
	toRet.mAudioUnit = cObj->fields.org_xmlvm_ios_AudioUnitProperty.mAudioUnit_;
	toRet.mPropertyID = cObj->fields.org_xmlvm_ios_AudioUnitProperty.mPropertyID_;
	toRet.mScope = cObj->fields.org_xmlvm_ios_AudioUnitProperty.mScope_;
	toRet.mElement = cObj->fields.org_xmlvm_ios_AudioUnitProperty.mElement_;
	return toRet;
}
JAVA_OBJECT fromAudioUnitProperty(AudioUnitProperty obj)
{
	org_xmlvm_ios_AudioUnitProperty* jObj = __NEW_org_xmlvm_ios_AudioUnitProperty();
	org_xmlvm_ios_AudioUnitProperty___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioUnitProperty.mAudioUnit_ = obj.mAudioUnit;
	jObj->fields.org_xmlvm_ios_AudioUnitProperty.mPropertyID_ = obj.mPropertyID;
	jObj->fields.org_xmlvm_ios_AudioUnitProperty.mScope_ = obj.mScope;
	jObj->fields.org_xmlvm_ios_AudioUnitProperty.mElement_ = obj.mElement;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitProperty]
//XMLVM_END_WRAPPER
