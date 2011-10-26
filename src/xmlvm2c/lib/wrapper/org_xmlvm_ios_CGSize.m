
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CGSize toCGSize(void *obj)
{
	org_xmlvm_ios_CGSize* cObj = obj;
	CGSize toRet;
	toRet.width = cObj->fields.org_xmlvm_ios_CGSize.width_;
	toRet.height = cObj->fields.org_xmlvm_ios_CGSize.height_;
	return toRet;
}
JAVA_OBJECT fromCGSize(CGSize obj)
{
	org_xmlvm_ios_CGSize* jObj = __NEW_org_xmlvm_ios_CGSize();
	org_xmlvm_ios_CGSize___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CGSize.width_ = obj.width;
	jObj->fields.org_xmlvm_ios_CGSize.height_ = obj.height;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGSize]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGSize___INIT____float_float]
	org_xmlvm_ios_CGSize* thiz = me;
	thiz->fields.org_xmlvm_ios_CGSize.width_ = n1;
	thiz->fields.org_xmlvm_ios_CGSize.height_ = n2;
//XMLVM_END_WRAPPER
