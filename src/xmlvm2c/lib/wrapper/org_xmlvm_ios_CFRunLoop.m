
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CFRunLoop_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFRunLoop]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_getTypeID__]

    long var0 = CFRunLoopGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_getCurrent__]

    CFRunLoopRef var0 = CFRunLoopGetCurrent();
        XMLVM_VAR_INIT_REF(CFRunLoop, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_getMain__]

    CFRunLoopRef var0 = CFRunLoopGetMain();
        XMLVM_VAR_INIT_REF(CFRunLoop, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_copyCurrentMode__]

    XMLVM_VAR_CFTHIZ;
    
    NSString* var0 = CFRunLoopCopyCurrentMode(thiz);
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_copyAllModes__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_addCommonMode___java_lang_String]

    XMLVM_VAR_CFTHIZ;
    NSString * ObjCVar1 = toNSString(n1);
    CFRunLoopAddCommonMode(thiz,ObjCVar1);
    
    [ObjCVar1 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_getNextTimerFireDate___java_lang_String]

    XMLVM_VAR_CFTHIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    double var0 = CFRunLoopGetNextTimerFireDate(thiz,ObjCVar1);
    
    [ObjCVar1 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_run__]
CFRunLoopRun();
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_runInMode___java_lang_String_double_byte]
NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = CFRunLoopRunInMode(ObjCVar1,n2,n3);
    
    [ObjCVar1 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_isWaiting__]

    XMLVM_VAR_CFTHIZ;
    
    Byte var0 = CFRunLoopIsWaiting(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_wakeUp__]

    XMLVM_VAR_CFTHIZ;
    CFRunLoopWakeUp(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_stop__]

    XMLVM_VAR_CFTHIZ;
    CFRunLoopStop(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_containsSource___org_xmlvm_ios_CFRunLoopSource_java_lang_String]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CFRunLoopSource, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    Byte var0 = CFRunLoopContainsSource(thiz,var1,ObjCVar2);
    
    [ObjCVar2 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_addSource___org_xmlvm_ios_CFRunLoopSource_java_lang_String]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CFRunLoopSource, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    CFRunLoopAddSource(thiz,var1,ObjCVar2);
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_removeSource___org_xmlvm_ios_CFRunLoopSource_java_lang_String]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CFRunLoopSource, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    CFRunLoopRemoveSource(thiz,var1,ObjCVar2);
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_containsObserver___org_xmlvm_ios_CFRunLoopObserver_java_lang_String]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CFRunLoopObserver, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    Byte var0 = CFRunLoopContainsObserver(thiz,var1,ObjCVar2);
    
    [ObjCVar2 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_addObserver___org_xmlvm_ios_CFRunLoopObserver_java_lang_String]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CFRunLoopObserver, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    CFRunLoopAddObserver(thiz,var1,ObjCVar2);
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_removeObserver___org_xmlvm_ios_CFRunLoopObserver_java_lang_String]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CFRunLoopObserver, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    CFRunLoopRemoveObserver(thiz,var1,ObjCVar2);
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_containsTimer___org_xmlvm_ios_CFRunLoopTimer_java_lang_String]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CFRunLoopTimer, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    
    Byte var0 = CFRunLoopContainsTimer(thiz,var1,ObjCVar2);
    
    [ObjCVar2 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_addTimer___org_xmlvm_ios_CFRunLoopTimer_java_lang_String]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CFRunLoopTimer, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    CFRunLoopAddTimer(thiz,var1,ObjCVar2);
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoop_removeTimer___org_xmlvm_ios_CFRunLoopTimer_java_lang_String]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CFRunLoopTimer, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    CFRunLoopRemoveTimer(thiz,var1,ObjCVar2);
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER
