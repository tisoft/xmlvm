
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CGDataProviderDirectCallbacks toCGDataProviderDirectCallbacks(void *obj)
{
	org_xmlvm_ios_CGDataProviderDirectCallbacks* cObj = obj;
	CGDataProviderDirectCallbacks toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.version_;
	toRet.getBytePointer = cObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.getBytePointer_;
	toRet.releaseBytePointer = cObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.releaseBytePointer_;
	toRet.getBytesAtPosition = cObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.getBytesAtPosition_;
	toRet.releaseInfo = cObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.releaseInfo_;
	return toRet;
}
JAVA_OBJECT fromCGDataProviderDirectCallbacks(CGDataProviderDirectCallbacks obj)
{
	org_xmlvm_ios_CGDataProviderDirectCallbacks* jObj = __NEW_org_xmlvm_ios_CGDataProviderDirectCallbacks();
	org_xmlvm_ios_CGDataProviderDirectCallbacks___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.getBytePointer_ = obj.getBytePointer;
	jObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.releaseBytePointer_ = obj.releaseBytePointer;
	jObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.getBytesAtPosition_ = obj.getBytesAtPosition;
	jObj->fields.org_xmlvm_ios_CGDataProviderDirectCallbacks.releaseInfo_ = obj.releaseInfo;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGDataProviderDirectCallbacks]
//XMLVM_END_WRAPPER
