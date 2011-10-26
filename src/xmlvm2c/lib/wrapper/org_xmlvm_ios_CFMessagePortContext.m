
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFMessagePortContext toCFMessagePortContext(void *obj)
{
	org_xmlvm_ios_CFMessagePortContext* cObj = obj;
	CFMessagePortContext toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFMessagePortContext.version_;
	toRet.info = cObj->fields.org_xmlvm_ios_CFMessagePortContext.info_;
	return toRet;
}
JAVA_OBJECT fromCFMessagePortContext(CFMessagePortContext obj)
{
	org_xmlvm_ios_CFMessagePortContext* jObj = __NEW_org_xmlvm_ios_CFMessagePortContext();
	org_xmlvm_ios_CFMessagePortContext___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFMessagePortContext.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFMessagePortContext.info_ = obj.info;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFMessagePortContext]
//XMLVM_END_WRAPPER
