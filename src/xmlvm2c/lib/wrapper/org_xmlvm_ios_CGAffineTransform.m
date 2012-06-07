
//XMLVM_BEGIN_IMPLEMENTATION
CGAffineTransform toCGAffineTransform(void *obj)
{
    org_xmlvm_ios_CGAffineTransform* objCObj = obj;
    CGAffineTransform toRet;
    toRet.d = objCObj->fields.org_xmlvm_ios_CGAffineTransform.d_;
    toRet.c = objCObj->fields.org_xmlvm_ios_CGAffineTransform.c_;
    toRet.b = objCObj->fields.org_xmlvm_ios_CGAffineTransform.b_;
    toRet.a = objCObj->fields.org_xmlvm_ios_CGAffineTransform.a_;
    toRet.ty = objCObj->fields.org_xmlvm_ios_CGAffineTransform.ty_;
    toRet.tx = objCObj->fields.org_xmlvm_ios_CGAffineTransform.tx_;
    return toRet;
}
JAVA_OBJECT fromCGAffineTransform(CGAffineTransform obj)
{
    org_xmlvm_ios_CGAffineTransform* jObj = __NEW_org_xmlvm_ios_CGAffineTransform();
    org_xmlvm_ios_CGAffineTransform___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CGAffineTransform.d_ = obj.d;
    jObj->fields.org_xmlvm_ios_CGAffineTransform.c_ = obj.c;
    jObj->fields.org_xmlvm_ios_CGAffineTransform.b_ = obj.b;
    jObj->fields.org_xmlvm_ios_CGAffineTransform.a_ = obj.a;
    jObj->fields.org_xmlvm_ios_CGAffineTransform.ty_ = obj.ty;
    jObj->fields.org_xmlvm_ios_CGAffineTransform.tx_ = obj.tx;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CGAffineTransform]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGAffineTransform___INIT____float_float_float_float_float_float]

    CGAffineTransform var0 = CGAffineTransformMake(n1,n2,n3,n4,n5,n6);
    org_xmlvm_ios_CGAffineTransform* jObj = me;
    jObj->fields.org_xmlvm_ios_CGAffineTransform.d_ = var0.d;
    jObj->fields.org_xmlvm_ios_CGAffineTransform.c_ = var0.c;
    jObj->fields.org_xmlvm_ios_CGAffineTransform.b_ = var0.b;
    jObj->fields.org_xmlvm_ios_CGAffineTransform.a_ = var0.a;
    jObj->fields.org_xmlvm_ios_CGAffineTransform.ty_ = var0.ty;
    jObj->fields.org_xmlvm_ios_CGAffineTransform.tx_ = var0.tx;
null//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGAffineTransform___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGAffineTransform_makeTranslation___float_float]

    CGAffineTransform var0 = CGAffineTransformMakeTranslation(n1,n2);
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGAffineTransform_makeScale___float_float]

    CGAffineTransform var0 = CGAffineTransformMakeScale(n1,n2);
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGAffineTransform_makeRotation___float]

    CGAffineTransform var0 = CGAffineTransformMakeRotation(n1);
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGAffineTransform_isIdentity__]

    BOOL var0 = CGAffineTransformIsIdentity(toCGAffineTransform(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGAffineTransform_translate___float_float]

    CGAffineTransform var0 = CGAffineTransformTranslate(toCGAffineTransform(me),n1,n2);
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGAffineTransform_scale___float_float]

    CGAffineTransform var0 = CGAffineTransformScale(toCGAffineTransform(me),n1,n2);
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGAffineTransform_rotate___float]

    CGAffineTransform var0 = CGAffineTransformRotate(toCGAffineTransform(me),n1);
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGAffineTransform_invert__]

    CGAffineTransform var0 = CGAffineTransformInvert(toCGAffineTransform(me));
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGAffineTransform_concat___org_xmlvm_ios_CGAffineTransform]

    CGAffineTransform var0 = CGAffineTransformConcat(toCGAffineTransform(me),toCGAffineTransform(n1));
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGAffineTransform_equalToTransform___org_xmlvm_ios_CGAffineTransform]

    BOOL var0 = CGAffineTransformEqualToTransform(toCGAffineTransform(me),toCGAffineTransform(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGAffineTransform_fromString___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    CGAffineTransform var0 = CGAffineTransformFromString(ObjCVar1);
    
    [ObjCVar1 release];

    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER
