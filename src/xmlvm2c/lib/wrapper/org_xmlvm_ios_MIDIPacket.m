
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MIDIPacket toMIDIPacket(void *obj)
{
	org_xmlvm_ios_MIDIPacket* cObj = obj;
	MIDIPacket toRet;
	toRet.timeStamp = cObj->fields.org_xmlvm_ios_MIDIPacket.timeStamp_;
	toRet.length = cObj->fields.org_xmlvm_ios_MIDIPacket.length_;
	return toRet;
}
JAVA_OBJECT fromMIDIPacket(MIDIPacket obj)
{
	org_xmlvm_ios_MIDIPacket* jObj = __NEW_org_xmlvm_ios_MIDIPacket();
	org_xmlvm_ios_MIDIPacket___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_MIDIPacket.timeStamp_ = obj.timeStamp;
	jObj->fields.org_xmlvm_ios_MIDIPacket.length_ = obj.length;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDIPacket]
//XMLVM_END_WRAPPER
