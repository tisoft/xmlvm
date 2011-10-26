
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioUnitConnection toAudioUnitConnection(void *obj)
{
	org_xmlvm_ios_AudioUnitConnection* cObj = obj;
	AudioUnitConnection toRet;
	toRet.sourceAudioUnit = cObj->fields.org_xmlvm_ios_AudioUnitConnection.sourceAudioUnit_;
	toRet.sourceOutputNumber = cObj->fields.org_xmlvm_ios_AudioUnitConnection.sourceOutputNumber_;
	toRet.destInputNumber = cObj->fields.org_xmlvm_ios_AudioUnitConnection.destInputNumber_;
	return toRet;
}
JAVA_OBJECT fromAudioUnitConnection(AudioUnitConnection obj)
{
	org_xmlvm_ios_AudioUnitConnection* jObj = __NEW_org_xmlvm_ios_AudioUnitConnection();
	org_xmlvm_ios_AudioUnitConnection___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioUnitConnection.sourceAudioUnit_ = obj.sourceAudioUnit;
	jObj->fields.org_xmlvm_ios_AudioUnitConnection.sourceOutputNumber_ = obj.sourceOutputNumber;
	jObj->fields.org_xmlvm_ios_AudioUnitConnection.destInputNumber_ = obj.destInputNumber;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitConnection]
//XMLVM_END_WRAPPER
