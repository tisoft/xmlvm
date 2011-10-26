
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MIDIPacketList toMIDIPacketList(void *obj)
{
	org_xmlvm_ios_MIDIPacketList* cObj = obj;
	MIDIPacketList toRet;
	toRet.numPackets = cObj->fields.org_xmlvm_ios_MIDIPacketList.numPackets_;
	return toRet;
}
JAVA_OBJECT fromMIDIPacketList(MIDIPacketList obj)
{
	org_xmlvm_ios_MIDIPacketList* jObj = __NEW_org_xmlvm_ios_MIDIPacketList();
	org_xmlvm_ios_MIDIPacketList___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_MIDIPacketList.numPackets_ = obj.numPackets;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDIPacketList]
//XMLVM_END_WRAPPER
