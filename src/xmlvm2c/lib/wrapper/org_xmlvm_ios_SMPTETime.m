
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

SMPTETime toSMPTETime(void *obj)
{
	org_xmlvm_ios_SMPTETime* cObj = obj;
	SMPTETime toRet;
	toRet.mSubframes = cObj->fields.org_xmlvm_ios_SMPTETime.mSubframes_;
	toRet.mSubframeDivisor = cObj->fields.org_xmlvm_ios_SMPTETime.mSubframeDivisor_;
	toRet.mCounter = cObj->fields.org_xmlvm_ios_SMPTETime.mCounter_;
	toRet.mType = cObj->fields.org_xmlvm_ios_SMPTETime.mType_;
	toRet.mFlags = cObj->fields.org_xmlvm_ios_SMPTETime.mFlags_;
	toRet.mHours = cObj->fields.org_xmlvm_ios_SMPTETime.mHours_;
	toRet.mMinutes = cObj->fields.org_xmlvm_ios_SMPTETime.mMinutes_;
	toRet.mSeconds = cObj->fields.org_xmlvm_ios_SMPTETime.mSeconds_;
	toRet.mFrames = cObj->fields.org_xmlvm_ios_SMPTETime.mFrames_;
	return toRet;
}
JAVA_OBJECT fromSMPTETime(SMPTETime obj)
{
	org_xmlvm_ios_SMPTETime* jObj = __NEW_org_xmlvm_ios_SMPTETime();
	org_xmlvm_ios_SMPTETime___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_SMPTETime.mSubframes_ = obj.mSubframes;
	jObj->fields.org_xmlvm_ios_SMPTETime.mSubframeDivisor_ = obj.mSubframeDivisor;
	jObj->fields.org_xmlvm_ios_SMPTETime.mCounter_ = obj.mCounter;
	jObj->fields.org_xmlvm_ios_SMPTETime.mType_ = obj.mType;
	jObj->fields.org_xmlvm_ios_SMPTETime.mFlags_ = obj.mFlags;
	jObj->fields.org_xmlvm_ios_SMPTETime.mHours_ = obj.mHours;
	jObj->fields.org_xmlvm_ios_SMPTETime.mMinutes_ = obj.mMinutes;
	jObj->fields.org_xmlvm_ios_SMPTETime.mSeconds_ = obj.mSeconds;
	jObj->fields.org_xmlvm_ios_SMPTETime.mFrames_ = obj.mFrames;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_SMPTETime]
//XMLVM_END_WRAPPER
