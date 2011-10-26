
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AUDistanceAttenuationData toAUDistanceAttenuationData(void *obj)
{
	org_xmlvm_ios_AUDistanceAttenuationData* cObj = obj;
	AUDistanceAttenuationData toRet;
	toRet.inNumberOfPairs = cObj->fields.org_xmlvm_ios_AUDistanceAttenuationData.inNumberOfPairs_;
	return toRet;
}
JAVA_OBJECT fromAUDistanceAttenuationData(AUDistanceAttenuationData obj)
{
	org_xmlvm_ios_AUDistanceAttenuationData* jObj = __NEW_org_xmlvm_ios_AUDistanceAttenuationData();
	org_xmlvm_ios_AUDistanceAttenuationData___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AUDistanceAttenuationData.inNumberOfPairs_ = obj.inNumberOfPairs;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUDistanceAttenuationData]
//XMLVM_END_WRAPPER
