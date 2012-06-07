
//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreAudio_FillOutASBDForLPCM___org_xmlvm_ios_AudioStreamBasicDescription_double_int_int_int_boolean_boolean_boolean]
FillOutASBDForLPCM(toAudioStreamBasicDescription(n1),n2,n3,n4,n5,n6,n7,n8);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreAudio_FillOutAudioTimeStampWithHostTime___org_xmlvm_ios_AudioTimeStamp_long]
FillOutAudioTimeStampWithHostTime(toAudioTimeStamp(n1),n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreAudio_FillOutAudioTimeStampWithSampleAndHostTime___org_xmlvm_ios_AudioTimeStamp_double_long]
FillOutAudioTimeStampWithSampleAndHostTime(toAudioTimeStamp(n1),n2,n3);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreAudio_FillOutAudioTimeStampWithSampleTime___org_xmlvm_ios_AudioTimeStamp_double]
FillOutAudioTimeStampWithSampleTime(toAudioTimeStamp(n1),n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreAudio_CalculateLPCMFlags___int_int_boolean_boolean_boolean]

    int var0 = CalculateLPCMFlags(n1,n2,n3,n4,n5);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreAudio_IsAudioFormatNativeEndian___org_xmlvm_ios_AudioStreamBasicDescription]

    BOOL var0 = IsAudioFormatNativeEndian(toAudioStreamBasicDescription(n1));
    
    return var0;
//XMLVM_END_WRAPPER
