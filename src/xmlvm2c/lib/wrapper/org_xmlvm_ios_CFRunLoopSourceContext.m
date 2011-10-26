
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFRunLoopSourceContext toCFRunLoopSourceContext(void *obj)
{
	org_xmlvm_ios_CFRunLoopSourceContext* cObj = obj;
	CFRunLoopSourceContext toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFRunLoopSourceContext.version_;
	toRet.info = cObj->fields.org_xmlvm_ios_CFRunLoopSourceContext.info_;
	return toRet;
}
JAVA_OBJECT fromCFRunLoopSourceContext(CFRunLoopSourceContext obj)
{
	org_xmlvm_ios_CFRunLoopSourceContext* jObj = __NEW_org_xmlvm_ios_CFRunLoopSourceContext();
	org_xmlvm_ios_CFRunLoopSourceContext___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFRunLoopSourceContext.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFRunLoopSourceContext.info_ = obj.info;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFRunLoopSourceContext]
//XMLVM_END_WRAPPER
