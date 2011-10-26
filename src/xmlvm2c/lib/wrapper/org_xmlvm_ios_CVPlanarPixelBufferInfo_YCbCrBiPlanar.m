
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CVPlanarPixelBufferInfo_YCbCrBiPlanar toCVPlanarPixelBufferInfo_YCbCrBiPlanar(void *obj)
{
	org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar* cObj = obj;
	CVPlanarPixelBufferInfo_YCbCrBiPlanar toRet;
	org_xmlvm_ios_CVPlanarComponentInfo* obj0 = cObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar.componentInfoY_;
	toRet.componentInfoY.offset = obj0->fields.org_xmlvm_ios_CVPlanarComponentInfo.offset_;
	toRet.componentInfoY.rowBytes = obj0->fields.org_xmlvm_ios_CVPlanarComponentInfo.rowBytes_;
	org_xmlvm_ios_CVPlanarComponentInfo* obj1 = cObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar.componentInfoCbCr_;
	toRet.componentInfoCbCr.offset = obj1->fields.org_xmlvm_ios_CVPlanarComponentInfo.offset_;
	toRet.componentInfoCbCr.rowBytes = obj1->fields.org_xmlvm_ios_CVPlanarComponentInfo.rowBytes_;
	return toRet;
}
JAVA_OBJECT fromCVPlanarPixelBufferInfo_YCbCrBiPlanar(CVPlanarPixelBufferInfo_YCbCrBiPlanar obj)
{
	org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar* jObj = __NEW_org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar();
	org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar___INIT___(jObj);
	org_xmlvm_ios_CVPlanarComponentInfo* obj0 = jObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar.componentInfoY_;
	obj0->fields.org_xmlvm_ios_CVPlanarComponentInfo.offset_ = obj.componentInfoY.offset;
	obj0->fields.org_xmlvm_ios_CVPlanarComponentInfo.rowBytes_ = obj.componentInfoY.rowBytes;
	org_xmlvm_ios_CVPlanarComponentInfo* obj1 = jObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar.componentInfoCbCr_;
	obj1->fields.org_xmlvm_ios_CVPlanarComponentInfo.offset_ = obj.componentInfoCbCr.offset;
	obj1->fields.org_xmlvm_ios_CVPlanarComponentInfo.rowBytes_ = obj.componentInfoCbCr.rowBytes;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar]
	me->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar.componentInfoY_ = __NEW_org_xmlvm_ios_CVPlanarComponentInfo();
	me->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrBiPlanar.componentInfoCbCr_ = __NEW_org_xmlvm_ios_CVPlanarComponentInfo();
//XMLVM_END_WRAPPER
