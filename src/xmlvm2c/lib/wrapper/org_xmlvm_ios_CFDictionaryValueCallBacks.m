
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFDictionaryValueCallBacks toCFDictionaryValueCallBacks(void *obj)
{
	org_xmlvm_ios_CFDictionaryValueCallBacks* cObj = obj;
	CFDictionaryValueCallBacks toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.version_;
	toRet.retain = cObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.retain_;
	toRet.release = cObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.release_;
	toRet.copyDescription = cObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.copyDescription_;
	toRet.equal = cObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.equal_;
	return toRet;
}
JAVA_OBJECT fromCFDictionaryValueCallBacks(CFDictionaryValueCallBacks obj)
{
	org_xmlvm_ios_CFDictionaryValueCallBacks* jObj = __NEW_org_xmlvm_ios_CFDictionaryValueCallBacks();
	org_xmlvm_ios_CFDictionaryValueCallBacks___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.retain_ = obj.retain;
	jObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.release_ = obj.release;
	jObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.copyDescription_ = obj.copyDescription;
	jObj->fields.org_xmlvm_ios_CFDictionaryValueCallBacks.equal_ = obj.equal;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFDictionaryValueCallBacks]
//XMLVM_END_WRAPPER
