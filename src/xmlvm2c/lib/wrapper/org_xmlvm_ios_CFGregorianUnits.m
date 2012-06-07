
//XMLVM_BEGIN_IMPLEMENTATION
CFGregorianUnits toCFGregorianUnits(void *obj)
{
    org_xmlvm_ios_CFGregorianUnits* objCObj = obj;
    CFGregorianUnits toRet;
    toRet.years = objCObj->fields.org_xmlvm_ios_CFGregorianUnits.years_;
    toRet.months = objCObj->fields.org_xmlvm_ios_CFGregorianUnits.months_;
    toRet.days = objCObj->fields.org_xmlvm_ios_CFGregorianUnits.days_;
    toRet.hours = objCObj->fields.org_xmlvm_ios_CFGregorianUnits.hours_;
    toRet.minutes = objCObj->fields.org_xmlvm_ios_CFGregorianUnits.minutes_;
    toRet.seconds = objCObj->fields.org_xmlvm_ios_CFGregorianUnits.seconds_;
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

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFGregorianUnits___INIT___]
//XMLVM_END_WRAPPER
