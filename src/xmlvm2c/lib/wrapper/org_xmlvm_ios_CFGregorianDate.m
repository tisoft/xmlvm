
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFGregorianDate toCFGregorianDate(void *obj)
{
	org_xmlvm_ios_CFGregorianDate* cObj = obj;
	CFGregorianDate toRet;
	toRet.year = cObj->fields.org_xmlvm_ios_CFGregorianDate.year_;
	toRet.month = cObj->fields.org_xmlvm_ios_CFGregorianDate.month_;
	toRet.day = cObj->fields.org_xmlvm_ios_CFGregorianDate.day_;
	toRet.hour = cObj->fields.org_xmlvm_ios_CFGregorianDate.hour_;
	toRet.minute = cObj->fields.org_xmlvm_ios_CFGregorianDate.minute_;
	toRet.second = cObj->fields.org_xmlvm_ios_CFGregorianDate.second_;
	return toRet;
}
JAVA_OBJECT fromCFGregorianDate(CFGregorianDate obj)
{
	org_xmlvm_ios_CFGregorianDate* jObj = __NEW_org_xmlvm_ios_CFGregorianDate();
	org_xmlvm_ios_CFGregorianDate___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFGregorianDate.year_ = obj.year;
	jObj->fields.org_xmlvm_ios_CFGregorianDate.month_ = obj.month;
	jObj->fields.org_xmlvm_ios_CFGregorianDate.day_ = obj.day;
	jObj->fields.org_xmlvm_ios_CFGregorianDate.hour_ = obj.hour;
	jObj->fields.org_xmlvm_ios_CFGregorianDate.minute_ = obj.minute;
	jObj->fields.org_xmlvm_ios_CFGregorianDate.second_ = obj.second;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFGregorianDate]
//XMLVM_END_WRAPPER
