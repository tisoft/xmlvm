
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioUnitParameterIDName toAudioUnitParameterIDName(void *obj)
{
	org_xmlvm_ios_AudioUnitParameterIDName* cObj = obj;
	AudioUnitParameterIDName toRet;
	toRet.inID = cObj->fields.org_xmlvm_ios_AudioUnitParameterIDName.inID_;
	toRet.inDesiredLength = cObj->fields.org_xmlvm_ios_AudioUnitParameterIDName.inDesiredLength_;
	toRet.outName = cObj->fields.org_xmlvm_ios_AudioUnitParameterIDName.outName_;
	return toRet;
}
JAVA_OBJECT fromAudioUnitParameterIDName(AudioUnitParameterIDName obj)
{
	org_xmlvm_ios_AudioUnitParameterIDName* jObj = __NEW_org_xmlvm_ios_AudioUnitParameterIDName();
	org_xmlvm_ios_AudioUnitParameterIDName___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioUnitParameterIDName.inID_ = obj.inID;
	jObj->fields.org_xmlvm_ios_AudioUnitParameterIDName.inDesiredLength_ = obj.inDesiredLength;
	jObj->fields.org_xmlvm_ios_AudioUnitParameterIDName.outName_ = obj.outName;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitParameterIDName]
//XMLVM_END_WRAPPER
