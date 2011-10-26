
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AUParameterMIDIMapping toAUParameterMIDIMapping(void *obj)
{
	org_xmlvm_ios_AUParameterMIDIMapping* cObj = obj;
	AUParameterMIDIMapping toRet;
	toRet.mScope = cObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mScope_;
	toRet.mElement = cObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mElement_;
	toRet.mParameterID = cObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mParameterID_;
	toRet.mFlags = cObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mFlags_;
	toRet.mSubRangeMin = cObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mSubRangeMin_;
	toRet.mSubRangeMax = cObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mSubRangeMax_;
	toRet.mStatus = cObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mStatus_;
	toRet.mData1 = cObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mData1_;
	toRet.reserved1 = cObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.reserved1_;
	toRet.reserved2 = cObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.reserved2_;
	toRet.reserved3 = cObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.reserved3_;
	return toRet;
}
JAVA_OBJECT fromAUParameterMIDIMapping(AUParameterMIDIMapping obj)
{
	org_xmlvm_ios_AUParameterMIDIMapping* jObj = __NEW_org_xmlvm_ios_AUParameterMIDIMapping();
	org_xmlvm_ios_AUParameterMIDIMapping___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mScope_ = obj.mScope;
	jObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mElement_ = obj.mElement;
	jObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mParameterID_ = obj.mParameterID;
	jObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mFlags_ = obj.mFlags;
	jObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mSubRangeMin_ = obj.mSubRangeMin;
	jObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mSubRangeMax_ = obj.mSubRangeMax;
	jObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mStatus_ = obj.mStatus;
	jObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.mData1_ = obj.mData1;
	jObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.reserved1_ = obj.reserved1;
	jObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.reserved2_ = obj.reserved2;
	jObj->fields.org_xmlvm_ios_AUParameterMIDIMapping.reserved3_ = obj.reserved3;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUParameterMIDIMapping]
//XMLVM_END_WRAPPER
