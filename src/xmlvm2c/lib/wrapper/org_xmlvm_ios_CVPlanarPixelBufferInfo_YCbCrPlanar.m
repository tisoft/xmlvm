
//XMLVM_BEGIN_IMPLEMENTATION
CVPlanarPixelBufferInfo_YCbCrPlanar toCVPlanarPixelBufferInfo_YCbCrPlanar(void *obj)
{
    org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar* objCObj = obj;
    CVPlanarPixelBufferInfo_YCbCrPlanar toRet;
    toRet.componentInfoY = toCVPlanarComponentInfo(objCObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoY_);
    toRet.componentInfoCb = toCVPlanarComponentInfo(objCObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoCb_);
    toRet.componentInfoCr = toCVPlanarComponentInfo(objCObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoCr_);
    return toRet;
}
JAVA_OBJECT fromCVPlanarPixelBufferInfo_YCbCrPlanar(CVPlanarPixelBufferInfo_YCbCrPlanar obj)
{
    org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar* jObj = __NEW_org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar();
    org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoY_ = fromCVPlanarComponentInfo(obj.componentInfoY);
    jObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoCb_ = fromCVPlanarComponentInfo(obj.componentInfoCb);
    jObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoCr_ = fromCVPlanarComponentInfo(obj.componentInfoCr);
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar]
    me->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoY_ = __NEW_org_xmlvm_ios_CVPlanarComponentInfo();
    me->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoCb_ = __NEW_org_xmlvm_ios_CVPlanarComponentInfo();
    me->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoCr_ = __NEW_org_xmlvm_ios_CVPlanarComponentInfo();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar___INIT___]
//XMLVM_END_WRAPPER
