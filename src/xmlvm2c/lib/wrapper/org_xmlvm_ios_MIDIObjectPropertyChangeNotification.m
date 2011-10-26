
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MIDIObjectPropertyChangeNotification toMIDIObjectPropertyChangeNotification(void *obj)
{
	org_xmlvm_ios_MIDIObjectPropertyChangeNotification* cObj = obj;
	MIDIObjectPropertyChangeNotification toRet;
	toRet.messageID = cObj->fields.org_xmlvm_ios_MIDIObjectPropertyChangeNotification.messageID_;
	toRet.messageSize = cObj->fields.org_xmlvm_ios_MIDIObjectPropertyChangeNotification.messageSize_;
	toRet.object = cObj->fields.org_xmlvm_ios_MIDIObjectPropertyChangeNotification.object_;
	toRet.objectType = cObj->fields.org_xmlvm_ios_MIDIObjectPropertyChangeNotification.objectType_;
	toRet.propertyName = cObj->fields.org_xmlvm_ios_MIDIObjectPropertyChangeNotification.propertyName_;
	return toRet;
}
JAVA_OBJECT fromMIDIObjectPropertyChangeNotification(MIDIObjectPropertyChangeNotification obj)
{
	org_xmlvm_ios_MIDIObjectPropertyChangeNotification* jObj = __NEW_org_xmlvm_ios_MIDIObjectPropertyChangeNotification();
	org_xmlvm_ios_MIDIObjectPropertyChangeNotification___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_MIDIObjectPropertyChangeNotification.messageID_ = obj.messageID;
	jObj->fields.org_xmlvm_ios_MIDIObjectPropertyChangeNotification.messageSize_ = obj.messageSize;
	jObj->fields.org_xmlvm_ios_MIDIObjectPropertyChangeNotification.object_ = obj.object;
	jObj->fields.org_xmlvm_ios_MIDIObjectPropertyChangeNotification.objectType_ = obj.objectType;
	jObj->fields.org_xmlvm_ios_MIDIObjectPropertyChangeNotification.propertyName_ = obj.propertyName;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDIObjectPropertyChangeNotification]
//XMLVM_END_WRAPPER
