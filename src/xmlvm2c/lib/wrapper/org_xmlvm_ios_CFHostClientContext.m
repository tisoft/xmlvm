
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFHostClientContext toCFHostClientContext(void *obj)
{
	org_xmlvm_ios_CFHostClientContext* cObj = obj;
	CFHostClientContext toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFHostClientContext.version_;
	toRet.info = cObj->fields.org_xmlvm_ios_CFHostClientContext.info_;
	toRet.retain = cObj->fields.org_xmlvm_ios_CFHostClientContext.retain_;
	toRet.release = cObj->fields.org_xmlvm_ios_CFHostClientContext.release_;
	toRet.copyDescription = cObj->fields.org_xmlvm_ios_CFHostClientContext.copyDescription_;
	return toRet;
}
JAVA_OBJECT fromCFHostClientContext(CFHostClientContext obj)
{
	org_xmlvm_ios_CFHostClientContext* jObj = __NEW_org_xmlvm_ios_CFHostClientContext();
	org_xmlvm_ios_CFHostClientContext___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFHostClientContext.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFHostClientContext.info_ = obj.info;
	jObj->fields.org_xmlvm_ios_CFHostClientContext.retain_ = obj.retain;
	jObj->fields.org_xmlvm_ios_CFHostClientContext.release_ = obj.release;
	jObj->fields.org_xmlvm_ios_CFHostClientContext.copyDescription_ = obj.copyDescription;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFHostClientContext]
//XMLVM_END_WRAPPER
