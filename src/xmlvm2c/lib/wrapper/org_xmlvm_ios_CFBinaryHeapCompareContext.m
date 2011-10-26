
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFBinaryHeapCompareContext toCFBinaryHeapCompareContext(void *obj)
{
	org_xmlvm_ios_CFBinaryHeapCompareContext* cObj = obj;
	CFBinaryHeapCompareContext toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFBinaryHeapCompareContext.version_;
	toRet.info = cObj->fields.org_xmlvm_ios_CFBinaryHeapCompareContext.info_;
	return toRet;
}
JAVA_OBJECT fromCFBinaryHeapCompareContext(CFBinaryHeapCompareContext obj)
{
	org_xmlvm_ios_CFBinaryHeapCompareContext* jObj = __NEW_org_xmlvm_ios_CFBinaryHeapCompareContext();
	org_xmlvm_ios_CFBinaryHeapCompareContext___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFBinaryHeapCompareContext.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFBinaryHeapCompareContext.info_ = obj.info;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFBinaryHeapCompareContext]
//XMLVM_END_WRAPPER
