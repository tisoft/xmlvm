
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFMachPortContext toCFMachPortContext(void *obj)
{
	org_xmlvm_ios_CFMachPortContext* cObj = obj;
	CFMachPortContext toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFMachPortContext.version_;
	toRet.info = cObj->fields.org_xmlvm_ios_CFMachPortContext.info_;
	return toRet;
}
JAVA_OBJECT fromCFMachPortContext(CFMachPortContext obj)
{
	org_xmlvm_ios_CFMachPortContext* jObj = __NEW_org_xmlvm_ios_CFMachPortContext();
	org_xmlvm_ios_CFMachPortContext___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFMachPortContext.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFMachPortContext.info_ = obj.info;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFMachPortContext]
//XMLVM_END_WRAPPER
