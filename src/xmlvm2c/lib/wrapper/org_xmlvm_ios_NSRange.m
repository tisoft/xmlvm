
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

NSRange toNSRange(void *obj)
{
	org_xmlvm_ios_NSRange* cObj = obj;
	NSRange toRet;
	toRet.location = cObj->fields.org_xmlvm_ios_NSRange.location_;
	toRet.length = cObj->fields.org_xmlvm_ios_NSRange.length_;
	return toRet;
}
JAVA_OBJECT fromNSRange(NSRange obj)
{
	org_xmlvm_ios_NSRange* jObj = __NEW_org_xmlvm_ios_NSRange();
	org_xmlvm_ios_NSRange___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_NSRange.location_ = obj.location;
	jObj->fields.org_xmlvm_ios_NSRange.length_ = obj.length;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_NSRange]
//XMLVM_END_WRAPPER
