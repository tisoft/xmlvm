
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CVSMPTETime toCVSMPTETime(void *obj)
{
	org_xmlvm_ios_CVSMPTETime* cObj = obj;
	CVSMPTETime toRet;
	toRet.subframes = cObj->fields.org_xmlvm_ios_CVSMPTETime.subframes_;
	toRet.subframeDivisor = cObj->fields.org_xmlvm_ios_CVSMPTETime.subframeDivisor_;
	toRet.counter = cObj->fields.org_xmlvm_ios_CVSMPTETime.counter_;
	toRet.type = cObj->fields.org_xmlvm_ios_CVSMPTETime.type_;
	toRet.flags = cObj->fields.org_xmlvm_ios_CVSMPTETime.flags_;
	toRet.hours = cObj->fields.org_xmlvm_ios_CVSMPTETime.hours_;
	toRet.minutes = cObj->fields.org_xmlvm_ios_CVSMPTETime.minutes_;
	toRet.seconds = cObj->fields.org_xmlvm_ios_CVSMPTETime.seconds_;
	toRet.frames = cObj->fields.org_xmlvm_ios_CVSMPTETime.frames_;
	return toRet;
}
JAVA_OBJECT fromCVSMPTETime(CVSMPTETime obj)
{
	org_xmlvm_ios_CVSMPTETime* jObj = __NEW_org_xmlvm_ios_CVSMPTETime();
	org_xmlvm_ios_CVSMPTETime___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CVSMPTETime.subframes_ = obj.subframes;
	jObj->fields.org_xmlvm_ios_CVSMPTETime.subframeDivisor_ = obj.subframeDivisor;
	jObj->fields.org_xmlvm_ios_CVSMPTETime.counter_ = obj.counter;
	jObj->fields.org_xmlvm_ios_CVSMPTETime.type_ = obj.type;
	jObj->fields.org_xmlvm_ios_CVSMPTETime.flags_ = obj.flags;
	jObj->fields.org_xmlvm_ios_CVSMPTETime.hours_ = obj.hours;
	jObj->fields.org_xmlvm_ios_CVSMPTETime.minutes_ = obj.minutes;
	jObj->fields.org_xmlvm_ios_CVSMPTETime.seconds_ = obj.seconds;
	jObj->fields.org_xmlvm_ios_CVSMPTETime.frames_ = obj.frames;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CVSMPTETime]
//XMLVM_END_WRAPPER
