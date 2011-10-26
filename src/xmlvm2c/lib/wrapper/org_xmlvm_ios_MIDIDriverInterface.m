
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MIDIDriverInterface toMIDIDriverInterface(void *obj)
{
	org_xmlvm_ios_MIDIDriverInterface* cObj = obj;
	MIDIDriverInterface toRet;
	return toRet;
}
JAVA_OBJECT fromMIDIDriverInterface(MIDIDriverInterface obj)
{
	org_xmlvm_ios_MIDIDriverInterface* jObj = __NEW_org_xmlvm_ios_MIDIDriverInterface();
	org_xmlvm_ios_MIDIDriverInterface___INIT___(jObj);
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDIDriverInterface]
//XMLVM_END_WRAPPER
