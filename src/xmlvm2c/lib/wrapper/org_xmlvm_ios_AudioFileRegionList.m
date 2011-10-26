
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioFileRegionList toAudioFileRegionList(void *obj)
{
	org_xmlvm_ios_AudioFileRegionList* cObj = obj;
	AudioFileRegionList toRet;
	toRet.mSMPTE_TimeType = cObj->fields.org_xmlvm_ios_AudioFileRegionList.mSMPTE_TimeType_;
	toRet.mNumberRegions = cObj->fields.org_xmlvm_ios_AudioFileRegionList.mNumberRegions_;
	return toRet;
}
JAVA_OBJECT fromAudioFileRegionList(AudioFileRegionList obj)
{
	org_xmlvm_ios_AudioFileRegionList* jObj = __NEW_org_xmlvm_ios_AudioFileRegionList();
	org_xmlvm_ios_AudioFileRegionList___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioFileRegionList.mSMPTE_TimeType_ = obj.mSMPTE_TimeType;
	jObj->fields.org_xmlvm_ios_AudioFileRegionList.mNumberRegions_ = obj.mNumberRegions;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioFileRegionList]
//XMLVM_END_WRAPPER
