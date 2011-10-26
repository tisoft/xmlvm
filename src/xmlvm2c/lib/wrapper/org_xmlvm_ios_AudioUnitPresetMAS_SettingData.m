
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioUnitPresetMAS_SettingData toAudioUnitPresetMAS_SettingData(void *obj)
{
	org_xmlvm_ios_AudioUnitPresetMAS_SettingData* cObj = obj;
	AudioUnitPresetMAS_SettingData toRet;
	toRet.isStockSetting = cObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_SettingData.isStockSetting_;
	toRet.settingID = cObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_SettingData.settingID_;
	toRet.dataLen = cObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_SettingData.dataLen_;
	return toRet;
}
JAVA_OBJECT fromAudioUnitPresetMAS_SettingData(AudioUnitPresetMAS_SettingData obj)
{
	org_xmlvm_ios_AudioUnitPresetMAS_SettingData* jObj = __NEW_org_xmlvm_ios_AudioUnitPresetMAS_SettingData();
	org_xmlvm_ios_AudioUnitPresetMAS_SettingData___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_SettingData.isStockSetting_ = obj.isStockSetting;
	jObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_SettingData.settingID_ = obj.settingID;
	jObj->fields.org_xmlvm_ios_AudioUnitPresetMAS_SettingData.dataLen_ = obj.dataLen;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitPresetMAS_SettingData]
//XMLVM_END_WRAPPER
