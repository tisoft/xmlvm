
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AUHostVersionIdentifier toAUHostVersionIdentifier(void *obj)
{
	org_xmlvm_ios_AUHostVersionIdentifier* cObj = obj;
	AUHostVersionIdentifier toRet;
	toRet.hostName = cObj->fields.org_xmlvm_ios_AUHostVersionIdentifier.hostName_;
	toRet.hostVersion = cObj->fields.org_xmlvm_ios_AUHostVersionIdentifier.hostVersion_;
	return toRet;
}
JAVA_OBJECT fromAUHostVersionIdentifier(AUHostVersionIdentifier obj)
{
	org_xmlvm_ios_AUHostVersionIdentifier* jObj = __NEW_org_xmlvm_ios_AUHostVersionIdentifier();
	org_xmlvm_ios_AUHostVersionIdentifier___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AUHostVersionIdentifier.hostName_ = obj.hostName;
	jObj->fields.org_xmlvm_ios_AUHostVersionIdentifier.hostVersion_ = obj.hostVersion;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUHostVersionIdentifier]
//XMLVM_END_WRAPPER
