
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CVPlanarPixelBufferInfo toCVPlanarPixelBufferInfo(void *obj)
{
	org_xmlvm_ios_CVPlanarPixelBufferInfo* cObj = obj;
	CVPlanarPixelBufferInfo toRet;
	return toRet;
}
JAVA_OBJECT fromCVPlanarPixelBufferInfo(CVPlanarPixelBufferInfo obj)
{
	org_xmlvm_ios_CVPlanarPixelBufferInfo* jObj = __NEW_org_xmlvm_ios_CVPlanarPixelBufferInfo();
	org_xmlvm_ios_CVPlanarPixelBufferInfo___INIT___(jObj);
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CVPlanarPixelBufferInfo]
//XMLVM_END_WRAPPER
