
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CTParagraphStyleSetting toCTParagraphStyleSetting(void *obj)
{
	org_xmlvm_ios_CTParagraphStyleSetting* cObj = obj;
	CTParagraphStyleSetting toRet;
	toRet.spec = cObj->fields.org_xmlvm_ios_CTParagraphStyleSetting.spec_;
	toRet.valueSize = cObj->fields.org_xmlvm_ios_CTParagraphStyleSetting.valueSize_;
	toRet.value = cObj->fields.org_xmlvm_ios_CTParagraphStyleSetting.value_;
	return toRet;
}
JAVA_OBJECT fromCTParagraphStyleSetting(CTParagraphStyleSetting obj)
{
	org_xmlvm_ios_CTParagraphStyleSetting* jObj = __NEW_org_xmlvm_ios_CTParagraphStyleSetting();
	org_xmlvm_ios_CTParagraphStyleSetting___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CTParagraphStyleSetting.spec_ = obj.spec;
	jObj->fields.org_xmlvm_ios_CTParagraphStyleSetting.valueSize_ = obj.valueSize;
	jObj->fields.org_xmlvm_ios_CTParagraphStyleSetting.value_ = obj.value;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CTParagraphStyleSetting]
//XMLVM_END_WRAPPER
