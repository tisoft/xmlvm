
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

SCNetworkConnectionContext toSCNetworkConnectionContext(void *obj)
{
	org_xmlvm_ios_SCNetworkConnectionContext* cObj = obj;
	SCNetworkConnectionContext toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_SCNetworkConnectionContext.version_;
	toRet.info = cObj->fields.org_xmlvm_ios_SCNetworkConnectionContext.info_;
	return toRet;
}
JAVA_OBJECT fromSCNetworkConnectionContext(SCNetworkConnectionContext obj)
{
	org_xmlvm_ios_SCNetworkConnectionContext* jObj = __NEW_org_xmlvm_ios_SCNetworkConnectionContext();
	org_xmlvm_ios_SCNetworkConnectionContext___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_SCNetworkConnectionContext.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_SCNetworkConnectionContext.info_ = obj.info;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_SCNetworkConnectionContext]
//XMLVM_END_WRAPPER
