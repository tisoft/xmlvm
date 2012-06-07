
//XMLVM_BEGIN_IMPLEMENTATION
CFGregorianDate toCFGregorianDate(void *obj)
{
    org_xmlvm_ios_CFGregorianDate* objCObj = obj;
    CFGregorianDate toRet;
    toRet.year = objCObj->fields.org_xmlvm_ios_CFGregorianDate.year_;
    toRet.month = objCObj->fields.org_xmlvm_ios_CFGregorianDate.month_;
    toRet.day = objCObj->fields.org_xmlvm_ios_CFGregorianDate.day_;
    toRet.hour = objCObj->fields.org_xmlvm_ios_CFGregorianDate.hour_;
    toRet.minute = objCObj->fields.org_xmlvm_ios_CFGregorianDate.minute_;
    toRet.second = objCObj->fields.org_xmlvm_ios_CFGregorianDate.second_;
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

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFGregorianDate___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFGregorianDate_isValid___long]

    Byte var0 = CFGregorianDateIsValid(toCFGregorianDate(me),n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFGregorianDate_getAbsoluteTime___org_xmlvm_ios_NSTimeZone]

    double var0 = CFGregorianDateGetAbsoluteTime(toCFGregorianDate(me),(NSTimeZone*) (((org_xmlvm_ios_NSTimeZone*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER
