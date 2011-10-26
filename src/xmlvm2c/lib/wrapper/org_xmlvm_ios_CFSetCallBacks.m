
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFSetCallBacks toCFSetCallBacks(void *obj)
{
	org_xmlvm_ios_CFSetCallBacks* cObj = obj;
	CFSetCallBacks toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFSetCallBacks.version_;
	toRet.retain = cObj->fields.org_xmlvm_ios_CFSetCallBacks.retain_;
	toRet.release = cObj->fields.org_xmlvm_ios_CFSetCallBacks.release_;
	toRet.copyDescription = cObj->fields.org_xmlvm_ios_CFSetCallBacks.copyDescription_;
	toRet.equal = cObj->fields.org_xmlvm_ios_CFSetCallBacks.equal_;
	toRet.hash = cObj->fields.org_xmlvm_ios_CFSetCallBacks.hash_;
	return toRet;
}
JAVA_OBJECT fromCFSetCallBacks(CFSetCallBacks obj)
{
	org_xmlvm_ios_CFSetCallBacks* jObj = __NEW_org_xmlvm_ios_CFSetCallBacks();
	org_xmlvm_ios_CFSetCallBacks___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFSetCallBacks.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFSetCallBacks.retain_ = obj.retain;
	jObj->fields.org_xmlvm_ios_CFSetCallBacks.release_ = obj.release;
	jObj->fields.org_xmlvm_ios_CFSetCallBacks.copyDescription_ = obj.copyDescription;
	jObj->fields.org_xmlvm_ios_CFSetCallBacks.equal_ = obj.equal;
	jObj->fields.org_xmlvm_ios_CFSetCallBacks.hash_ = obj.hash;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFSetCallBacks]
//XMLVM_END_WRAPPER
