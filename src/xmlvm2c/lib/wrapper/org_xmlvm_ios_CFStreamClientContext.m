
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFStreamClientContext toCFStreamClientContext(void *obj)
{
	org_xmlvm_ios_CFStreamClientContext* cObj = obj;
	CFStreamClientContext toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFStreamClientContext.version_;
	toRet.info = cObj->fields.org_xmlvm_ios_CFStreamClientContext.info_;
	return toRet;
}
JAVA_OBJECT fromCFStreamClientContext(CFStreamClientContext obj)
{
	org_xmlvm_ios_CFStreamClientContext* jObj = __NEW_org_xmlvm_ios_CFStreamClientContext();
	org_xmlvm_ios_CFStreamClientContext___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFStreamClientContext.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFStreamClientContext.info_ = obj.info;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFStreamClientContext]
//XMLVM_END_WRAPPER
