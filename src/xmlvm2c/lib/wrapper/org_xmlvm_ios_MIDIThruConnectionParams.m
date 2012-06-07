
//XMLVM_BEGIN_IMPLEMENTATION
MIDIThruConnectionParams toMIDIThruConnectionParams(void *obj)
{
    org_xmlvm_ios_MIDIThruConnectionParams* objCObj = obj;
    MIDIThruConnectionParams toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.version_;
    toRet.numSources = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.numSources_;
    toRet.numDestinations = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.numDestinations_;
    toRet.highVelocity = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.highVelocity_;
    toRet.lowVelocity = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.lowVelocity_;
    toRet.highNote = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.highNote_;
    toRet.lowNote = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.lowNote_;
    toRet.noteNumber = toMIDITransform(objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.noteNumber_);
    toRet.velocity = toMIDITransform(objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.velocity_);
    toRet.keyPressure = toMIDITransform(objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.keyPressure_);
    toRet.channelPressure = toMIDITransform(objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.channelPressure_);
    toRet.programChange = toMIDITransform(objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.programChange_);
    toRet.pitchBend = toMIDITransform(objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.pitchBend_);
    toRet.filterOutSysEx = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.filterOutSysEx_;
    toRet.filterOutMTC = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.filterOutMTC_;
    toRet.filterOutBeatClock = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.filterOutBeatClock_;
    toRet.filterOutTuneRequest = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.filterOutTuneRequest_;
    toRet.filterOutAllControls = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.filterOutAllControls_;
    toRet.numControlTransforms = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.numControlTransforms_;
    toRet.numMaps = objCObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.numMaps_;
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
    jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.noteNumber_ = fromMIDITransform(obj.noteNumber);
    jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.velocity_ = fromMIDITransform(obj.velocity);
    jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.keyPressure_ = fromMIDITransform(obj.keyPressure);
    jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.channelPressure_ = fromMIDITransform(obj.channelPressure);
    jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.programChange_ = fromMIDITransform(obj.programChange);
    jObj->fields.org_xmlvm_ios_MIDIThruConnectionParams.pitchBend_ = fromMIDITransform(obj.pitchBend);
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

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIThruConnectionParams___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MIDIThruConnectionParams_initialize__]
MIDIThruConnectionParamsInitialize(toMIDIThruConnectionParams(me));
    
    
//XMLVM_END_WRAPPER
