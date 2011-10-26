
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFFileDescriptorContext toCFFileDescriptorContext(void *obj)
{
	org_xmlvm_ios_CFFileDescriptorContext* cObj = obj;
	CFFileDescriptorContext toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFFileDescriptorContext.version_;
	toRet.info = cObj->fields.org_xmlvm_ios_CFFileDescriptorContext.info_;
	return toRet;
}
JAVA_OBJECT fromCFFileDescriptorContext(CFFileDescriptorContext obj)
{
	org_xmlvm_ios_CFFileDescriptorContext* jObj = __NEW_org_xmlvm_ios_CFFileDescriptorContext();
	org_xmlvm_ios_CFFileDescriptorContext___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFFileDescriptorContext.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFFileDescriptorContext.info_ = obj.info;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFFileDescriptorContext]
//XMLVM_END_WRAPPER
