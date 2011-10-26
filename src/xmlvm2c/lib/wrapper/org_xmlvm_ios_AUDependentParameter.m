
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AUDependentParameter toAUDependentParameter(void *obj)
{
	org_xmlvm_ios_AUDependentParameter* cObj = obj;
	AUDependentParameter toRet;
	toRet.mScope = cObj->fields.org_xmlvm_ios_AUDependentParameter.mScope_;
	toRet.mParameterID = cObj->fields.org_xmlvm_ios_AUDependentParameter.mParameterID_;
	return toRet;
}
JAVA_OBJECT fromAUDependentParameter(AUDependentParameter obj)
{
	org_xmlvm_ios_AUDependentParameter* jObj = __NEW_org_xmlvm_ios_AUDependentParameter();
	org_xmlvm_ios_AUDependentParameter___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AUDependentParameter.mScope_ = obj.mScope;
	jObj->fields.org_xmlvm_ios_AUDependentParameter.mParameterID_ = obj.mParameterID;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUDependentParameter]
//XMLVM_END_WRAPPER
