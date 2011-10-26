
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CMTime toCMTime(void *obj)
{
	org_xmlvm_ios_CMTime* cObj = obj;
	CMTime toRet;
	toRet.value = cObj->fields.org_xmlvm_ios_CMTime.value_;
	toRet.timescale = cObj->fields.org_xmlvm_ios_CMTime.timescale_;
	toRet.flags = cObj->fields.org_xmlvm_ios_CMTime.flags_;
	toRet.epoch = cObj->fields.org_xmlvm_ios_CMTime.epoch_;
	return toRet;
}
JAVA_OBJECT fromCMTime(CMTime obj)
{
	org_xmlvm_ios_CMTime* jObj = __NEW_org_xmlvm_ios_CMTime();
	org_xmlvm_ios_CMTime___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CMTime.value_ = obj.value;
	jObj->fields.org_xmlvm_ios_CMTime.timescale_ = obj.timescale;
	jObj->fields.org_xmlvm_ios_CMTime.flags_ = obj.flags;
	jObj->fields.org_xmlvm_ios_CMTime.epoch_ = obj.epoch;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CMTime]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMTime___INIT____long_int]
	org_xmlvm_ios_CMTime* thiz = me;
	thiz->fields.org_xmlvm_ios_CMTime.value_ = n1;
	thiz->fields.org_xmlvm_ios_CMTime.timescale_ = n2;
	thiz->fields.org_xmlvm_ios_CMTime.flags_ = n3;
	thiz->fields.org_xmlvm_ios_CMTime.epoch_ = n4;
//XMLVM_END_WRAPPER
