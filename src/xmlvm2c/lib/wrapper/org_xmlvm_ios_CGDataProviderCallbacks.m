
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CGDataProviderCallbacks toCGDataProviderCallbacks(void *obj)
{
	org_xmlvm_ios_CGDataProviderCallbacks* cObj = obj;
	CGDataProviderCallbacks toRet;
	toRet.getBytes = cObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.getBytes_;
	toRet.skipBytes = cObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.skipBytes_;
	toRet.rewind = cObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.rewind_;
	toRet.releaseProvider = cObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.releaseProvider_;
	return toRet;
}
JAVA_OBJECT fromCGDataProviderCallbacks(CGDataProviderCallbacks obj)
{
	org_xmlvm_ios_CGDataProviderCallbacks* jObj = __NEW_org_xmlvm_ios_CGDataProviderCallbacks();
	org_xmlvm_ios_CGDataProviderCallbacks___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.getBytes_ = obj.getBytes;
	jObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.skipBytes_ = obj.skipBytes;
	jObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.rewind_ = obj.rewind;
	jObj->fields.org_xmlvm_ios_CGDataProviderCallbacks.releaseProvider_ = obj.releaseProvider;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGDataProviderCallbacks]
//XMLVM_END_WRAPPER
