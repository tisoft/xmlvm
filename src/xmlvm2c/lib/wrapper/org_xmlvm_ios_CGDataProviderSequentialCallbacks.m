
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CGDataProviderSequentialCallbacks toCGDataProviderSequentialCallbacks(void *obj)
{
	org_xmlvm_ios_CGDataProviderSequentialCallbacks* cObj = obj;
	CGDataProviderSequentialCallbacks toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.version_;
	toRet.getBytes = cObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.getBytes_;
	toRet.skipForward = cObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.skipForward_;
	toRet.rewind = cObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.rewind_;
	toRet.releaseInfo = cObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.releaseInfo_;
	return toRet;
}
JAVA_OBJECT fromCGDataProviderSequentialCallbacks(CGDataProviderSequentialCallbacks obj)
{
	org_xmlvm_ios_CGDataProviderSequentialCallbacks* jObj = __NEW_org_xmlvm_ios_CGDataProviderSequentialCallbacks();
	org_xmlvm_ios_CGDataProviderSequentialCallbacks___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.getBytes_ = obj.getBytes;
	jObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.skipForward_ = obj.skipForward;
	jObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.rewind_ = obj.rewind;
	jObj->fields.org_xmlvm_ios_CGDataProviderSequentialCallbacks.releaseInfo_ = obj.releaseInfo;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGDataProviderSequentialCallbacks]
//XMLVM_END_WRAPPER
