
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFDictionaryKeyCallBacks toCFDictionaryKeyCallBacks(void *obj)
{
	org_xmlvm_ios_CFDictionaryKeyCallBacks* cObj = obj;
	CFDictionaryKeyCallBacks toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.version_;
	toRet.retain = cObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.retain_;
	toRet.release = cObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.release_;
	toRet.copyDescription = cObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.copyDescription_;
	toRet.equal = cObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.equal_;
	toRet.hash = cObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.hash_;
	return toRet;
}
JAVA_OBJECT fromCFDictionaryKeyCallBacks(CFDictionaryKeyCallBacks obj)
{
	org_xmlvm_ios_CFDictionaryKeyCallBacks* jObj = __NEW_org_xmlvm_ios_CFDictionaryKeyCallBacks();
	org_xmlvm_ios_CFDictionaryKeyCallBacks___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.retain_ = obj.retain;
	jObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.release_ = obj.release;
	jObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.copyDescription_ = obj.copyDescription;
	jObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.equal_ = obj.equal;
	jObj->fields.org_xmlvm_ios_CFDictionaryKeyCallBacks.hash_ = obj.hash;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFDictionaryKeyCallBacks]
//XMLVM_END_WRAPPER
