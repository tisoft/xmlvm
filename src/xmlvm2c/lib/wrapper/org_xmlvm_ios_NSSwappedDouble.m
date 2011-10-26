
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

NSSwappedDouble toNSSwappedDouble(void *obj)
{
	org_xmlvm_ios_NSSwappedDouble* cObj = obj;
	NSSwappedDouble toRet;
	toRet.v = cObj->fields.org_xmlvm_ios_NSSwappedDouble.v_;
	return toRet;
}
JAVA_OBJECT fromNSSwappedDouble(NSSwappedDouble obj)
{
	org_xmlvm_ios_NSSwappedDouble* jObj = __NEW_org_xmlvm_ios_NSSwappedDouble();
	org_xmlvm_ios_NSSwappedDouble___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_NSSwappedDouble.v_ = obj.v;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_NSSwappedDouble]
//XMLVM_END_WRAPPER
