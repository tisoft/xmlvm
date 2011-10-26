
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CVPlanarPixelBufferInfo_YCbCrPlanar toCVPlanarPixelBufferInfo_YCbCrPlanar(void *obj)
{
	org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar* cObj = obj;
	CVPlanarPixelBufferInfo_YCbCrPlanar toRet;
	org_xmlvm_ios_CVPlanarComponentInfo* obj0 = cObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoY_;
	toRet.componentInfoY.offset = obj0->fields.org_xmlvm_ios_CVPlanarComponentInfo.offset_;
	toRet.componentInfoY.rowBytes = obj0->fields.org_xmlvm_ios_CVPlanarComponentInfo.rowBytes_;
	org_xmlvm_ios_CVPlanarComponentInfo* obj1 = cObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoCb_;
	toRet.componentInfoCb.offset = obj1->fields.org_xmlvm_ios_CVPlanarComponentInfo.offset_;
	toRet.componentInfoCb.rowBytes = obj1->fields.org_xmlvm_ios_CVPlanarComponentInfo.rowBytes_;
	org_xmlvm_ios_CVPlanarComponentInfo* obj2 = cObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoCr_;
	toRet.componentInfoCr.offset = obj2->fields.org_xmlvm_ios_CVPlanarComponentInfo.offset_;
	toRet.componentInfoCr.rowBytes = obj2->fields.org_xmlvm_ios_CVPlanarComponentInfo.rowBytes_;
	return toRet;
}
JAVA_OBJECT fromCVPlanarPixelBufferInfo_YCbCrPlanar(CVPlanarPixelBufferInfo_YCbCrPlanar obj)
{
	org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar* jObj = __NEW_org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar();
	org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar___INIT___(jObj);
	org_xmlvm_ios_CVPlanarComponentInfo* obj0 = jObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoY_;
	obj0->fields.org_xmlvm_ios_CVPlanarComponentInfo.offset_ = obj.componentInfoY.offset;
	obj0->fields.org_xmlvm_ios_CVPlanarComponentInfo.rowBytes_ = obj.componentInfoY.rowBytes;
	org_xmlvm_ios_CVPlanarComponentInfo* obj1 = jObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoCb_;
	obj1->fields.org_xmlvm_ios_CVPlanarComponentInfo.offset_ = obj.componentInfoCb.offset;
	obj1->fields.org_xmlvm_ios_CVPlanarComponentInfo.rowBytes_ = obj.componentInfoCb.rowBytes;
	org_xmlvm_ios_CVPlanarComponentInfo* obj2 = jObj->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoCr_;
	obj2->fields.org_xmlvm_ios_CVPlanarComponentInfo.offset_ = obj.componentInfoCr.offset;
	obj2->fields.org_xmlvm_ios_CVPlanarComponentInfo.rowBytes_ = obj.componentInfoCr.rowBytes;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar]
	me->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoY_ = __NEW_org_xmlvm_ios_CVPlanarComponentInfo();
	me->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoCb_ = __NEW_org_xmlvm_ios_CVPlanarComponentInfo();
	me->fields.org_xmlvm_ios_CVPlanarPixelBufferInfo_YCbCrPlanar.componentInfoCr_ = __NEW_org_xmlvm_ios_CVPlanarComponentInfo();
//XMLVM_END_WRAPPER
