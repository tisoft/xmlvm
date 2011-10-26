
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CGAffineTransform toCGAffineTransform(void *obj)
{
	org_xmlvm_ios_CGAffineTransform* cObj = obj;
	CGAffineTransform toRet;
	toRet.d = cObj->fields.org_xmlvm_ios_CGAffineTransform.d_;
	toRet.c = cObj->fields.org_xmlvm_ios_CGAffineTransform.c_;
	toRet.b = cObj->fields.org_xmlvm_ios_CGAffineTransform.b_;
	toRet.a = cObj->fields.org_xmlvm_ios_CGAffineTransform.a_;
	toRet.ty = cObj->fields.org_xmlvm_ios_CGAffineTransform.ty_;
	toRet.tx = cObj->fields.org_xmlvm_ios_CGAffineTransform.tx_;
	return toRet;
}
JAVA_OBJECT fromCGAffineTransform(CGAffineTransform obj)
{
	org_xmlvm_ios_CGAffineTransform* jObj = __NEW_org_xmlvm_ios_CGAffineTransform();
	org_xmlvm_ios_CGAffineTransform___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CGAffineTransform.d_ = obj.d;
	jObj->fields.org_xmlvm_ios_CGAffineTransform.c_ = obj.c;
	jObj->fields.org_xmlvm_ios_CGAffineTransform.b_ = obj.b;
	jObj->fields.org_xmlvm_ios_CGAffineTransform.a_ = obj.a;
	jObj->fields.org_xmlvm_ios_CGAffineTransform.ty_ = obj.ty;
	jObj->fields.org_xmlvm_ios_CGAffineTransform.tx_ = obj.tx;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGAffineTransform]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGAffineTransform___INIT____float_float_float_float_float_float]
	org_xmlvm_ios_CGAffineTransform* thiz = me;
	thiz->fields.org_xmlvm_ios_CGAffineTransform.d_ = n1;
	thiz->fields.org_xmlvm_ios_CGAffineTransform.c_ = n2;
	thiz->fields.org_xmlvm_ios_CGAffineTransform.b_ = n3;
	thiz->fields.org_xmlvm_ios_CGAffineTransform.a_ = n4;
	thiz->fields.org_xmlvm_ios_CGAffineTransform.ty_ = n5;
	thiz->fields.org_xmlvm_ios_CGAffineTransform.tx_ = n6;
//XMLVM_END_WRAPPER
