
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

NSObjCValue toNSObjCValue(void *obj)
{
	org_xmlvm_ios_NSObjCValue* cObj = obj;
	NSObjCValue toRet;
	toRet.type = cObj->fields.org_xmlvm_ios_NSObjCValue.type_;
	return toRet;
}
JAVA_OBJECT fromNSObjCValue(NSObjCValue obj)
{
	org_xmlvm_ios_NSObjCValue* jObj = __NEW_org_xmlvm_ios_NSObjCValue();
	org_xmlvm_ios_NSObjCValue___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_NSObjCValue.type_ = obj.type;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_NSObjCValue]
//XMLVM_END_WRAPPER
