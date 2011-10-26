
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioQueueParameterEvent toAudioQueueParameterEvent(void *obj)
{
	org_xmlvm_ios_AudioQueueParameterEvent* cObj = obj;
	AudioQueueParameterEvent toRet;
	toRet.mID = cObj->fields.org_xmlvm_ios_AudioQueueParameterEvent.mID_;
	toRet.mValue = cObj->fields.org_xmlvm_ios_AudioQueueParameterEvent.mValue_;
	return toRet;
}
JAVA_OBJECT fromAudioQueueParameterEvent(AudioQueueParameterEvent obj)
{
	org_xmlvm_ios_AudioQueueParameterEvent* jObj = __NEW_org_xmlvm_ios_AudioQueueParameterEvent();
	org_xmlvm_ios_AudioQueueParameterEvent___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioQueueParameterEvent.mID_ = obj.mID;
	jObj->fields.org_xmlvm_ios_AudioQueueParameterEvent.mValue_ = obj.mValue;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioQueueParameterEvent]
//XMLVM_END_WRAPPER
