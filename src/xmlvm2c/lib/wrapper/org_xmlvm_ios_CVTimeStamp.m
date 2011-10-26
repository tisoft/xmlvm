
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CVTimeStamp toCVTimeStamp(void *obj)
{
	org_xmlvm_ios_CVTimeStamp* cObj = obj;
	CVTimeStamp toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CVTimeStamp.version_;
	toRet.videoTimeScale = cObj->fields.org_xmlvm_ios_CVTimeStamp.videoTimeScale_;
	toRet.videoTime = cObj->fields.org_xmlvm_ios_CVTimeStamp.videoTime_;
	toRet.hostTime = cObj->fields.org_xmlvm_ios_CVTimeStamp.hostTime_;
	toRet.rateScalar = cObj->fields.org_xmlvm_ios_CVTimeStamp.rateScalar_;
	toRet.videoRefreshPeriod = cObj->fields.org_xmlvm_ios_CVTimeStamp.videoRefreshPeriod_;
	org_xmlvm_ios_CVSMPTETime* obj0 = cObj->fields.org_xmlvm_ios_CVTimeStamp.smpteTime_;
	toRet.smpteTime.subframes = obj0->fields.org_xmlvm_ios_CVSMPTETime.subframes_;
	toRet.smpteTime.subframeDivisor = obj0->fields.org_xmlvm_ios_CVSMPTETime.subframeDivisor_;
	toRet.smpteTime.counter = obj0->fields.org_xmlvm_ios_CVSMPTETime.counter_;
	toRet.smpteTime.type = obj0->fields.org_xmlvm_ios_CVSMPTETime.type_;
	toRet.smpteTime.flags = obj0->fields.org_xmlvm_ios_CVSMPTETime.flags_;
	toRet.smpteTime.hours = obj0->fields.org_xmlvm_ios_CVSMPTETime.hours_;
	toRet.smpteTime.minutes = obj0->fields.org_xmlvm_ios_CVSMPTETime.minutes_;
	toRet.smpteTime.seconds = obj0->fields.org_xmlvm_ios_CVSMPTETime.seconds_;
	toRet.smpteTime.frames = obj0->fields.org_xmlvm_ios_CVSMPTETime.frames_;
	toRet.flags = cObj->fields.org_xmlvm_ios_CVTimeStamp.flags_;
	toRet.reserved = cObj->fields.org_xmlvm_ios_CVTimeStamp.reserved_;
	return toRet;
}
JAVA_OBJECT fromCVTimeStamp(CVTimeStamp obj)
{
	org_xmlvm_ios_CVTimeStamp* jObj = __NEW_org_xmlvm_ios_CVTimeStamp();
	org_xmlvm_ios_CVTimeStamp___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CVTimeStamp.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CVTimeStamp.videoTimeScale_ = obj.videoTimeScale;
	jObj->fields.org_xmlvm_ios_CVTimeStamp.videoTime_ = obj.videoTime;
	jObj->fields.org_xmlvm_ios_CVTimeStamp.hostTime_ = obj.hostTime;
	jObj->fields.org_xmlvm_ios_CVTimeStamp.rateScalar_ = obj.rateScalar;
	jObj->fields.org_xmlvm_ios_CVTimeStamp.videoRefreshPeriod_ = obj.videoRefreshPeriod;
	org_xmlvm_ios_CVSMPTETime* obj0 = jObj->fields.org_xmlvm_ios_CVTimeStamp.smpteTime_;
	obj0->fields.org_xmlvm_ios_CVSMPTETime.subframes_ = obj.smpteTime.subframes;
	obj0->fields.org_xmlvm_ios_CVSMPTETime.subframeDivisor_ = obj.smpteTime.subframeDivisor;
	obj0->fields.org_xmlvm_ios_CVSMPTETime.counter_ = obj.smpteTime.counter;
	obj0->fields.org_xmlvm_ios_CVSMPTETime.type_ = obj.smpteTime.type;
	obj0->fields.org_xmlvm_ios_CVSMPTETime.flags_ = obj.smpteTime.flags;
	obj0->fields.org_xmlvm_ios_CVSMPTETime.hours_ = obj.smpteTime.hours;
	obj0->fields.org_xmlvm_ios_CVSMPTETime.minutes_ = obj.smpteTime.minutes;
	obj0->fields.org_xmlvm_ios_CVSMPTETime.seconds_ = obj.smpteTime.seconds;
	obj0->fields.org_xmlvm_ios_CVSMPTETime.frames_ = obj.smpteTime.frames;
	jObj->fields.org_xmlvm_ios_CVTimeStamp.flags_ = obj.flags;
	jObj->fields.org_xmlvm_ios_CVTimeStamp.reserved_ = obj.reserved;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CVTimeStamp]
	me->fields.org_xmlvm_ios_CVTimeStamp.smpteTime_ = __NEW_org_xmlvm_ios_CVSMPTETime();
//XMLVM_END_WRAPPER
