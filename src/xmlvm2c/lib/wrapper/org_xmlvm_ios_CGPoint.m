
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CGPoint toCGPoint(void *obj)
{
	org_xmlvm_ios_CGPoint* cObj = obj;
	CGPoint toRet;
	toRet.x = cObj->fields.org_xmlvm_ios_CGPoint.x_;
	toRet.y = cObj->fields.org_xmlvm_ios_CGPoint.y_;
	return toRet;
}
JAVA_OBJECT fromCGPoint(CGPoint obj)
{
	org_xmlvm_ios_CGPoint* jObj = __NEW_org_xmlvm_ios_CGPoint();
	org_xmlvm_ios_CGPoint___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CGPoint.x_ = obj.x;
	jObj->fields.org_xmlvm_ios_CGPoint.y_ = obj.y;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGPoint]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPoint___INIT____float_float]
	org_xmlvm_ios_CGPoint* thiz = me;
	thiz->fields.org_xmlvm_ios_CGPoint.x_ = n1;
	thiz->fields.org_xmlvm_ios_CGPoint.y_ = n2;
//XMLVM_END_WRAPPER
