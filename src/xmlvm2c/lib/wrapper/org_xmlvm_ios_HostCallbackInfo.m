
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

HostCallbackInfo toHostCallbackInfo(void *obj)
{
	org_xmlvm_ios_HostCallbackInfo* cObj = obj;
	HostCallbackInfo toRet;
	toRet.hostUserData = cObj->fields.org_xmlvm_ios_HostCallbackInfo.hostUserData_;
	toRet.beatAndTempoProc = cObj->fields.org_xmlvm_ios_HostCallbackInfo.beatAndTempoProc_;
	toRet.musicalTimeLocationProc = cObj->fields.org_xmlvm_ios_HostCallbackInfo.musicalTimeLocationProc_;
	toRet.transportStateProc = cObj->fields.org_xmlvm_ios_HostCallbackInfo.transportStateProc_;
	return toRet;
}
JAVA_OBJECT fromHostCallbackInfo(HostCallbackInfo obj)
{
	org_xmlvm_ios_HostCallbackInfo* jObj = __NEW_org_xmlvm_ios_HostCallbackInfo();
	org_xmlvm_ios_HostCallbackInfo___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_HostCallbackInfo.hostUserData_ = obj.hostUserData;
	jObj->fields.org_xmlvm_ios_HostCallbackInfo.beatAndTempoProc_ = obj.beatAndTempoProc;
	jObj->fields.org_xmlvm_ios_HostCallbackInfo.musicalTimeLocationProc_ = obj.musicalTimeLocationProc;
	jObj->fields.org_xmlvm_ios_HostCallbackInfo.transportStateProc_ = obj.transportStateProc;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_HostCallbackInfo]
//XMLVM_END_WRAPPER
