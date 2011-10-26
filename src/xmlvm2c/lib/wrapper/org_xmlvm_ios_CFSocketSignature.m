
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFSocketSignature toCFSocketSignature(void *obj)
{
	org_xmlvm_ios_CFSocketSignature* cObj = obj;
	CFSocketSignature toRet;
	toRet.protocolFamily = cObj->fields.org_xmlvm_ios_CFSocketSignature.protocolFamily_;
	toRet.socketType = cObj->fields.org_xmlvm_ios_CFSocketSignature.socketType_;
	toRet.protocol = cObj->fields.org_xmlvm_ios_CFSocketSignature.protocol_;
	toRet.address = cObj->fields.org_xmlvm_ios_CFSocketSignature.address_;
	return toRet;
}
JAVA_OBJECT fromCFSocketSignature(CFSocketSignature obj)
{
	org_xmlvm_ios_CFSocketSignature* jObj = __NEW_org_xmlvm_ios_CFSocketSignature();
	org_xmlvm_ios_CFSocketSignature___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFSocketSignature.protocolFamily_ = obj.protocolFamily;
	jObj->fields.org_xmlvm_ios_CFSocketSignature.socketType_ = obj.socketType;
	jObj->fields.org_xmlvm_ios_CFSocketSignature.protocol_ = obj.protocol;
	jObj->fields.org_xmlvm_ios_CFSocketSignature.address_ = obj.address;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFSocketSignature]
//XMLVM_END_WRAPPER
