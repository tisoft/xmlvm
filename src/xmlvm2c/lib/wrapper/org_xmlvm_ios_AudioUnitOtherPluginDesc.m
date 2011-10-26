
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioUnitOtherPluginDesc toAudioUnitOtherPluginDesc(void *obj)
{
	org_xmlvm_ios_AudioUnitOtherPluginDesc* cObj = obj;
	AudioUnitOtherPluginDesc toRet;
	toRet.format = cObj->fields.org_xmlvm_ios_AudioUnitOtherPluginDesc.format_;
	org_xmlvm_ios_AudioClassDescription* obj0 = cObj->fields.org_xmlvm_ios_AudioUnitOtherPluginDesc.plugin_;
	toRet.plugin.mType = obj0->fields.org_xmlvm_ios_AudioClassDescription.mType_;
	toRet.plugin.mSubType = obj0->fields.org_xmlvm_ios_AudioClassDescription.mSubType_;
	toRet.plugin.mManufacturer = obj0->fields.org_xmlvm_ios_AudioClassDescription.mManufacturer_;
	return toRet;
}
JAVA_OBJECT fromAudioUnitOtherPluginDesc(AudioUnitOtherPluginDesc obj)
{
	org_xmlvm_ios_AudioUnitOtherPluginDesc* jObj = __NEW_org_xmlvm_ios_AudioUnitOtherPluginDesc();
	org_xmlvm_ios_AudioUnitOtherPluginDesc___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioUnitOtherPluginDesc.format_ = obj.format;
	org_xmlvm_ios_AudioClassDescription* obj0 = jObj->fields.org_xmlvm_ios_AudioUnitOtherPluginDesc.plugin_;
	obj0->fields.org_xmlvm_ios_AudioClassDescription.mType_ = obj.plugin.mType;
	obj0->fields.org_xmlvm_ios_AudioClassDescription.mSubType_ = obj.plugin.mSubType;
	obj0->fields.org_xmlvm_ios_AudioClassDescription.mManufacturer_ = obj.plugin.mManufacturer;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitOtherPluginDesc]
	me->fields.org_xmlvm_ios_AudioUnitOtherPluginDesc.plugin_ = __NEW_org_xmlvm_ios_AudioClassDescription();
//XMLVM_END_WRAPPER
