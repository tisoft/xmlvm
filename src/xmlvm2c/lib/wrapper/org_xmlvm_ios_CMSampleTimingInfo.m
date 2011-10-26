
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CMSampleTimingInfo toCMSampleTimingInfo(void *obj)
{
	org_xmlvm_ios_CMSampleTimingInfo* cObj = obj;
	CMSampleTimingInfo toRet;
	org_xmlvm_ios_CMTime* obj0 = cObj->fields.org_xmlvm_ios_CMSampleTimingInfo.duration_;
	toRet.duration.value = obj0->fields.org_xmlvm_ios_CMTime.value_;
	toRet.duration.timescale = obj0->fields.org_xmlvm_ios_CMTime.timescale_;
	toRet.duration.flags = obj0->fields.org_xmlvm_ios_CMTime.flags_;
	toRet.duration.epoch = obj0->fields.org_xmlvm_ios_CMTime.epoch_;
	org_xmlvm_ios_CMTime* obj1 = cObj->fields.org_xmlvm_ios_CMSampleTimingInfo.presentationTimeStamp_;
	toRet.presentationTimeStamp.value = obj1->fields.org_xmlvm_ios_CMTime.value_;
	toRet.presentationTimeStamp.timescale = obj1->fields.org_xmlvm_ios_CMTime.timescale_;
	toRet.presentationTimeStamp.flags = obj1->fields.org_xmlvm_ios_CMTime.flags_;
	toRet.presentationTimeStamp.epoch = obj1->fields.org_xmlvm_ios_CMTime.epoch_;
	org_xmlvm_ios_CMTime* obj2 = cObj->fields.org_xmlvm_ios_CMSampleTimingInfo.decodeTimeStamp_;
	toRet.decodeTimeStamp.value = obj2->fields.org_xmlvm_ios_CMTime.value_;
	toRet.decodeTimeStamp.timescale = obj2->fields.org_xmlvm_ios_CMTime.timescale_;
	toRet.decodeTimeStamp.flags = obj2->fields.org_xmlvm_ios_CMTime.flags_;
	toRet.decodeTimeStamp.epoch = obj2->fields.org_xmlvm_ios_CMTime.epoch_;
	return toRet;
}
JAVA_OBJECT fromCMSampleTimingInfo(CMSampleTimingInfo obj)
{
	org_xmlvm_ios_CMSampleTimingInfo* jObj = __NEW_org_xmlvm_ios_CMSampleTimingInfo();
	org_xmlvm_ios_CMSampleTimingInfo___INIT___(jObj);
	org_xmlvm_ios_CMTime* obj0 = jObj->fields.org_xmlvm_ios_CMSampleTimingInfo.duration_;
	obj0->fields.org_xmlvm_ios_CMTime.value_ = obj.duration.value;
	obj0->fields.org_xmlvm_ios_CMTime.timescale_ = obj.duration.timescale;
	obj0->fields.org_xmlvm_ios_CMTime.flags_ = obj.duration.flags;
	obj0->fields.org_xmlvm_ios_CMTime.epoch_ = obj.duration.epoch;
	org_xmlvm_ios_CMTime* obj1 = jObj->fields.org_xmlvm_ios_CMSampleTimingInfo.presentationTimeStamp_;
	obj1->fields.org_xmlvm_ios_CMTime.value_ = obj.presentationTimeStamp.value;
	obj1->fields.org_xmlvm_ios_CMTime.timescale_ = obj.presentationTimeStamp.timescale;
	obj1->fields.org_xmlvm_ios_CMTime.flags_ = obj.presentationTimeStamp.flags;
	obj1->fields.org_xmlvm_ios_CMTime.epoch_ = obj.presentationTimeStamp.epoch;
	org_xmlvm_ios_CMTime* obj2 = jObj->fields.org_xmlvm_ios_CMSampleTimingInfo.decodeTimeStamp_;
	obj2->fields.org_xmlvm_ios_CMTime.value_ = obj.decodeTimeStamp.value;
	obj2->fields.org_xmlvm_ios_CMTime.timescale_ = obj.decodeTimeStamp.timescale;
	obj2->fields.org_xmlvm_ios_CMTime.flags_ = obj.decodeTimeStamp.flags;
	obj2->fields.org_xmlvm_ios_CMTime.epoch_ = obj.decodeTimeStamp.epoch;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CMSampleTimingInfo]
	me->fields.org_xmlvm_ios_CMSampleTimingInfo.duration_ = __NEW_org_xmlvm_ios_CMTime();
	me->fields.org_xmlvm_ios_CMSampleTimingInfo.presentationTimeStamp_ = __NEW_org_xmlvm_ios_CMTime();
	me->fields.org_xmlvm_ios_CMSampleTimingInfo.decodeTimeStamp_ = __NEW_org_xmlvm_ios_CMTime();
//XMLVM_END_WRAPPER
