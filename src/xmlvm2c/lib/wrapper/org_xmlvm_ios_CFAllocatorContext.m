
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFAllocatorContext toCFAllocatorContext(void *obj)
{
	org_xmlvm_ios_CFAllocatorContext* cObj = obj;
	CFAllocatorContext toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFAllocatorContext.version_;
	toRet.info = cObj->fields.org_xmlvm_ios_CFAllocatorContext.info_;
	toRet.retain = cObj->fields.org_xmlvm_ios_CFAllocatorContext.retain_;
	toRet.release = cObj->fields.org_xmlvm_ios_CFAllocatorContext.release_;
	toRet.copyDescription = cObj->fields.org_xmlvm_ios_CFAllocatorContext.copyDescription_;
	toRet.allocate = cObj->fields.org_xmlvm_ios_CFAllocatorContext.allocate_;
	toRet.reallocate = cObj->fields.org_xmlvm_ios_CFAllocatorContext.reallocate_;
	toRet.deallocate = cObj->fields.org_xmlvm_ios_CFAllocatorContext.deallocate_;
	toRet.preferredSize = cObj->fields.org_xmlvm_ios_CFAllocatorContext.preferredSize_;
	return toRet;
}
JAVA_OBJECT fromCFAllocatorContext(CFAllocatorContext obj)
{
	org_xmlvm_ios_CFAllocatorContext* jObj = __NEW_org_xmlvm_ios_CFAllocatorContext();
	org_xmlvm_ios_CFAllocatorContext___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFAllocatorContext.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFAllocatorContext.info_ = obj.info;
	jObj->fields.org_xmlvm_ios_CFAllocatorContext.retain_ = obj.retain;
	jObj->fields.org_xmlvm_ios_CFAllocatorContext.release_ = obj.release;
	jObj->fields.org_xmlvm_ios_CFAllocatorContext.copyDescription_ = obj.copyDescription;
	jObj->fields.org_xmlvm_ios_CFAllocatorContext.allocate_ = obj.allocate;
	jObj->fields.org_xmlvm_ios_CFAllocatorContext.reallocate_ = obj.reallocate;
	jObj->fields.org_xmlvm_ios_CFAllocatorContext.deallocate_ = obj.deallocate;
	jObj->fields.org_xmlvm_ios_CFAllocatorContext.preferredSize_ = obj.preferredSize;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFAllocatorContext]
//XMLVM_END_WRAPPER
