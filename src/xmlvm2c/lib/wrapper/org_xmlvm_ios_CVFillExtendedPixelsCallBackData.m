
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CVFillExtendedPixelsCallBackData toCVFillExtendedPixelsCallBackData(void *obj)
{
	org_xmlvm_ios_CVFillExtendedPixelsCallBackData* cObj = obj;
	CVFillExtendedPixelsCallBackData toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_CVFillExtendedPixelsCallBackData.version_;
	toRet.fillCallBack = cObj->fields.org_xmlvm_ios_CVFillExtendedPixelsCallBackData.fillCallBack_;
	toRet.refCon = cObj->fields.org_xmlvm_ios_CVFillExtendedPixelsCallBackData.refCon_;
	return toRet;
}
JAVA_OBJECT fromCVFillExtendedPixelsCallBackData(CVFillExtendedPixelsCallBackData obj)
{
	org_xmlvm_ios_CVFillExtendedPixelsCallBackData* jObj = __NEW_org_xmlvm_ios_CVFillExtendedPixelsCallBackData();
	org_xmlvm_ios_CVFillExtendedPixelsCallBackData___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CVFillExtendedPixelsCallBackData.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_CVFillExtendedPixelsCallBackData.fillCallBack_ = obj.fillCallBack;
	jObj->fields.org_xmlvm_ios_CVFillExtendedPixelsCallBackData.refCon_ = obj.refCon;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CVFillExtendedPixelsCallBackData]
//XMLVM_END_WRAPPER
