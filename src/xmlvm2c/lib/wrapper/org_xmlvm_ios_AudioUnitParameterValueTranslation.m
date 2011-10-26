
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioUnitParameterValueTranslation toAudioUnitParameterValueTranslation(void *obj)
{
	org_xmlvm_ios_AudioUnitParameterValueTranslation* cObj = obj;
	AudioUnitParameterValueTranslation toRet;
	org_xmlvm_ios_AudioUnitOtherPluginDesc* obj0 = cObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.otherDesc_;
	toRet.otherDesc.format = obj0->fields.org_xmlvm_ios_AudioUnitOtherPluginDesc.format_;
	toRet.otherDesc.plugin = obj0->fields.org_xmlvm_ios_AudioUnitOtherPluginDesc.plugin_;
	toRet.otherParamID = cObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.otherParamID_;
	toRet.otherValue = cObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.otherValue_;
	toRet.auParamID = cObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.auParamID_;
	toRet.auValue = cObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.auValue_;
	return toRet;
}
JAVA_OBJECT fromAudioUnitParameterValueTranslation(AudioUnitParameterValueTranslation obj)
{
	org_xmlvm_ios_AudioUnitParameterValueTranslation* jObj = __NEW_org_xmlvm_ios_AudioUnitParameterValueTranslation();
	org_xmlvm_ios_AudioUnitParameterValueTranslation___INIT___(jObj);
	org_xmlvm_ios_AudioUnitOtherPluginDesc* obj0 = jObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.otherDesc_;
	obj0->fields.org_xmlvm_ios_AudioUnitOtherPluginDesc.format_ = obj.otherDesc.format;
	obj0->fields.org_xmlvm_ios_AudioUnitOtherPluginDesc.plugin_ = obj.otherDesc.plugin;
	jObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.otherParamID_ = obj.otherParamID;
	jObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.otherValue_ = obj.otherValue;
	jObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.auParamID_ = obj.auParamID;
	jObj->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.auValue_ = obj.auValue;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitParameterValueTranslation]
	me->fields.org_xmlvm_ios_AudioUnitParameterValueTranslation.otherDesc_ = __NEW_org_xmlvm_ios_AudioUnitOtherPluginDesc();
//XMLVM_END_WRAPPER
