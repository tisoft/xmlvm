
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MIDIIOErrorNotification toMIDIIOErrorNotification(void *obj)
{
	org_xmlvm_ios_MIDIIOErrorNotification* cObj = obj;
	MIDIIOErrorNotification toRet;
	toRet.messageID = cObj->fields.org_xmlvm_ios_MIDIIOErrorNotification.messageID_;
	toRet.messageSize = cObj->fields.org_xmlvm_ios_MIDIIOErrorNotification.messageSize_;
	toRet.driverDevice = cObj->fields.org_xmlvm_ios_MIDIIOErrorNotification.driverDevice_;
	toRet.errorCode = cObj->fields.org_xmlvm_ios_MIDIIOErrorNotification.errorCode_;
	return toRet;
}
JAVA_OBJECT fromMIDIIOErrorNotification(MIDIIOErrorNotification obj)
{
	org_xmlvm_ios_MIDIIOErrorNotification* jObj = __NEW_org_xmlvm_ios_MIDIIOErrorNotification();
	org_xmlvm_ios_MIDIIOErrorNotification___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_MIDIIOErrorNotification.messageID_ = obj.messageID;
	jObj->fields.org_xmlvm_ios_MIDIIOErrorNotification.messageSize_ = obj.messageSize;
	jObj->fields.org_xmlvm_ios_MIDIIOErrorNotification.driverDevice_ = obj.driverDevice;
	jObj->fields.org_xmlvm_ios_MIDIIOErrorNotification.errorCode_ = obj.errorCode;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDIIOErrorNotification]
//XMLVM_END_WRAPPER
