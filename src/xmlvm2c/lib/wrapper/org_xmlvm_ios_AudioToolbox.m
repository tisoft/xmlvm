
//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioSessionGetPropertySize___int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    
    int var0 = AudioSessionGetPropertySize(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioServicesCreateSystemSoundID___org_xmlvm_ios_CFURL_int_1ARRAY]
XMLVM_VAR_IOS_REF(CFURL, var1, n1);
    XMLVM_VAR_INT_ARRAY(a2, n2); 
    
    int var0 = AudioServicesCreateSystemSoundID(var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioServicesDisposeSystemSoundID___int]

    int var0 = AudioServicesDisposeSystemSoundID(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileInitialize___org_xmlvm_ios_FS_int_org_xmlvm_ios_Reference_int_org_xmlvm_ios_AudioFileID]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileOpenURL___org_xmlvm_ios_CFURL_byte_int_org_xmlvm_ios_AudioFileID]
XMLVM_VAR_IOS_REF(CFURL, var1, n1);
    
    int var0 = AudioFileOpenURL(var1,n2,n3,(AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileGetGlobalInfoSize___int_int_byte_1ARRAY_int_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    XMLVM_VAR_INT_ARRAY(a4, n4); 
    
    int var0 = AudioFileGetGlobalInfoSize(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioSessionSetActiveWithFlags___byte_int]

    int var0 = AudioSessionSetActiveWithFlags(n1,n2);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileOpenWithCallbacks___byte_1ARRAY_java_lang_Object_java_lang_Object_java_lang_Object_java_lang_Object_int_org_xmlvm_ios_AudioFileID]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    int var0 = AudioFileOpenWithCallbacks(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj,((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj,((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj,((org_xmlvm_ios_NSObject*) n5)->fields.org_xmlvm_ios_NSObject.wrappedObj,n6,(AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n7)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_NewAUGraph___org_xmlvm_ios_AUGraph]

    int var0 = NewAUGraph((AUGraph*) (((org_xmlvm_ios_AUGraph*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileStreamParseBytes___org_xmlvm_ios_AudioFileStreamID_int_byte_1ARRAY_int]
XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    
    int var0 = AudioFileStreamParseBytes((AudioFileStreamID*) (((org_xmlvm_ios_AudioFileStreamID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,n4);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileWriteBytes___org_xmlvm_ios_AudioFileID_byte_long_int_1ARRAY_byte_1ARRAY]
XMLVM_VAR_INT_ARRAY(a4, n4); 
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    
    int var0 = AudioFileWriteBytes((AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,n3,a4->fields.org_xmlvm_runtime_XMLVMArray.array_,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileGetUserData___org_xmlvm_ios_AudioFileID_int_int_int_1ARRAY_byte_1ARRAY]
XMLVM_VAR_INT_ARRAY(a4, n4); 
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    
    int var0 = AudioFileGetUserData((AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,n3,a4->fields.org_xmlvm_runtime_XMLVMArray.array_,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFormatGetPropertyInfo___int_int_byte_1ARRAY_int_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    XMLVM_VAR_INT_ARRAY(a4, n4); 
    
    int var0 = AudioFormatGetPropertyInfo(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_CAShowFile___byte_1ARRAY_org_xmlvm_ios_FILE]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    CAShowFile(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,(FILE*) (((org_xmlvm_ios_FILE*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileStreamSeek___org_xmlvm_ios_AudioFileStreamID_long_long_1ARRAY_int_1ARRAY]
XMLVM_VAR_LONG_ARRAY(a3, n3); 
    XMLVM_VAR_INT_ARRAY(a4, n4); 
    
    int var0 = AudioFileStreamSeek((AudioFileStreamID*) (((org_xmlvm_ios_AudioFileStreamID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileStreamGetPropertyInfo___org_xmlvm_ios_AudioFileStreamID_int_int_1ARRAY_byte_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    XMLVM_VAR_BYTE_ARRAY(a4, n4); 
    
    int var0 = AudioFileStreamGetPropertyInfo((AudioFileStreamID*) (((org_xmlvm_ios_AudioFileStreamID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileGetUserDataSize___org_xmlvm_ios_AudioFileID_int_int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a4, n4); 
    
    int var0 = AudioFileGetUserDataSize((AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,n3,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_CopyNameFromSoundBank___org_xmlvm_ios_CFURL_java_lang_String]
XMLVM_VAR_IOS_REF(CFURL, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    int var0 = CopyNameFromSoundBank(var1,ObjCVar2);
    
    [ObjCVar2 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioHardwareServiceRemovePropertyListener___org_xmlvm_ios_AudioObjectID_org_xmlvm_ios_AudioObjectPropertyAddress_org_xmlvm_ios_AudioObjectPropertyListenerProc_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a4, n4); 
    
    int var0 = AudioHardwareServiceRemovePropertyListener((AudioObjectID*) (((org_xmlvm_ios_AudioObjectID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(AudioObjectPropertyAddress*) (((org_xmlvm_ios_AudioObjectPropertyAddress*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),(AudioObjectPropertyListenerProc*) (((org_xmlvm_ios_AudioObjectPropertyListenerProc*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj),a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioHardwareServiceGetPropertyData___org_xmlvm_ios_AudioObjectID_org_xmlvm_ios_AudioObjectPropertyAddress_int_byte_1ARRAY_int_1ARRAY_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a4, n4); 
    XMLVM_VAR_INT_ARRAY(a5, n5); 
    XMLVM_VAR_BYTE_ARRAY(a6, n6); 
    
    int var0 = AudioHardwareServiceGetPropertyData((AudioObjectID*) (((org_xmlvm_ios_AudioObjectID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(AudioObjectPropertyAddress*) (((org_xmlvm_ios_AudioObjectPropertyAddress*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3,a4->fields.org_xmlvm_runtime_XMLVMArray.array_,a5->fields.org_xmlvm_runtime_XMLVMArray.array_,a6->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioServicesAddSystemSoundCompletion___int_org_xmlvm_ios_CFRunLoop_java_lang_String_java_lang_Object_byte_1ARRAY]
XMLVM_VAR_IOS_REF(CFRunLoop, var2, n2);
    NSString * ObjCVar3 = toNSString(n3);
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    
    int var0 = AudioServicesAddSystemSoundCompletion(n1,var2,ObjCVar3,((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    [ObjCVar3 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileStreamClose___org_xmlvm_ios_AudioFileStreamID]

    int var0 = AudioFileStreamClose((AudioFileStreamID*) (((org_xmlvm_ios_AudioFileStreamID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileGetGlobalInfo___int_int_byte_1ARRAY_int_1ARRAY_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    XMLVM_VAR_INT_ARRAY(a4, n4); 
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    
    int var0 = AudioFileGetGlobalInfo(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileOpen___org_xmlvm_ios_FS_byte_int_org_xmlvm_ios_AudioFileID]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileReadPacketData___org_xmlvm_ios_AudioFileID_byte_int_1ARRAY_org_xmlvm_ios_Reference_long_int_1ARRAY_byte_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    AudioStreamPacketDescription var4= toAudioStreamPacketDescription(jObject4);
    XMLVM_VAR_INT_ARRAY(a6, n6); 
    XMLVM_VAR_BYTE_ARRAY(a7, n7); 
    
    int var0 = AudioFileReadPacketData((AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,&var4,n5,a6->fields.org_xmlvm_runtime_XMLVMArray.array_,a7->fields.org_xmlvm_runtime_XMLVMArray.array_);
    org_xmlvm_ios_Reference_set___java_lang_Object(n4, fromAudioStreamPacketDescription(var4));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioHardwareServiceAddPropertyListener___org_xmlvm_ios_AudioObjectID_org_xmlvm_ios_AudioObjectPropertyAddress_org_xmlvm_ios_AudioObjectPropertyListenerProc_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a4, n4); 
    
    int var0 = AudioHardwareServiceAddPropertyListener((AudioObjectID*) (((org_xmlvm_ios_AudioObjectID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(AudioObjectPropertyAddress*) (((org_xmlvm_ios_AudioObjectPropertyAddress*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),(AudioObjectPropertyListenerProc*) (((org_xmlvm_ios_AudioObjectPropertyListenerProc*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj),a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioServicesRemoveSystemSoundCompletion___int]
AudioServicesRemoveSystemSoundCompletion(n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioHardwareServiceHasProperty___org_xmlvm_ios_AudioObjectID_org_xmlvm_ios_AudioObjectPropertyAddress]

    Byte var0 = AudioHardwareServiceHasProperty((AudioObjectID*) (((org_xmlvm_ios_AudioObjectID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(AudioObjectPropertyAddress*) (((org_xmlvm_ios_AudioObjectPropertyAddress*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioServicesGetProperty___int_int_byte_1ARRAY_int_1ARRAY_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    XMLVM_VAR_INT_ARRAY(a4, n4); 
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    
    int var0 = AudioServicesGetProperty(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileRemoveUserData___org_xmlvm_ios_AudioFileID_int_int]

    int var0 = AudioFileRemoveUserData((AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,n3);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioServicesPlayAlertSound___int]
AudioServicesPlayAlertSound(n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioSessionInitialize___org_xmlvm_ios_CFRunLoop_java_lang_String_java_lang_Object_byte_1ARRAY]
XMLVM_VAR_IOS_REF(CFRunLoop, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    XMLVM_VAR_BYTE_ARRAY(a4, n4); 
    
    int var0 = AudioSessionInitialize(var1,ObjCVar2,((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    [ObjCVar2 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioServicesGetPropertyInfo___int_int_byte_1ARRAY_int_1ARRAY_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    XMLVM_VAR_INT_ARRAY(a4, n4); 
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    
    int var0 = AudioServicesGetPropertyInfo(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileSetUserData___org_xmlvm_ios_AudioFileID_int_int_int_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    
    int var0 = AudioFileSetUserData((AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,n3,n4,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioSessionAddPropertyListener___int_java_lang_Object_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    
    int var0 = AudioSessionAddPropertyListener(n1,((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioSessionSetActive___byte]

    int var0 = AudioSessionSetActive(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioHardwareServiceIsPropertySettable___org_xmlvm_ios_AudioObjectID_org_xmlvm_ios_AudioObjectPropertyAddress_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    
    int var0 = AudioHardwareServiceIsPropertySettable((AudioObjectID*) (((org_xmlvm_ios_AudioObjectID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(AudioObjectPropertyAddress*) (((org_xmlvm_ios_AudioObjectPropertyAddress*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileGetProperty___org_xmlvm_ios_AudioFileID_int_int_1ARRAY_byte_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    XMLVM_VAR_BYTE_ARRAY(a4, n4); 
    
    int var0 = AudioFileGetProperty((AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileWritePackets___org_xmlvm_ios_AudioFileID_byte_int_org_xmlvm_ios_Reference_long_int_1ARRAY_byte_1ARRAY]
JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    AudioStreamPacketDescription var4= toAudioStreamPacketDescription(jObject4);
    XMLVM_VAR_INT_ARRAY(a6, n6); 
    XMLVM_VAR_BYTE_ARRAY(a7, n7); 
    
    int var0 = AudioFileWritePackets((AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,n3,&var4,n5,a6->fields.org_xmlvm_runtime_XMLVMArray.array_,a7->fields.org_xmlvm_runtime_XMLVMArray.array_);
    org_xmlvm_ios_Reference_set___java_lang_Object(n4, fromAudioStreamPacketDescription(var4));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_GetNameFromSoundBank___org_xmlvm_ios_FS_java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFormatGetProperty___int_int_byte_1ARRAY_int_1ARRAY_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    XMLVM_VAR_INT_ARRAY(a4, n4); 
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    
    int var0 = AudioFormatGetProperty(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioSessionRemovePropertyListener___int]

    int var0 = AudioSessionRemovePropertyListener(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileStreamOpen___byte_1ARRAY_java_lang_Object_java_lang_Object_int_org_xmlvm_ios_AudioFileStreamID]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    int var0 = AudioFileStreamOpen(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj,((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj,n4,(AudioFileStreamID*) (((org_xmlvm_ios_AudioFileStreamID*) n5)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileReadPackets___org_xmlvm_ios_AudioFileID_byte_int_1ARRAY_org_xmlvm_ios_Reference_long_int_1ARRAY_byte_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    AudioStreamPacketDescription var4= toAudioStreamPacketDescription(jObject4);
    XMLVM_VAR_INT_ARRAY(a6, n6); 
    XMLVM_VAR_BYTE_ARRAY(a7, n7); 
    
    int var0 = AudioFileReadPackets((AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,&var4,n5,a6->fields.org_xmlvm_runtime_XMLVMArray.array_,a7->fields.org_xmlvm_runtime_XMLVMArray.array_);
    org_xmlvm_ios_Reference_set___java_lang_Object(n4, fromAudioStreamPacketDescription(var4));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_CAShow___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    CAShow(a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileOptimize___org_xmlvm_ios_AudioFileID]

    int var0 = AudioFileOptimize((AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioSessionSetProperty___int_int_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    
    int var0 = AudioSessionSetProperty(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileClose___org_xmlvm_ios_AudioFileID]

    int var0 = AudioFileClose((AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioSessionGetProperty___int_int_1ARRAY_byte_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    
    int var0 = AudioSessionGetProperty(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioServicesPlaySystemSound___int]
AudioServicesPlaySystemSound(n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioSessionRemovePropertyListenerWithUserData___int_java_lang_Object_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    
    int var0 = AudioSessionRemovePropertyListenerWithUserData(n1,((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioHardwareServiceGetPropertyDataSize___org_xmlvm_ios_AudioObjectID_org_xmlvm_ios_AudioObjectPropertyAddress_int_byte_1ARRAY_int_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a4, n4); 
    XMLVM_VAR_INT_ARRAY(a5, n5); 
    
    int var0 = AudioHardwareServiceGetPropertyDataSize((AudioObjectID*) (((org_xmlvm_ios_AudioObjectID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(AudioObjectPropertyAddress*) (((org_xmlvm_ios_AudioObjectPropertyAddress*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3,a4->fields.org_xmlvm_runtime_XMLVMArray.array_,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileGetPropertyInfo___org_xmlvm_ios_AudioFileID_int_int_1ARRAY_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    XMLVM_VAR_INT_ARRAY(a4, n4); 
    
    int var0 = AudioFileGetPropertyInfo((AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileStreamSetProperty___org_xmlvm_ios_AudioFileStreamID_int_int_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a4, n4); 
    
    int var0 = AudioFileStreamSetProperty((AudioFileStreamID*) (((org_xmlvm_ios_AudioFileStreamID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,n3,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioHardwareServiceSetPropertyData___org_xmlvm_ios_AudioObjectID_org_xmlvm_ios_AudioObjectPropertyAddress_int_byte_1ARRAY_int_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a4, n4); 
    XMLVM_VAR_BYTE_ARRAY(a6, n6); 
    
    int var0 = AudioHardwareServiceSetPropertyData((AudioObjectID*) (((org_xmlvm_ios_AudioObjectID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(AudioObjectPropertyAddress*) (((org_xmlvm_ios_AudioObjectPropertyAddress*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3,a4->fields.org_xmlvm_runtime_XMLVMArray.array_,n5,a6->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileSetProperty___org_xmlvm_ios_AudioFileID_int_int_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a4, n4); 
    
    int var0 = AudioFileSetProperty((AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,n3,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileCountUserData___org_xmlvm_ios_AudioFileID_int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    
    int var0 = AudioFileCountUserData((AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioServicesSetProperty___int_int_byte_1ARRAY_int_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    
    int var0 = AudioServicesSetProperty(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,n4,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileReadBytes___org_xmlvm_ios_AudioFileID_byte_long_int_1ARRAY_byte_1ARRAY]
XMLVM_VAR_INT_ARRAY(a4, n4); 
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    
    int var0 = AudioFileReadBytes((AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,n3,a4->fields.org_xmlvm_runtime_XMLVMArray.array_,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileInitializeWithCallbacks___byte_1ARRAY_java_lang_Object_java_lang_Object_java_lang_Object_java_lang_Object_int_org_xmlvm_ios_Reference_int_org_xmlvm_ios_AudioFileID]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    JAVA_OBJECT jObject7 = org_xmlvm_ios_Reference_get__(n7);
    AudioStreamBasicDescription var7= toAudioStreamBasicDescription(jObject7);
    
    int var0 = AudioFileInitializeWithCallbacks(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj,((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj,((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj,((org_xmlvm_ios_NSObject*) n5)->fields.org_xmlvm_ios_NSObject.wrappedObj,n6,&var7,n8,(AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n9)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    org_xmlvm_ios_Reference_set___java_lang_Object(n7, fromAudioStreamBasicDescription(var7));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileCreateWithURL___org_xmlvm_ios_CFURL_int_org_xmlvm_ios_Reference_int_org_xmlvm_ios_AudioFileID]
XMLVM_VAR_IOS_REF(CFURL, var1, n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    AudioStreamBasicDescription var3= toAudioStreamBasicDescription(jObject3);
    
    int var0 = AudioFileCreateWithURL(var1,n2,&var3,n4,(AudioFileID*) (((org_xmlvm_ios_AudioFileID*) n5)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, fromAudioStreamBasicDescription(var3));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileStreamGetProperty___org_xmlvm_ios_AudioFileStreamID_int_int_1ARRAY_byte_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    XMLVM_VAR_BYTE_ARRAY(a4, n4); 
    
    int var0 = AudioFileStreamGetProperty((AudioFileStreamID*) (((org_xmlvm_ios_AudioFileStreamID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_DisposeAUGraph___org_xmlvm_ios_AUGraph]

    int var0 = DisposeAUGraph((AUGraph*) (((org_xmlvm_ios_AUGraph*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioToolbox_AudioFileCreate___org_xmlvm_ios_FS_java_lang_String_int_org_xmlvm_ios_Reference_int_org_xmlvm_ios_FS_org_xmlvm_ios_AudioFileID]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
