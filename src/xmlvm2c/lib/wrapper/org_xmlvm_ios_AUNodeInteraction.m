
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AUNodeInteraction toAUNodeInteraction(void *obj)
{
	org_xmlvm_ios_AUNodeInteraction* cObj = obj;
	AUNodeInteraction toRet;
	toRet.nodeInteractionType = cObj->fields.org_xmlvm_ios_AUNodeInteraction.nodeInteractionType_;
	return toRet;
}
JAVA_OBJECT fromAUNodeInteraction(AUNodeInteraction obj)
{
	org_xmlvm_ios_AUNodeInteraction* jObj = __NEW_org_xmlvm_ios_AUNodeInteraction();
	org_xmlvm_ios_AUNodeInteraction___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AUNodeInteraction.nodeInteractionType_ = obj.nodeInteractionType;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUNodeInteraction]
//XMLVM_END_WRAPPER
