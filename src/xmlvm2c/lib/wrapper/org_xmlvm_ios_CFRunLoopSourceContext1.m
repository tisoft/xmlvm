
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFRunLoopSourceContext1 toCFRunLoopSourceContext1(void *obj)
{
	org_xmlvm_ios_CFRunLoopSourceContext1* cObj = obj;
	CFRunLoopSourceContext1 toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFRunLoopSourceContext1.version_;
	toRet.info = cObj->fields.org_xmlvm_ios_CFRunLoopSourceContext1.info_;
	return toRet;
}
JAVA_OBJECT fromCFRunLoopSourceContext1(CFRunLoopSourceContext1 obj)
{
	org_xmlvm_ios_CFRunLoopSourceContext1* jObj = __NEW_org_xmlvm_ios_CFRunLoopSourceContext1();
	org_xmlvm_ios_CFRunLoopSourceContext1___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFRunLoopSourceContext1.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFRunLoopSourceContext1.info_ = obj.info;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFRunLoopSourceContext1]
//XMLVM_END_WRAPPER
