
//XMLVM_BEGIN_IMPLEMENTATION
@interface AudioQueue (AudioQueueWrapperCategory)
+ (void) initialize_class;
@end

@implementation AudioQueue (AudioQueueWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_AudioQueue.classInitialized)
        __INIT_org_xmlvm_ios_AudioQueue();
}
@end

void org_xmlvm_ios_AudioQueue_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [AudioQueue class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_AudioQueue();
        org_xmlvm_ios_AudioQueue_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_AudioQueue]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_AudioQueue]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue___INIT___]
    AudioQueue* var0 = [[AudioQueue alloc ] init];
    org_xmlvm_ios_AudioQueue_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_newOutput___org_xmlvm_ios_Reference_java_lang_Object_byte_1ARRAY_org_xmlvm_ios_CFRunLoop_java_lang_String_int_org_xmlvm_ios_AudioQueue]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    AudioStreamBasicDescription var1= toAudioStreamBasicDescription(jObject1);
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    XMLVM_VAR_IOS_REF(CFRunLoop, var4, n4);
    NSString * ObjCVar5 = toNSString(n5);
    
    int var0 = AudioQueueNewOutput(&var1,((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,var4,ObjCVar5,n6,(AudioQueue*) (((org_xmlvm_ios_AudioQueue*) n7)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromAudioStreamBasicDescription(var1));
    
    [ObjCVar5 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_newInput___org_xmlvm_ios_Reference_java_lang_Object_byte_1ARRAY_org_xmlvm_ios_CFRunLoop_java_lang_String_int_org_xmlvm_ios_AudioQueue]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    AudioStreamBasicDescription var1= toAudioStreamBasicDescription(jObject1);
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    XMLVM_VAR_IOS_REF(CFRunLoop, var4, n4);
    NSString * ObjCVar5 = toNSString(n5);
    
    int var0 = AudioQueueNewInput(&var1,((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,var4,ObjCVar5,n6,(AudioQueue*) (((org_xmlvm_ios_AudioQueue*) n7)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromAudioStreamBasicDescription(var1));
    
    [ObjCVar5 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_newOutputWithDispatchQueue___org_xmlvm_ios_Reference_int_java_lang_Object_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_newInputWithDispatchQueue___org_xmlvm_ios_Reference_int_java_lang_Object_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_dispose___byte]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_allocateBuffer___int_org_xmlvm_ios_Reference<AudioQueueBuffer>[]]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_allocateBufferWithPacketDescriptions___int_int_org_xmlvm_ios_Reference<AudioQueueBuffer>[]]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_freeBuffer___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_enqueueBuffer___org_xmlvm_ios_Reference_int_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_enqueueBufferWithParameters___org_xmlvm_ios_Reference_int_org_xmlvm_ios_Reference_int_int_int_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_start___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_prime___int_int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_stop___byte]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_pause__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_flush__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_reset__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_getParameter___int_float_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_setParameter___int_float]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_getProperty___int_byte_1ARRAY_int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_setProperty___int_byte_1ARRAY_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_getPropertySize___int_int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_addPropertyListener___int_java_lang_Object_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_removePropertyListener___int_java_lang_Object_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_createTimeline___org_xmlvm_ios_AudioQueueTimeline]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_disposeTimeline___org_xmlvm_ios_AudioQueueTimeline]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_getCurrentTime___org_xmlvm_ios_AudioQueueTimeline_org_xmlvm_ios_Reference_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_deviceGetCurrentTime___org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_deviceTranslateTime___org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_deviceGetNearestStartTime___org_xmlvm_ios_Reference_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_setOfflineRenderFormat___org_xmlvm_ios_Reference_org_xmlvm_ios_Reference]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AudioQueue_offlineRender___org_xmlvm_ios_Reference_org_xmlvm_ios_Reference_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
