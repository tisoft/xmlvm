
//XMLVM_BEGIN_IMPLEMENTATION
CVPlanarPixelBufferInfo_YCbCrBiPlanar toCVPlanarPixelBufferInfo_YCbCrBiPlanar(void *obj)
{
    org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar* objCObj = obj;
    CVPlanarPixelBufferInfo_YCbCrBiPlanar toRet;
    toRet.componentInfoY = toCVPlanarComponentInfo(objCObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar.componentInfoY_);
    toRet.componentInfoCbCr = toCVPlanarComponentInfo(objCObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar.componentInfoCbCr_);
    return toRet;
}
JAVA_OBJECT fromCVPlanarPixelBufferInfo_YCbCrBiPlanar(CVPlanarPixelBufferInfo_YCbCrBiPlanar obj)
{
    org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar* jObj = __NEW_org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar();
    org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar.componentInfoY_ = fromCVPlanarComponentInfo(obj.componentInfoY);
    jObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar.componentInfoCbCr_ = fromCVPlanarComponentInfo(obj.componentInfoCbCr);
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar]
    me->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar.componentInfoY_ = __NEW_org_xmlvm_ios_CVPlanarComponentInfo();
    me->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar.componentInfoCbCr_ = __NEW_org_xmlvm_ios_CVPlanarComponentInfo();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar___INIT___]
//XMLVM_END_WRAPPER
