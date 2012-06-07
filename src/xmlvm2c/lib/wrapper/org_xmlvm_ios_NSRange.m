
//XMLVM_BEGIN_IMPLEMENTATION
NSRange toNSRange(void *obj)
{
    org_xmlvm_ios_NSRange* objCObj = obj;
    NSRange toRet;
    toRet.location = objCObj->fields.org_xmlvm_ios_NSRange.location_;
    toRet.length = objCObj->fields.org_xmlvm_ios_NSRange.length_;
    return toRet;
}
JAVA_OBJECT fromNSRange(NSRange obj)
{
    org_xmlvm_ios_NSRange* jObj = __NEW_org_xmlvm_ios_NSRange();
    org_xmlvm_ios_NSRange___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_NSRange.location_ = obj.location;
    jObj->fields.org_xmlvm_ios_NSRange.length_ = obj.length;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_NSRange]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRange___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRange_fromString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSRange var0 = NSRangeFromString(ObjCVar1);
    
    [ObjCVar1 release];

    return fromNSRange(var0);
//XMLVM_END_WRAPPER
