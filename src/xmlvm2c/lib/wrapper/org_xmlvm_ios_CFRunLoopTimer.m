
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CFRunLoopTimer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFRunLoopTimer]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopTimer___INIT____org_xmlvm_ios_CFAllocator_double_double_long_long_java_lang_Object_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject7 = org_xmlvm_ios_Reference_get__(n7);
    CFRunLoopTimerContext var7= toCFRunLoopTimerContext(jObject7);
    
    CFRunLoopTimerRef var0 = CFRunLoopTimerCreate(var1,n2,n3,n4,n5,((org_xmlvm_ios_NSObject*) n6)->fields.org_xmlvm_ios_NSObject.wrappedObj,&var7);
        org_xmlvm_ios_CFRunLoopTimer_INTERNAL_CONSTRUCTOR(me, var0);
org_xmlvm_ios_Reference_set___java_lang_Object(n7, fromCFRunLoopTimerContext(var7));
    //XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopTimer___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopTimer_getTypeID__]

    long var0 = CFRunLoopTimerGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopTimer_getNextFireDate__]

    XMLVM_VAR_CFTHIZ;
    
    double var0 = CFRunLoopTimerGetNextFireDate(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopTimer_setNextFireDate___double]

    XMLVM_VAR_CFTHIZ;
    CFRunLoopTimerSetNextFireDate(thiz,n1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopTimer_getInterval__]

    XMLVM_VAR_CFTHIZ;
    
    double var0 = CFRunLoopTimerGetInterval(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopTimer_doesRepeat__]

    XMLVM_VAR_CFTHIZ;
    
    Byte var0 = CFRunLoopTimerDoesRepeat(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopTimer_getOrder__]

    XMLVM_VAR_CFTHIZ;
    
    long var0 = CFRunLoopTimerGetOrder(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopTimer_invalidate__]

    XMLVM_VAR_CFTHIZ;
    CFRunLoopTimerInvalidate(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopTimer_isValid__]

    XMLVM_VAR_CFTHIZ;
    
    Byte var0 = CFRunLoopTimerIsValid(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopTimer_getContext___org_xmlvm_ios_Reference]

    XMLVM_VAR_CFTHIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CFRunLoopTimerContext var1= toCFRunLoopTimerContext(jObject1);
    CFRunLoopTimerGetContext(thiz,&var1);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCFRunLoopTimerContext(var1));
    
    
//XMLVM_END_WRAPPER
