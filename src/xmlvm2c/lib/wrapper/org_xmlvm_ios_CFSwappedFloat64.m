
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFSwappedFloat64 toCFSwappedFloat64(void *obj)
{
	org_xmlvm_ios_CFSwappedFloat64* cObj = obj;
	CFSwappedFloat64 toRet;
	toRet.v = cObj->fields.org_xmlvm_ios_CFSwappedFloat64.v_;
	return toRet;
}
JAVA_OBJECT fromCFSwappedFloat64(CFSwappedFloat64 obj)
{
	org_xmlvm_ios_CFSwappedFloat64* jObj = __NEW_org_xmlvm_ios_CFSwappedFloat64();
	org_xmlvm_ios_CFSwappedFloat64___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFSwappedFloat64.v_ = obj.v;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFSwappedFloat64]
//XMLVM_END_WRAPPER
