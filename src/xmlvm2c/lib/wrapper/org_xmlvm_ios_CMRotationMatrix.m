
//XMLVM_BEGIN_IMPLEMENTATION
CMRotationMatrix toCMRotationMatrix(void *obj)
{
    org_xmlvm_ios_CMRotationMatrix* objCObj = obj;
    CMRotationMatrix toRet;
    toRet.m13 = objCObj->fields.org_xmlvm_ios_CMRotationMatrix.m13_;
    toRet.m12 = objCObj->fields.org_xmlvm_ios_CMRotationMatrix.m12_;
    toRet.m11 = objCObj->fields.org_xmlvm_ios_CMRotationMatrix.m11_;
    toRet.m23 = objCObj->fields.org_xmlvm_ios_CMRotationMatrix.m23_;
    toRet.m22 = objCObj->fields.org_xmlvm_ios_CMRotationMatrix.m22_;
    toRet.m21 = objCObj->fields.org_xmlvm_ios_CMRotationMatrix.m21_;
    toRet.m33 = objCObj->fields.org_xmlvm_ios_CMRotationMatrix.m33_;
    toRet.m32 = objCObj->fields.org_xmlvm_ios_CMRotationMatrix.m32_;
    toRet.m31 = objCObj->fields.org_xmlvm_ios_CMRotationMatrix.m31_;
    return toRet;
}
JAVA_OBJECT fromCMRotationMatrix(CMRotationMatrix obj)
{
    org_xmlvm_ios_CMRotationMatrix* jObj = __NEW_org_xmlvm_ios_CMRotationMatrix();
    org_xmlvm_ios_CMRotationMatrix___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CMRotationMatrix.m13_ = obj.m13;
    jObj->fields.org_xmlvm_ios_CMRotationMatrix.m12_ = obj.m12;
    jObj->fields.org_xmlvm_ios_CMRotationMatrix.m11_ = obj.m11;
    jObj->fields.org_xmlvm_ios_CMRotationMatrix.m23_ = obj.m23;
    jObj->fields.org_xmlvm_ios_CMRotationMatrix.m22_ = obj.m22;
    jObj->fields.org_xmlvm_ios_CMRotationMatrix.m21_ = obj.m21;
    jObj->fields.org_xmlvm_ios_CMRotationMatrix.m33_ = obj.m33;
    jObj->fields.org_xmlvm_ios_CMRotationMatrix.m32_ = obj.m32;
    jObj->fields.org_xmlvm_ios_CMRotationMatrix.m31_ = obj.m31;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CMRotationMatrix]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMRotationMatrix___INIT___]
//XMLVM_END_WRAPPER
