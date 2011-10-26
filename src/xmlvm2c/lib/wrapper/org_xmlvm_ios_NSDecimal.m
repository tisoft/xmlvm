
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

NSDecimal toNSDecimal(void *obj)
{
	org_xmlvm_ios_NSDecimal* cObj = obj;
	NSDecimal toRet;
	return toRet;
}
JAVA_OBJECT fromNSDecimal(NSDecimal obj)
{
	org_xmlvm_ios_NSDecimal* jObj = __NEW_org_xmlvm_ios_NSDecimal();
	org_xmlvm_ios_NSDecimal___INIT___(jObj);
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_NSDecimal]
//XMLVM_END_WRAPPER
