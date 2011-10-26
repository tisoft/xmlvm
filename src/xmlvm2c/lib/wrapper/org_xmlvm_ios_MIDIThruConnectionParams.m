
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MIDIThruConnectionParams toMIDIThruConnectionParams(void *obj)
{
	org_xmlvm_ios_MIDIThruConnectionParams* cObj = obj;
	MIDIThruConnectionParams toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.version_;
	toRet.numSources = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.numSources_;
	toRet.numDestinations = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.numDestinations_;
	toRet.highVelocity = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.highVelocity_;
	toRet.lowVelocity = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.lowVelocity_;
	toRet.highNote = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.highNote_;
	toRet.lowNote = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.lowNote_;
	org_xmlvm_ios_MIDITransform* obj0 = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.noteNumber_;
	toRet.noteNumber.transform = obj0->fields.org_xmlvm_ios_MIDITransform.transform_;
	toRet.noteNumber.param = obj0->fields.org_xmlvm_ios_MIDITransform.param_;
	org_xmlvm_ios_MIDITransform* obj1 = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.velocity_;
	toRet.velocity.transform = obj1->fields.org_xmlvm_ios_MIDITransform.transform_;
	toRet.velocity.param = obj1->fields.org_xmlvm_ios_MIDITransform.param_;
	org_xmlvm_ios_MIDITransform* obj2 = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.keyPressure_;
	toRet.keyPressure.transform = obj2->fields.org_xmlvm_ios_MIDITransform.transform_;
	toRet.keyPressure.param = obj2->fields.org_xmlvm_ios_MIDITransform.param_;
	org_xmlvm_ios_MIDITransform* obj3 = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.channelPressure_;
	toRet.channelPressure.transform = obj3->fields.org_xmlvm_ios_MIDITransform.transform_;
	toRet.channelPressure.param = obj3->fields.org_xmlvm_ios_MIDITransform.param_;
	org_xmlvm_ios_MIDITransform* obj4 = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.programChange_;
	toRet.programChange.transform = obj4->fields.org_xmlvm_ios_MIDITransform.transform_;
	toRet.programChange.param = obj4->fields.org_xmlvm_ios_MIDITransform.param_;
	org_xmlvm_ios_MIDITransform* obj5 = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.pitchBend_;
	toRet.pitchBend.transform = obj5->fields.org_xmlvm_ios_MIDITransform.transform_;
	toRet.pitchBend.param = obj5->fields.org_xmlvm_ios_MIDITransform.param_;
	toRet.filterOutSysEx = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.filterOutSysEx_;
	toRet.filterOutMTC = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.filterOutMTC_;
	toRet.filterOutBeatClock = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.filterOutBeatClock_;
	toRet.filterOutTuneRequest = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.filterOutTuneRequest_;
	toRet.filterOutAllControls = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.filterOutAllControls_;
	toRet.numControlTransforms = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.numControlTransforms_;
	toRet.numMaps = cObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.numMaps_;
	return toRet;
}
JAVA_OBJECT fromMIDIThruConnectionParams(MIDIThruConnectionParams obj)
{
	org_xmlvm_ios_MIDIThruConnectionParams* jObj = __NEW_org_xmlvm_ios_MIDIThruConnectionParams();
	org_xmlvm_ios_MIDIThruConnectionParams___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.numSources_ = obj.numSources;
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.numDestinations_ = obj.numDestinations;
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.highVelocity_ = obj.highVelocity;
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.lowVelocity_ = obj.lowVelocity;
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.highNote_ = obj.highNote;
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.lowNote_ = obj.lowNote;
	org_xmlvm_ios_MIDITransform* obj0 = jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.noteNumber_;
	obj0->fields.org_xmlvm_ios_MIDITransform.transform_ = obj.noteNumber.transform;
	obj0->fields.org_xmlvm_ios_MIDITransform.param_ = obj.noteNumber.param;
	org_xmlvm_ios_MIDITransform* obj1 = jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.velocity_;
	obj1->fields.org_xmlvm_ios_MIDITransform.transform_ = obj.velocity.transform;
	obj1->fields.org_xmlvm_ios_MIDITransform.param_ = obj.velocity.param;
	org_xmlvm_ios_MIDITransform* obj2 = jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.keyPressure_;
	obj2->fields.org_xmlvm_ios_MIDITransform.transform_ = obj.keyPressure.transform;
	obj2->fields.org_xmlvm_ios_MIDITransform.param_ = obj.keyPressure.param;
	org_xmlvm_ios_MIDITransform* obj3 = jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.channelPressure_;
	obj3->fields.org_xmlvm_ios_MIDITransform.transform_ = obj.channelPressure.transform;
	obj3->fields.org_xmlvm_ios_MIDITransform.param_ = obj.channelPressure.param;
	org_xmlvm_ios_MIDITransform* obj4 = jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.programChange_;
	obj4->fields.org_xmlvm_ios_MIDITransform.transform_ = obj.programChange.transform;
	obj4->fields.org_xmlvm_ios_MIDITransform.param_ = obj.programChange.param;
	org_xmlvm_ios_MIDITransform* obj5 = jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.pitchBend_;
	obj5->fields.org_xmlvm_ios_MIDITransform.transform_ = obj.pitchBend.transform;
	obj5->fields.org_xmlvm_ios_MIDITransform.param_ = obj.pitchBend.param;
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.filterOutSysEx_ = obj.filterOutSysEx;
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.filterOutMTC_ = obj.filterOutMTC;
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.filterOutBeatClock_ = obj.filterOutBeatClock;
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.filterOutTuneRequest_ = obj.filterOutTuneRequest;
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.filterOutAllControls_ = obj.filterOutAllControls;
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.numControlTransforms_ = obj.numControlTransforms;
	jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.numMaps_ = obj.numMaps;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDIThruConnectionParams]
	me->fields.org_xmlvm_ios_MIDIThruConnectionParams.noteNumber_ = __NEW_org_xmlvm_ios_MIDITransform();
	me->fields.org_xmlvm_ios_MIDIThruConnectionParams.velocity_ = __NEW_org_xmlvm_ios_MIDITransform();
	me->fields.org_xmlvm_ios_MIDIThruConnectionParams.keyPressure_ = __NEW_org_xmlvm_ios_MIDITransform();
	me->fields.org_xmlvm_ios_MIDIThruConnectionParams.channelPressure_ = __NEW_org_xmlvm_ios_MIDITransform();
	me->fields.org_xmlvm_ios_MIDIThruConnectionParams.programChange_ = __NEW_org_xmlvm_ios_MIDITransform();
	me->fields.org_xmlvm_ios_MIDIThruConnectionParams.pitchBend_ = __NEW_org_xmlvm_ios_MIDITransform();
//XMLVM_END_WRAPPER
