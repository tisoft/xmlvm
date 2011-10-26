
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CGRect toCGRect(void *obj)
{
	org_xmlvm_ios_CGRect* cObj = obj;
	CGRect toRet;
	org_xmlvm_ios_CGPoint* obj0 = cObj->fields.org_xmlvm_ios_CGRect.origin_;
	toRet.origin.x = obj0->fields.org_xmlvm_ios_CGPoint.x_;
	toRet.origin.y = obj0->fields.org_xmlvm_ios_CGPoint.y_;
	org_xmlvm_ios_CGSize* obj1 = cObj->fields.org_xmlvm_ios_CGRect.size_;
	toRet.size.width = obj1->fields.org_xmlvm_ios_CGSize.width_;
	toRet.size.height = obj1->fields.org_xmlvm_ios_CGSize.height_;
	return toRet;
}
JAVA_OBJECT fromCGRect(CGRect obj)
{
	org_xmlvm_ios_CGRect* jObj = __NEW_org_xmlvm_ios_CGRect();
	org_xmlvm_ios_CGRect___INIT___(jObj);
	org_xmlvm_ios_CGPoint* obj0 = jObj->fields.org_xmlvm_ios_CGRect.origin_;
	obj0->fields.org_xmlvm_ios_CGPoint.x_ = obj.origin.x;
	obj0->fields.org_xmlvm_ios_CGPoint.y_ = obj.origin.y;
	org_xmlvm_ios_CGSize* obj1 = jObj->fields.org_xmlvm_ios_CGRect.size_;
	obj1->fields.org_xmlvm_ios_CGSize.width_ = obj.size.width;
	obj1->fields.org_xmlvm_ios_CGSize.height_ = obj.size.height;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGRect]
	me->fields.org_xmlvm_ios_CGRect.origin_ = __NEW_org_xmlvm_ios_CGPoint();
	me->fields.org_xmlvm_ios_CGRect.size_ = __NEW_org_xmlvm_ios_CGSize();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGRect___INIT____float_float_float_float]
	org_xmlvm_ios_CGRect* thiz = me;
	org_xmlvm_ios_CGPoint* obj0 = thiz->fields.org_xmlvm_ios_CGRect.origin_;
	obj0->fields.org_xmlvm_ios_CGPoint.x_ = n1;
	obj0->fields.org_xmlvm_ios_CGPoint.y_ = n2;
	org_xmlvm_ios_CGSize* obj1 = thiz->fields.org_xmlvm_ios_CGRect.size_;
	obj1->fields.org_xmlvm_ios_CGSize.width_ = n3;
	obj1->fields.org_xmlvm_ios_CGSize.height_ = n4;
//XMLVM_END_WRAPPER
