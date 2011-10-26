
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CMTimeMapping toCMTimeMapping(void *obj)
{
	org_xmlvm_ios_CMTimeMapping* cObj = obj;
	CMTimeMapping toRet;
	org_xmlvm_ios_CMTimeRange* obj0 = cObj->fields.org_xmlvm_ios_CMTimeMapping.source_;
	toRet.source.start = obj0->fields.org_xmlvm_ios_CMTimeRange.start_;
	toRet.source.duration = obj0->fields.org_xmlvm_ios_CMTimeRange.duration_;
	org_xmlvm_ios_CMTimeRange* obj1 = cObj->fields.org_xmlvm_ios_CMTimeMapping.target_;
	toRet.target.start = obj1->fields.org_xmlvm_ios_CMTimeRange.start_;
	toRet.target.duration = obj1->fields.org_xmlvm_ios_CMTimeRange.duration_;
	return toRet;
}
JAVA_OBJECT fromCMTimeMapping(CMTimeMapping obj)
{
	org_xmlvm_ios_CMTimeMapping* jObj = __NEW_org_xmlvm_ios_CMTimeMapping();
	org_xmlvm_ios_CMTimeMapping___INIT___(jObj);
	org_xmlvm_ios_CMTimeRange* obj0 = jObj->fields.org_xmlvm_ios_CMTimeMapping.source_;
	obj0->fields.org_xmlvm_ios_CMTimeRange.start_ = obj.source.start;
	obj0->fields.org_xmlvm_ios_CMTimeRange.duration_ = obj.source.duration;
	org_xmlvm_ios_CMTimeRange* obj1 = jObj->fields.org_xmlvm_ios_CMTimeMapping.target_;
	obj1->fields.org_xmlvm_ios_CMTimeRange.start_ = obj.target.start;
	obj1->fields.org_xmlvm_ios_CMTimeRange.duration_ = obj.target.duration;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CMTimeMapping]
	me->fields.org_xmlvm_ios_CMTimeMapping.source_ = __NEW_org_xmlvm_ios_CMTimeRange();
	me->fields.org_xmlvm_ios_CMTimeMapping.target_ = __NEW_org_xmlvm_ios_CMTimeRange();
//XMLVM_END_WRAPPER
