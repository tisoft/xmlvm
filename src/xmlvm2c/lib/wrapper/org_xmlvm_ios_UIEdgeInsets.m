
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

UIEdgeInsets toUIEdgeInsets(void *obj)
{
	org_xmlvm_ios_UIEdgeInsets* cObj = obj;
	UIEdgeInsets toRet;
	toRet.right = cObj->fields.org_xmlvm_ios_UIEdgeInsets.right_;
	toRet.bottom = cObj->fields.org_xmlvm_ios_UIEdgeInsets.bottom_;
	toRet.left = cObj->fields.org_xmlvm_ios_UIEdgeInsets.left_;
	toRet.top = cObj->fields.org_xmlvm_ios_UIEdgeInsets.top_;
	return toRet;
}
JAVA_OBJECT fromUIEdgeInsets(UIEdgeInsets obj)
{
	org_xmlvm_ios_UIEdgeInsets* jObj = __NEW_org_xmlvm_ios_UIEdgeInsets();
	org_xmlvm_ios_UIEdgeInsets___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_UIEdgeInsets.right_ = obj.right;
	jObj->fields.org_xmlvm_ios_UIEdgeInsets.bottom_ = obj.bottom;
	jObj->fields.org_xmlvm_ios_UIEdgeInsets.left_ = obj.left;
	jObj->fields.org_xmlvm_ios_UIEdgeInsets.top_ = obj.top;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_UIEdgeInsets]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIEdgeInsets___INIT____float_float_float_float]
	org_xmlvm_ios_UIEdgeInsets* thiz = me;
	thiz->fields.org_xmlvm_ios_UIEdgeInsets.right_ = n1;
	thiz->fields.org_xmlvm_ios_UIEdgeInsets.bottom_ = n2;
	thiz->fields.org_xmlvm_ios_UIEdgeInsets.left_ = n3;
	thiz->fields.org_xmlvm_ios_UIEdgeInsets.top_ = n4;
//XMLVM_END_WRAPPER
