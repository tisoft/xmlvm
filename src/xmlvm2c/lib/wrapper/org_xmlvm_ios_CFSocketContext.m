
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFSocketContext toCFSocketContext(void *obj)
{
	org_xmlvm_ios_CFSocketContext* cObj = obj;
	CFSocketContext toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFSocketContext.version_;
	toRet.info = cObj->fields.org_xmlvm_ios_CFSocketContext.info_;
	return toRet;
}
JAVA_OBJECT fromCFSocketContext(CFSocketContext obj)
{
	org_xmlvm_ios_CFSocketContext* jObj = __NEW_org_xmlvm_ios_CFSocketContext();
	org_xmlvm_ios_CFSocketContext___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFSocketContext.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFSocketContext.info_ = obj.info;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFSocketContext]
//XMLVM_END_WRAPPER
