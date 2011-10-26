
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AUChannelInfo toAUChannelInfo(void *obj)
{
	org_xmlvm_ios_AUChannelInfo* cObj = obj;
	AUChannelInfo toRet;
	toRet.inChannels = cObj->fields.org_xmlvm_ios_AUChannelInfo.inChannels_;
	toRet.outChannels = cObj->fields.org_xmlvm_ios_AUChannelInfo.outChannels_;
	return toRet;
}
JAVA_OBJECT fromAUChannelInfo(AUChannelInfo obj)
{
	org_xmlvm_ios_AUChannelInfo* jObj = __NEW_org_xmlvm_ios_AUChannelInfo();
	org_xmlvm_ios_AUChannelInfo___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AUChannelInfo.inChannels_ = obj.inChannels;
	jObj->fields.org_xmlvm_ios_AUChannelInfo.outChannels_ = obj.outChannels;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUChannelInfo]
//XMLVM_END_WRAPPER
