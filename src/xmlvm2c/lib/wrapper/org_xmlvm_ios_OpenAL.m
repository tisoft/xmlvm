
//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSourceiv___int_int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    AlSourceiv(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSourceUnqueueBuffers___int_int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    AlSourceUnqueueBuffers(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSourceRewind___int]
AlSourceRewind(n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetBooleanv___int_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    AlGetBooleanv(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetSourcef___int_int_float_1ARRAY]
XMLVM_VAR_FLOAT_ARRAY(a3, n3); 
    AlGetSourcef(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcGetContextsDevice___org_xmlvm_ios_ALCcontext_struct]

    ALCdevice_struct* var0 = AlcGetContextsDevice((ALCcontext_struct*) (((org_xmlvm_ios_ALCcontext_struct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcCaptureSamples___org_xmlvm_ios_ALCdevice_struct_byte_1ARRAY_int]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    AlcCaptureSamples((ALCdevice_struct*) (((org_xmlvm_ios_ALCdevice_struct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetSourcei___int_int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    AlGetSourcei(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlDopplerFactor___float]
AlDopplerFactor(n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetIntegerv___int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    AlGetIntegerv(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcCreateContext___org_xmlvm_ios_ALCdevice_struct_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    
    ALCcontext_struct* var0 = AlcCreateContext((ALCdevice_struct*) (((org_xmlvm_ios_ALCdevice_struct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSourcePause___int]
AlSourcePause(n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSourcefv___int_int_float_1ARRAY]
XMLVM_VAR_FLOAT_ARRAY(a3, n3); 
    AlSourcefv(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcMakeContextCurrent___org_xmlvm_ios_ALCcontext_struct]

    Byte var0 = AlcMakeContextCurrent((ALCcontext_struct*) (((org_xmlvm_ios_ALCcontext_struct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlDopplerVelocity___float]
AlDopplerVelocity(n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSourceQueueBuffers___int_int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    AlSourceQueueBuffers(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcCaptureStop___org_xmlvm_ios_ALCdevice_struct]
AlcCaptureStop((ALCdevice_struct*) (((org_xmlvm_ios_ALCdevice_struct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcGetString___org_xmlvm_ios_ALCdevice_struct_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSourcePlayv___int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    AlSourcePlayv(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetString___int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcIsExtensionPresent___org_xmlvm_ios_ALCdevice_struct_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    Byte var0 = AlcIsExtensionPresent((ALCdevice_struct*) (((org_xmlvm_ios_ALCdevice_struct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetBuffer3i___int_int_int_1ARRAY_int_1ARRAY_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    XMLVM_VAR_INT_ARRAY(a4, n4); 
    XMLVM_VAR_INT_ARRAY(a5, n5); 
    AlGetBuffer3i(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcCaptureStart___org_xmlvm_ios_ALCdevice_struct]
AlcCaptureStart((ALCdevice_struct*) (((org_xmlvm_ios_ALCdevice_struct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetBuffer3f___int_int_float_1ARRAY_float_1ARRAY_float_1ARRAY]
XMLVM_VAR_FLOAT_ARRAY(a3, n3); 
    XMLVM_VAR_FLOAT_ARRAY(a4, n4); 
    XMLVM_VAR_FLOAT_ARRAY(a5, n5); 
    AlGetBuffer3f(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetBufferfv___int_int_float_1ARRAY]
XMLVM_VAR_FLOAT_ARRAY(a3, n3); 
    AlGetBufferfv(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSpeedOfSound___float]
AlSpeedOfSound(n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlListeneriv___int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    AlListeneriv(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSourcei___int_int_int]
AlSourcei(n1,n2,n3);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSourcef___int_int_float]
AlSourcef(n1,n2,n3);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcDestroyContext___org_xmlvm_ios_ALCcontext_struct]
AlcDestroyContext((ALCcontext_struct*) (((org_xmlvm_ios_ALCcontext_struct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetSourceiv___int_int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    AlGetSourceiv(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcCaptureCloseDevice___org_xmlvm_ios_ALCdevice_struct]

    Byte var0 = AlcCaptureCloseDevice((ALCdevice_struct*) (((org_xmlvm_ios_ALCdevice_struct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcSuspendContext___org_xmlvm_ios_ALCcontext_struct]
AlcSuspendContext((ALCcontext_struct*) (((org_xmlvm_ios_ALCcontext_struct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlBufferiv___int_int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    AlBufferiv(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetInteger___int]

    int var0 = AlGetInteger(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSourceStopv___int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    AlSourceStopv(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetDouble___int]

    double var0 = AlGetDouble(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSourceRewindv___int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    AlSourceRewindv(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlBuffer3f___int_int_float_float_float]
AlBuffer3f(n1,n2,n3,n4,n5);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetBufferiv___int_int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    AlGetBufferiv(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlListenerfv___int_float_1ARRAY]
XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    AlListenerfv(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcGetEnumValue___org_xmlvm_ios_ALCdevice_struct_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    int var0 = AlcGetEnumValue((ALCdevice_struct*) (((org_xmlvm_ios_ALCdevice_struct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGenBuffers___int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    AlGenBuffers(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSourceStop___int]
AlSourceStop(n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlIsSource___int]

    Byte var0 = AlIsSource(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetSourcefv___int_int_float_1ARRAY]
XMLVM_VAR_FLOAT_ARRAY(a3, n3); 
    AlGetSourcefv(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlBuffer3i___int_int_int_int_int]
AlBuffer3i(n1,n2,n3,n4,n5);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetListeneriv___int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    AlGetListeneriv(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcGetCurrentContext__]

    ALCcontext_struct* var0 = AlcGetCurrentContext();
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlBufferData___int_int_byte_1ARRAY_int_int]
XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    AlBufferData(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,n4,n5);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlBufferfv___int_int_float_1ARRAY]
XMLVM_VAR_FLOAT_ARRAY(a3, n3); 
    AlBufferfv(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSourcePausev___int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    AlSourcePausev(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetBoolean___int]

    Byte var0 = AlGetBoolean(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetFloat___int]

    float var0 = AlGetFloat(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlBufferf___int_int_float]
AlBufferf(n1,n2,n3);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlListener3f___int_float_float_float]
AlListener3f(n1,n2,n3,n4);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlListener3i___int_int_int_int]
AlListener3i(n1,n2,n3,n4);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlBufferi___int_int_int]
AlBufferi(n1,n2,n3);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcOpenDevice___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    ALCdevice_struct* var0 = AlcOpenDevice(a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetListenerfv___int_float_1ARRAY]
XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    AlGetListenerfv(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGenSources___int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    AlGenSources(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlDistanceModel___int]
AlDistanceModel(n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSource3i___int_int_int_int_int]
AlSource3i(n1,n2,n3,n4,n5);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSource3f___int_int_float_float_float]
AlSource3f(n1,n2,n3,n4,n5);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlDisable___int]
AlDisable(n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlDeleteSources___int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    AlDeleteSources(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlEnable___int]
AlEnable(n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcGetError___org_xmlvm_ios_ALCdevice_struct]

    int var0 = AlcGetError((ALCdevice_struct*) (((org_xmlvm_ios_ALCdevice_struct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcCloseDevice___org_xmlvm_ios_ALCdevice_struct]

    Byte var0 = AlcCloseDevice((ALCdevice_struct*) (((org_xmlvm_ios_ALCdevice_struct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlIsBuffer___int]

    Byte var0 = AlIsBuffer(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcGetProcAddress___org_xmlvm_ios_ALCdevice_struct_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcProcessContext___org_xmlvm_ios_ALCcontext_struct]
AlcProcessContext((ALCcontext_struct*) (((org_xmlvm_ios_ALCcontext_struct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcGetIntegerv___org_xmlvm_ios_ALCdevice_struct_int_int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a4, n4); 
    AlcGetIntegerv((ALCdevice_struct*) (((org_xmlvm_ios_ALCdevice_struct*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,n3,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetSource3i___int_int_int_1ARRAY_int_1ARRAY_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    XMLVM_VAR_INT_ARRAY(a4, n4); 
    XMLVM_VAR_INT_ARRAY(a5, n5); 
    AlGetSource3i(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetSource3f___int_int_float_1ARRAY_float_1ARRAY_float_1ARRAY]
XMLVM_VAR_FLOAT_ARRAY(a3, n3); 
    XMLVM_VAR_FLOAT_ARRAY(a4, n4); 
    XMLVM_VAR_FLOAT_ARRAY(a5, n5); 
    AlGetSource3f(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_,a5->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlListeneri___int_int]
AlListeneri(n1,n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetEnumValue___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    int var0 = AlGetEnumValue(a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetBufferi___int_int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a3, n3); 
    AlGetBufferi(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetFloatv___int_float_1ARRAY]
XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    AlGetFloatv(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetProcAddress___byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlListenerf___int_float]
AlListenerf(n1,n2);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetBufferf___int_int_float_1ARRAY]
XMLVM_VAR_FLOAT_ARRAY(a3, n3); 
    AlGetBufferf(n1,n2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetDoublev___int_double_1ARRAY]
XMLVM_VAR_DOUBLE_ARRAY(a2, n2); 
    AlGetDoublev(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlDeleteBuffers___int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    AlDeleteBuffers(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetListenerf___int_float_1ARRAY]
XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    AlGetListenerf(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetListeneri___int_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    AlGetListeneri(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlSourcePlay___int]
AlSourcePlay(n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetListener3f___int_float_1ARRAY_float_1ARRAY_float_1ARRAY]
XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    XMLVM_VAR_FLOAT_ARRAY(a3, n3); 
    XMLVM_VAR_FLOAT_ARRAY(a4, n4); 
    AlGetListener3f(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetListener3i___int_int_1ARRAY_int_1ARRAY_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    XMLVM_VAR_INT_ARRAY(a3, n3); 
    XMLVM_VAR_INT_ARRAY(a4, n4); 
    AlGetListener3i(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlIsExtensionPresent___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    Byte var0 = AlIsExtensionPresent(a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlcCaptureOpenDevice___byte_1ARRAY_int_int_int]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    ALCdevice_struct* var0 = AlcCaptureOpenDevice(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,n2,n3,n4);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlGetError__]

    int var0 = AlGetError();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_OpenAL_AlIsEnabled___int]

    Byte var0 = AlIsEnabled(n1);
    
    return var0;
//XMLVM_END_WRAPPER
