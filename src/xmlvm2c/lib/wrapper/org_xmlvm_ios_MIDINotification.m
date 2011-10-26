
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MIDINotification toMIDINotification(void *obj)
{
	org_xmlvm_ios_MIDINotification* cObj = obj;
	MIDINotification toRet;
	toRet.messageID = cObj->fields.org_xmlvm_ios_MIDINotification.messageID_;
	toRet.messageSize = cObj->fields.org_xmlvm_ios_MIDINotification.messageSize_;
	return toRet;
}
JAVA_OBJECT fromMIDINotification(MIDINotification obj)
{
	org_xmlvm_ios_MIDINotification* jObj = __NEW_org_xmlvm_ios_MIDINotification();
	org_xmlvm_ios_MIDINotification___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_MIDINotification.messageID_ = obj.messageID;
	jObj->fields.org_xmlvm_ios_MIDINotification.messageSize_ = obj.messageSize;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDINotification]
//XMLVM_END_WRAPPER
