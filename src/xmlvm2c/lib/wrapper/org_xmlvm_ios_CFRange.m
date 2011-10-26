
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFRange toCFRange(void *obj)
{
	org_xmlvm_ios_CFRange* cObj = obj;
	CFRange toRet;
	toRet.location = cObj->fields.org_xmlvm_ios_CFRange.location_;
	toRet.length = cObj->fields.org_xmlvm_ios_CFRange.length_;
	return toRet;
}
JAVA_OBJECT fromCFRange(CFRange obj)
{
	org_xmlvm_ios_CFRange* jObj = __NEW_org_xmlvm_ios_CFRange();
	org_xmlvm_ios_CFRange___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFRange.location_ = obj.location;
	jObj->fields.org_xmlvm_ios_CFRange.length_ = obj.length;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFRange]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRange___INIT____long_long]
	org_xmlvm_ios_CFRange* thiz = me;
	thiz->fields.org_xmlvm_ios_CFRange.location_ = n1;
	thiz->fields.org_xmlvm_ios_CFRange.length_ = n2;
//XMLVM_END_WRAPPER
