
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CGDataConsumerCallbacks toCGDataConsumerCallbacks(void *obj)
{
	org_xmlvm_ios_CGDataConsumerCallbacks* cObj = obj;
	CGDataConsumerCallbacks toRet;
	toRet.putBytes = cObj->fields.org_xmlvm_ios_CGDataConsumerCallbacks.putBytes_;
	toRet.releaseConsumer = cObj->fields.org_xmlvm_ios_CGDataConsumerCallbacks.releaseConsumer_;
	return toRet;
}
JAVA_OBJECT fromCGDataConsumerCallbacks(CGDataConsumerCallbacks obj)
{
	org_xmlvm_ios_CGDataConsumerCallbacks* jObj = __NEW_org_xmlvm_ios_CGDataConsumerCallbacks();
	org_xmlvm_ios_CGDataConsumerCallbacks___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CGDataConsumerCallbacks.putBytes_ = obj.putBytes;
	jObj->fields.org_xmlvm_ios_CGDataConsumerCallbacks.releaseConsumer_ = obj.releaseConsumer;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGDataConsumerCallbacks]
//XMLVM_END_WRAPPER
