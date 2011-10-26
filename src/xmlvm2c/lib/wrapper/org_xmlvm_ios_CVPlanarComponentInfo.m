
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CVPlanarComponentInfo toCVPlanarComponentInfo(void *obj)
{
	org_xmlvm_ios_CVPlanarComponentInfo* cObj = obj;
	CVPlanarComponentInfo toRet;
	toRet.offset = cObj->fields.org_xmlvm_ios_CVPlanarComponentInfo.offset_;
	toRet.rowBytes = cObj->fields.org_xmlvm_ios_CVPlanarComponentInfo.rowBytes_;
	return toRet;
}
JAVA_OBJECT fromCVPlanarComponentInfo(CVPlanarComponentInfo obj)
{
	org_xmlvm_ios_CVPlanarComponentInfo* jObj = __NEW_org_xmlvm_ios_CVPlanarComponentInfo();
	org_xmlvm_ios_CVPlanarComponentInfo___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CVPlanarComponentInfo.offset_ = obj.offset;
	jObj->fields.org_xmlvm_ios_CVPlanarComponentInfo.rowBytes_ = obj.rowBytes;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CVPlanarComponentInfo]
//XMLVM_END_WRAPPER
