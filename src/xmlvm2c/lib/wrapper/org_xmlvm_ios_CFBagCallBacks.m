
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFBagCallBacks toCFBagCallBacks(void *obj)
{
	org_xmlvm_ios_CFBagCallBacks* cObj = obj;
	CFBagCallBacks toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFBagCallBacks.version_;
	toRet.retain = cObj->fields.org_xmlvm_ios_CFBagCallBacks.retain_;
	toRet.release = cObj->fields.org_xmlvm_ios_CFBagCallBacks.release_;
	toRet.copyDescription = cObj->fields.org_xmlvm_ios_CFBagCallBacks.copyDescription_;
	toRet.equal = cObj->fields.org_xmlvm_ios_CFBagCallBacks.equal_;
	toRet.hash = cObj->fields.org_xmlvm_ios_CFBagCallBacks.hash_;
	return toRet;
}
JAVA_OBJECT fromCFBagCallBacks(CFBagCallBacks obj)
{
	org_xmlvm_ios_CFBagCallBacks* jObj = __NEW_org_xmlvm_ios_CFBagCallBacks();
	org_xmlvm_ios_CFBagCallBacks___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFBagCallBacks.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFBagCallBacks.retain_ = obj.retain;
	jObj->fields.org_xmlvm_ios_CFBagCallBacks.release_ = obj.release;
	jObj->fields.org_xmlvm_ios_CFBagCallBacks.copyDescription_ = obj.copyDescription;
	jObj->fields.org_xmlvm_ios_CFBagCallBacks.equal_ = obj.equal;
	jObj->fields.org_xmlvm_ios_CFBagCallBacks.hash_ = obj.hash;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFBagCallBacks]
//XMLVM_END_WRAPPER
