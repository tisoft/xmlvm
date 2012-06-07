
//XMLVM_BEGIN_IMPLEMENTATION
CATransform3D toCATransform3D(void *obj)
{
    org_xmlvm_ios_CATransform3D* objCObj = obj;
    CATransform3D toRet;
    toRet.m14 = objCObj->fields.org_xmlvm_ios_CATransform3D.m14_;
    toRet.m13 = objCObj->fields.org_xmlvm_ios_CATransform3D.m13_;
    toRet.m12 = objCObj->fields.org_xmlvm_ios_CATransform3D.m12_;
    toRet.m11 = objCObj->fields.org_xmlvm_ios_CATransform3D.m11_;
    toRet.m24 = objCObj->fields.org_xmlvm_ios_CATransform3D.m24_;
    toRet.m23 = objCObj->fields.org_xmlvm_ios_CATransform3D.m23_;
    toRet.m22 = objCObj->fields.org_xmlvm_ios_CATransform3D.m22_;
    toRet.m21 = objCObj->fields.org_xmlvm_ios_CATransform3D.m21_;
    toRet.m34 = objCObj->fields.org_xmlvm_ios_CATransform3D.m34_;
    toRet.m33 = objCObj->fields.org_xmlvm_ios_CATransform3D.m33_;
    toRet.m32 = objCObj->fields.org_xmlvm_ios_CATransform3D.m32_;
    toRet.m31 = objCObj->fields.org_xmlvm_ios_CATransform3D.m31_;
    toRet.m44 = objCObj->fields.org_xmlvm_ios_CATransform3D.m44_;
    toRet.m43 = objCObj->fields.org_xmlvm_ios_CATransform3D.m43_;
    toRet.m42 = objCObj->fields.org_xmlvm_ios_CATransform3D.m42_;
    toRet.m41 = objCObj->fields.org_xmlvm_ios_CATransform3D.m41_;
    return toRet;
}
JAVA_OBJECT fromCATransform3D(CATransform3D obj)
{
    org_xmlvm_ios_CATransform3D* jObj = __NEW_org_xmlvm_ios_CATransform3D();
    org_xmlvm_ios_CATransform3D___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CATransform3D.m14_ = obj.m14;
    jObj->fields.org_xmlvm_ios_CATransform3D.m13_ = obj.m13;
    jObj->fields.org_xmlvm_ios_CATransform3D.m12_ = obj.m12;
    jObj->fields.org_xmlvm_ios_CATransform3D.m11_ = obj.m11;
    jObj->fields.org_xmlvm_ios_CATransform3D.m24_ = obj.m24;
    jObj->fields.org_xmlvm_ios_CATransform3D.m23_ = obj.m23;
    jObj->fields.org_xmlvm_ios_CATransform3D.m22_ = obj.m22;
    jObj->fields.org_xmlvm_ios_CATransform3D.m21_ = obj.m21;
    jObj->fields.org_xmlvm_ios_CATransform3D.m34_ = obj.m34;
    jObj->fields.org_xmlvm_ios_CATransform3D.m33_ = obj.m33;
    jObj->fields.org_xmlvm_ios_CATransform3D.m32_ = obj.m32;
    jObj->fields.org_xmlvm_ios_CATransform3D.m31_ = obj.m31;
    jObj->fields.org_xmlvm_ios_CATransform3D.m44_ = obj.m44;
    jObj->fields.org_xmlvm_ios_CATransform3D.m43_ = obj.m43;
    jObj->fields.org_xmlvm_ios_CATransform3D.m42_ = obj.m42;
    jObj->fields.org_xmlvm_ios_CATransform3D.m41_ = obj.m41;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CATransform3D]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransform3D___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransform3D_isIdentity__]

    BOOL var0 = CATransform3DIsIdentity(toCATransform3D(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransform3D_equalToTransform___org_xmlvm_ios_CATransform3D]

    BOOL var0 = CATransform3DEqualToTransform(toCATransform3D(me),toCATransform3D(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransform3D_makeTranslation___float_float_float]

    CATransform3D var0 = CATransform3DMakeTranslation(n1,n2,n3);
    
    return fromCATransform3D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransform3D_makeScale___float_float_float]

    CATransform3D var0 = CATransform3DMakeScale(n1,n2,n3);
    
    return fromCATransform3D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransform3D_makeRotation___float_float_float_float]

    CATransform3D var0 = CATransform3DMakeRotation(n1,n2,n3,n4);
    
    return fromCATransform3D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransform3D_translate___float_float_float]

    CATransform3D var0 = CATransform3DTranslate(toCATransform3D(me),n1,n2,n3);
    
    return fromCATransform3D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransform3D_scale___float_float_float]

    CATransform3D var0 = CATransform3DScale(toCATransform3D(me),n1,n2,n3);
    
    return fromCATransform3D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransform3D_rotate___float_float_float_float]

    CATransform3D var0 = CATransform3DRotate(toCATransform3D(me),n1,n2,n3,n4);
    
    return fromCATransform3D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransform3D_concat___org_xmlvm_ios_CATransform3D]

    CATransform3D var0 = CATransform3DConcat(toCATransform3D(me),toCATransform3D(n1));
    
    return fromCATransform3D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransform3D_invert__]

    CATransform3D var0 = CATransform3DInvert(toCATransform3D(me));
    
    return fromCATransform3D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransform3D_makeAffineTransform___org_xmlvm_ios_CGAffineTransform]

    CATransform3D var0 = CATransform3DMakeAffineTransform(toCGAffineTransform(n1));
    
    return fromCATransform3D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransform3D_isAffine__]

    BOOL var0 = CATransform3DIsAffine(toCATransform3D(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransform3D_getAffineTransform__]

    CGAffineTransform var0 = CATransform3DGetAffineTransform(toCATransform3D(me));
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER
