
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CMTimeRange toCMTimeRange(void *obj)
{
	org_xmlvm_ios_CMTimeRange* cObj = obj;
	CMTimeRange toRet;
	org_xmlvm_ios_CMTime* obj0 = cObj->fields.org_xmlvm_ios_CMTimeRange.start_;
	toRet.start.value = obj0->fields.org_xmlvm_ios_CMTime.value_;
	toRet.start.timescale = obj0->fields.org_xmlvm_ios_CMTime.timescale_;
	toRet.start.flags = obj0->fields.org_xmlvm_ios_CMTime.flags_;
	toRet.start.epoch = obj0->fields.org_xmlvm_ios_CMTime.epoch_;
	org_xmlvm_ios_CMTime* obj1 = cObj->fields.org_xmlvm_ios_CMTimeRange.duration_;
	toRet.duration.value = obj1->fields.org_xmlvm_ios_CMTime.value_;
	toRet.duration.timescale = obj1->fields.org_xmlvm_ios_CMTime.timescale_;
	toRet.duration.flags = obj1->fields.org_xmlvm_ios_CMTime.flags_;
	toRet.duration.epoch = obj1->fields.org_xmlvm_ios_CMTime.epoch_;
	return toRet;
}
JAVA_OBJECT fromCMTimeRange(CMTimeRange obj)
{
	org_xmlvm_ios_CMTimeRange* jObj = __NEW_org_xmlvm_ios_CMTimeRange();
	org_xmlvm_ios_CMTimeRange___INIT___(jObj);
	org_xmlvm_ios_CMTime* obj0 = jObj->fields.org_xmlvm_ios_CMTimeRange.start_;
	obj0->fields.org_xmlvm_ios_CMTime.value_ = obj.start.value;
	obj0->fields.org_xmlvm_ios_CMTime.timescale_ = obj.start.timescale;
	obj0->fields.org_xmlvm_ios_CMTime.flags_ = obj.start.flags;
	obj0->fields.org_xmlvm_ios_CMTime.epoch_ = obj.start.epoch;
	org_xmlvm_ios_CMTime* obj1 = jObj->fields.org_xmlvm_ios_CMTimeRange.duration_;
	obj1->fields.org_xmlvm_ios_CMTime.value_ = obj.duration.value;
	obj1->fields.org_xmlvm_ios_CMTime.timescale_ = obj.duration.timescale;
	obj1->fields.org_xmlvm_ios_CMTime.flags_ = obj.duration.flags;
	obj1->fields.org_xmlvm_ios_CMTime.epoch_ = obj.duration.epoch;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CMTimeRange]
	me->fields.org_xmlvm_ios_CMTimeRange.start_ = __NEW_org_xmlvm_ios_CMTime();
	me->fields.org_xmlvm_ios_CMTimeRange.duration_ = __NEW_org_xmlvm_ios_CMTime();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMTimeRange___INIT____CMTime_CMTime]
	org_xmlvm_ios_CMTimeRange* thiz = me;
	org_xmlvm_ios_CMTime* obj0 = thiz->fields.org_xmlvm_ios_CMTimeRange.start_;
	obj0->fields.org_xmlvm_ios_CMTime.value_ = n1;
	obj0->fields.org_xmlvm_ios_CMTime.timescale_ = n2;
	obj0->fields.org_xmlvm_ios_CMTime.flags_ = n3;
	obj0->fields.org_xmlvm_ios_CMTime.epoch_ = n4;
	org_xmlvm_ios_CMTime* obj1 = thiz->fields.org_xmlvm_ios_CMTimeRange.duration_;
	obj1->fields.org_xmlvm_ios_CMTime.value_ = n5;
	obj1->fields.org_xmlvm_ios_CMTime.timescale_ = n6;
	obj1->fields.org_xmlvm_ios_CMTime.flags_ = n7;
	obj1->fields.org_xmlvm_ios_CMTime.epoch_ = n8;
//XMLVM_END_WRAPPER
