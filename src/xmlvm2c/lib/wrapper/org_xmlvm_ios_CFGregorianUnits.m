
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFGregorianUnits toCFGregorianUnits(void *obj)
{
	org_xmlvm_ios_CFGregorianUnits* cObj = obj;
	CFGregorianUnits toRet;
	toRet.years = cObj->fields.org_xmlvm_ios_CFGregorianUnits.years_;
	toRet.months = cObj->fields.org_xmlvm_ios_CFGregorianUnits.months_;
	toRet.days = cObj->fields.org_xmlvm_ios_CFGregorianUnits.days_;
	toRet.hours = cObj->fields.org_xmlvm_ios_CFGregorianUnits.hours_;
	toRet.minutes = cObj->fields.org_xmlvm_ios_CFGregorianUnits.minutes_;
	toRet.seconds = cObj->fields.org_xmlvm_ios_CFGregorianUnits.seconds_;
	return toRet;
}
JAVA_OBJECT fromCFGregorianUnits(CFGregorianUnits obj)
{
	org_xmlvm_ios_CFGregorianUnits* jObj = __NEW_org_xmlvm_ios_CFGregorianUnits();
	org_xmlvm_ios_CFGregorianUnits___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFGregorianUnits.years_ = obj.years;
	jObj->fields.org_xmlvm_ios_CFGregorianUnits.months_ = obj.months;
	jObj->fields.org_xmlvm_ios_CFGregorianUnits.days_ = obj.days;
	jObj->fields.org_xmlvm_ios_CFGregorianUnits.hours_ = obj.hours;
	jObj->fields.org_xmlvm_ios_CFGregorianUnits.minutes_ = obj.minutes;
	jObj->fields.org_xmlvm_ios_CFGregorianUnits.seconds_ = obj.seconds;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFGregorianUnits]
//XMLVM_END_WRAPPER
