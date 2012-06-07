
//XMLVM_BEGIN_IMPLEMENTATION
CGDataConsumerCallbacks toCGDataConsumerCallbacks(void *obj)
{
    org_xmlvm_ios_CGDataConsumerCallbacks* objCObj = obj;
    CGDataConsumerCallbacks toRet;
    toRet.putBytes = objCObj->fields.org_xmlvm_ios_CGDataConsumerCallbacks.putBytes_;
    toRet.releaseConsumer = objCObj->fields.org_xmlvm_ios_CGDataConsumerCallbacks.releaseConsumer_;
    return toRet;
}
JAVA_OBJECT fromCGDataConsumerCallbacks(CGDataConsumerCallbacks obj)
{
    org_xmlvm_ios_CGDataConsumerCallbacks* jObj = __NEW_org_xmlvm_ios_CGDataConsumerCallbacks();
    org_xmlvm_ios_CGDataConsumerCallbacks___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CGDataConsumerCallbacks.putBytes_ = obj.putBytes;
    jObj->fields.org_xmlvm_ios_CGDataConsumerCallbacks.releaseConsumer_ = obj.releaseConsumer;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGDataConsumerCallbacks]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataConsumerCallbacks___INIT___]
//XMLVM_END_WRAPPER
