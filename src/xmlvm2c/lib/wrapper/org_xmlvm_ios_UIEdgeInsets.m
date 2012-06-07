
//XMLVM_BEGIN_IMPLEMENTATION
UIEdgeInsets toUIEdgeInsets(void *obj)
{
    org_xmlvm_ios_UIEdgeInsets* objCObj = obj;
    UIEdgeInsets toRet;
    toRet.right = objCObj->fields.org_xmlvm_ios_UIEdgeInsets.right_;
    toRet.bottom = objCObj->fields.org_xmlvm_ios_UIEdgeInsets.bottom_;
    toRet.left = objCObj->fields.org_xmlvm_ios_UIEdgeInsets.left_;
    toRet.top = objCObj->fields.org_xmlvm_ios_UIEdgeInsets.top_;
    return toRet;
}
JAVA_OBJECT fromUIEdgeInsets(UIEdgeInsets obj)
{
    org_xmlvm_ios_UIEdgeInsets* jObj = __NEW_org_xmlvm_ios_UIEdgeInsets();
    org_xmlvm_ios_UIEdgeInsets___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_UIEdgeInsets.right_ = obj.right;
    jObj->fields.org_xmlvm_ios_UIEdgeInsets.bottom_ = obj.bottom;
    jObj->fields.org_xmlvm_ios_UIEdgeInsets.left_ = obj.left;
    jObj->fields.org_xmlvm_ios_UIEdgeInsets.top_ = obj.top;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_UIEdgeInsets]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIEdgeInsets___INIT____float_float_float_float]

    UIEdgeInsets var0 = UIEdgeInsetsMake(n1,n2,n3,n4);
    org_xmlvm_ios_UIEdgeInsets* jObj = me;
    jObj->fields.org_xmlvm_ios_UIEdgeInsets.right_ = var0.right;
    jObj->fields.org_xmlvm_ios_UIEdgeInsets.bottom_ = var0.bottom;
    jObj->fields.org_xmlvm_ios_UIEdgeInsets.left_ = var0.left;
    jObj->fields.org_xmlvm_ios_UIEdgeInsets.top_ = var0.top;
null//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIEdgeInsets___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIEdgeInsets_insetRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_UIEdgeInsets]

    CGRect var0 = UIEdgeInsetsInsetRect(toCGRect(n1),toUIEdgeInsets(n2));
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIEdgeInsets_equalToEdgeInsets___org_xmlvm_ios_UIEdgeInsets]

    BOOL var0 = UIEdgeInsetsEqualToEdgeInsets(toUIEdgeInsets(me),toUIEdgeInsets(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIEdgeInsets_fromString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    UIEdgeInsets var0 = UIEdgeInsetsFromString(ObjCVar1);
    
    [ObjCVar1 release];

    return fromUIEdgeInsets(var0);
//XMLVM_END_WRAPPER
