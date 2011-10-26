
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFBinaryHeapCallBacks toCFBinaryHeapCallBacks(void *obj)
{
	org_xmlvm_ios_CFBinaryHeapCallBacks* cObj = obj;
	CFBinaryHeapCallBacks toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFBinaryHeapCallBacks.version_;
	return toRet;
}
JAVA_OBJECT fromCFBinaryHeapCallBacks(CFBinaryHeapCallBacks obj)
{
	org_xmlvm_ios_CFBinaryHeapCallBacks* jObj = __NEW_org_xmlvm_ios_CFBinaryHeapCallBacks();
	org_xmlvm_ios_CFBinaryHeapCallBacks___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFBinaryHeapCallBacks.version_ = obj.version;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFBinaryHeapCallBacks]
//XMLVM_END_WRAPPER
