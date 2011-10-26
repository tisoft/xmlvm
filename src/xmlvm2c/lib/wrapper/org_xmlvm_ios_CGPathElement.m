
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CGPathElement toCGPathElement(void *obj)
{
	org_xmlvm_ios_CGPathElement* cObj = obj;
	CGPathElement toRet;
	toRet.type = cObj->fields.org_xmlvm_ios_CGPathElement.type_;
	toRet.points = cObj->fields.org_xmlvm_ios_CGPathElement.points_;
	return toRet;
}
JAVA_OBJECT fromCGPathElement(CGPathElement obj)
{
	org_xmlvm_ios_CGPathElement* jObj = __NEW_org_xmlvm_ios_CGPathElement();
	org_xmlvm_ios_CGPathElement___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CGPathElement.type_ = obj.type;
	jObj->fields.org_xmlvm_ios_CGPathElement.points_ = obj.points;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGPathElement]
//XMLVM_END_WRAPPER
