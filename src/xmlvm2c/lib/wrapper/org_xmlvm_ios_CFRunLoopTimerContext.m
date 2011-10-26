
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFRunLoopTimerContext toCFRunLoopTimerContext(void *obj)
{
	org_xmlvm_ios_CFRunLoopTimerContext* cObj = obj;
	CFRunLoopTimerContext toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFRunLoopTimerContext.version_;
	toRet.info = cObj->fields.org_xmlvm_ios_CFRunLoopTimerContext.info_;
	return toRet;
}
JAVA_OBJECT fromCFRunLoopTimerContext(CFRunLoopTimerContext obj)
{
	org_xmlvm_ios_CFRunLoopTimerContext* jObj = __NEW_org_xmlvm_ios_CFRunLoopTimerContext();
	org_xmlvm_ios_CFRunLoopTimerContext___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFRunLoopTimerContext.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFRunLoopTimerContext.info_ = obj.info;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFRunLoopTimerContext]
//XMLVM_END_WRAPPER
