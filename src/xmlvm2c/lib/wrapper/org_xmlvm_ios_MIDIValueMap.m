
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MIDIValueMap toMIDIValueMap(void *obj)
{
	org_xmlvm_ios_MIDIValueMap* cObj = obj;
	MIDIValueMap toRet;
	return toRet;
}
JAVA_OBJECT fromMIDIValueMap(MIDIValueMap obj)
{
	org_xmlvm_ios_MIDIValueMap* jObj = __NEW_org_xmlvm_ios_MIDIValueMap();
	org_xmlvm_ios_MIDIValueMap___INIT___(jObj);
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDIValueMap]
//XMLVM_END_WRAPPER
