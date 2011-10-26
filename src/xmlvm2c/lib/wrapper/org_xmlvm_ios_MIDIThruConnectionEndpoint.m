
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MIDIThruConnectionEndpoint toMIDIThruConnectionEndpoint(void *obj)
{
	org_xmlvm_ios_MIDIThruConnectionEndpoint* cObj = obj;
	MIDIThruConnectionEndpoint toRet;
	toRet.endpointRef = cObj->fields.org_xmlvm_ios_MIDIThruConnectionEndpoint.endpointRef_;
	toRet.uniqueID = cObj->fields.org_xmlvm_ios_MIDIThruConnectionEndpoint.uniqueID_;
	return toRet;
}
JAVA_OBJECT fromMIDIThruConnectionEndpoint(MIDIThruConnectionEndpoint obj)
{
	org_xmlvm_ios_MIDIThruConnectionEndpoint* jObj = __NEW_org_xmlvm_ios_MIDIThruConnectionEndpoint();
	org_xmlvm_ios_MIDIThruConnectionEndpoint___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionEndpoint.endpointRef_ = obj.endpointRef;
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionEndpoint.uniqueID_ = obj.uniqueID;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDIThruConnectionEndpoint]
//XMLVM_END_WRAPPER
