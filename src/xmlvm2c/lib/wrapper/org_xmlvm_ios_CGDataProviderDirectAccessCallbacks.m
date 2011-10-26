
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CGDataProviderDirectAccessCallbacks toCGDataProviderDirectAccessCallbacks(void *obj)
{
	org_xmlvm_ios_CGDataProviderDirectAccessCallbacks* cObj = obj;
	CGDataProviderDirectAccessCallbacks toRet;
	toRet.getBytePointer = cObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.getBytePointer_;
	toRet.releaseBytePointer = cObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.releaseBytePointer_;
	toRet.getBytes = cObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.getBytes_;
	toRet.releaseProvider = cObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.releaseProvider_;
	return toRet;
}
JAVA_OBJECT fromCGDataProviderDirectAccessCallbacks(CGDataProviderDirectAccessCallbacks obj)
{
	org_xmlvm_ios_CGDataProviderDirectAccessCallbacks* jObj = __NEW_org_xmlvm_ios_CGDataProviderDirectAccessCallbacks();
	org_xmlvm_ios_CGDataProviderDirectAccessCallbacks___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.getBytePointer_ = obj.getBytePointer;
	jObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.releaseBytePointer_ = obj.releaseBytePointer;
	jObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.getBytes_ = obj.getBytes;
	jObj->fields.org_xmlvm_ios_CGDataProviderDirectAccessCallbacks.releaseProvider_ = obj.releaseProvider;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGDataProviderDirectAccessCallbacks]
//XMLVM_END_WRAPPER
