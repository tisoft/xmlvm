
//XMLVM_BEGIN_IMPLEMENTATION
CFSwappedFloat32 toCFSwappedFloat32(void *obj)
{
    org_xmlvm_ios_CFSwappedFloat32* objCObj = obj;
    CFSwappedFloat32 toRet;
    toRet.v = objCObj->fields.org_xmlvm_ios_CFSwappedFloat32.v_;
    return toRet;
}
JAVA_OBJECT fromCFSwappedFloat32(CFSwappedFloat32 obj)
{
    org_xmlvm_ios_CFSwappedFloat32* jObj = __NEW_org_xmlvm_ios_CFSwappedFloat32();
    org_xmlvm_ios_CFSwappedFloat32___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFSwappedFloat32.v_ = obj.v;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFSwappedFloat32]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFSwappedFloat32___INIT___]
//XMLVM_END_WRAPPER
