
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AUHostIdentifier toAUHostIdentifier(void *obj)
{
	org_xmlvm_ios_AUHostIdentifier* cObj = obj;
	AUHostIdentifier toRet;
	toRet.hostName = cObj->fields.org_xmlvm_ios_AUHostIdentifier.hostName_;
	org_xmlvm_ios_AUNumVersion* obj0 = cObj->fields.org_xmlvm_ios_AUHostIdentifier.hostVersion_;
	toRet.hostVersion.majorRev = obj0->fields.org_xmlvm_ios_AUNumVersion.majorRev_;
	toRet.hostVersion.minorAndBugRev = obj0->fields.org_xmlvm_ios_AUNumVersion.minorAndBugRev_;
	toRet.hostVersion.stage = obj0->fields.org_xmlvm_ios_AUNumVersion.stage_;
	toRet.hostVersion.nonRelRev = obj0->fields.org_xmlvm_ios_AUNumVersion.nonRelRev_;
	return toRet;
}
JAVA_OBJECT fromAUHostIdentifier(AUHostIdentifier obj)
{
	org_xmlvm_ios_AUHostIdentifier* jObj = __NEW_org_xmlvm_ios_AUHostIdentifier();
	org_xmlvm_ios_AUHostIdentifier___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AUHostIdentifier.hostName_ = obj.hostName;
	org_xmlvm_ios_AUNumVersion* obj0 = jObj->fields.org_xmlvm_ios_AUHostIdentifier.hostVersion_;
	obj0->fields.org_xmlvm_ios_AUNumVersion.majorRev_ = obj.hostVersion.majorRev;
	obj0->fields.org_xmlvm_ios_AUNumVersion.minorAndBugRev_ = obj.hostVersion.minorAndBugRev;
	obj0->fields.org_xmlvm_ios_AUNumVersion.stage_ = obj.hostVersion.stage;
	obj0->fields.org_xmlvm_ios_AUNumVersion.nonRelRev_ = obj.hostVersion.nonRelRev;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUHostIdentifier]
	me->fields.org_xmlvm_ios_AUHostIdentifier.hostVersion_ = __NEW_org_xmlvm_ios_AUNumVersion();
//XMLVM_END_WRAPPER
