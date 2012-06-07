
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CFRunLoopSource_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFRunLoopSource]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopSource___INIT____org_xmlvm_ios_CFAllocator_long_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CFRunLoopSourceContext var3= toCFRunLoopSourceContext(jObject3);
    
    CFRunLoopSourceRef var0 = CFRunLoopSourceCreate(var1,n2,&var3);
        org_xmlvm_ios_CFRunLoopSource_INTERNAL_CONSTRUCTOR(me, var0);
org_xmlvm_ios_Reference_set___java_lang_Object(n3, fromCFRunLoopSourceContext(var3));
    //XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopSource___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopSource_getTypeID__]

    long var0 = CFRunLoopSourceGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopSource_getOrder__]

    XMLVM_VAR_CFTHIZ;
    
    long var0 = CFRunLoopSourceGetOrder(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopSource_invalidate__]

    XMLVM_VAR_CFTHIZ;
    CFRunLoopSourceInvalidate(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopSource_isValid__]

    XMLVM_VAR_CFTHIZ;
    
    Byte var0 = CFRunLoopSourceIsValid(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopSource_getContext___org_xmlvm_ios_Reference]

    XMLVM_VAR_CFTHIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CFRunLoopSourceContext var1= toCFRunLoopSourceContext(jObject1);
    CFRunLoopSourceGetContext(thiz,&var1);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCFRunLoopSourceContext(var1));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFRunLoopSource_signal__]

    XMLVM_VAR_CFTHIZ;
    CFRunLoopSourceSignal(thiz);
    
    
//XMLVM_END_WRAPPER
