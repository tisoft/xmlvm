
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFStreamError toCFStreamError(void *obj)
{
	org_xmlvm_ios_CFStreamError* cObj = obj;
	CFStreamError toRet;
	toRet.domain = cObj->fields.org_xmlvm_ios_CFStreamError.domain_;
	toRet.error = cObj->fields.org_xmlvm_ios_CFStreamError.error_;
	return toRet;
}
JAVA_OBJECT fromCFStreamError(CFStreamError obj)
{
	org_xmlvm_ios_CFStreamError* jObj = __NEW_org_xmlvm_ios_CFStreamError();
	org_xmlvm_ios_CFStreamError___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFStreamError.domain_ = obj.domain;
	jObj->fields.org_xmlvm_ios_CFStreamError.error_ = obj.error;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFStreamError]
//XMLVM_END_WRAPPER
