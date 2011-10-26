
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFTreeContext toCFTreeContext(void *obj)
{
	org_xmlvm_ios_CFTreeContext* cObj = obj;
	CFTreeContext toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFTreeContext.version_;
	toRet.info = cObj->fields.org_xmlvm_ios_CFTreeContext.info_;
	toRet.retain = cObj->fields.org_xmlvm_ios_CFTreeContext.retain_;
	toRet.release = cObj->fields.org_xmlvm_ios_CFTreeContext.release_;
	toRet.copyDescription = cObj->fields.org_xmlvm_ios_CFTreeContext.copyDescription_;
	return toRet;
}
JAVA_OBJECT fromCFTreeContext(CFTreeContext obj)
{
	org_xmlvm_ios_CFTreeContext* jObj = __NEW_org_xmlvm_ios_CFTreeContext();
	org_xmlvm_ios_CFTreeContext___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFTreeContext.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFTreeContext.info_ = obj.info;
	jObj->fields.org_xmlvm_ios_CFTreeContext.retain_ = obj.retain;
	jObj->fields.org_xmlvm_ios_CFTreeContext.release_ = obj.release;
	jObj->fields.org_xmlvm_ios_CFTreeContext.copyDescription_ = obj.copyDescription;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFTreeContext]
//XMLVM_END_WRAPPER
