
//XMLVM_BEGIN_IMPLEMENTATION
CFUUIDBytes toCFUUIDBytes(void *obj)
{
    org_xmlvm_ios_CFUUIDBytes* objCObj = obj;
    CFUUIDBytes toRet;
    toRet.byte0 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte0_;
    toRet.byte1 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte1_;
    toRet.byte2 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte2_;
    toRet.byte3 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte3_;
    toRet.byte4 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte4_;
    toRet.byte5 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte5_;
    toRet.byte6 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte6_;
    toRet.byte7 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte7_;
    toRet.byte8 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte8_;
    toRet.byte9 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte9_;
    toRet.byte10 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte10_;
    toRet.byte11 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte11_;
    toRet.byte12 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte12_;
    toRet.byte13 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte13_;
    toRet.byte14 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte14_;
    toRet.byte15 = objCObj->fields.org_xmlvm_ios_CFUUIDBytes.byte15_;
    return toRet;
}
JAVA_OBJECT fromCFUUIDBytes(CFUUIDBytes obj)
{
    org_xmlvm_ios_CFUUIDBytes* jObj = __NEW_org_xmlvm_ios_CFUUIDBytes();
    org_xmlvm_ios_CFUUIDBytes___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte0_ = obj.byte0;
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte1_ = obj.byte1;
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte2_ = obj.byte2;
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte3_ = obj.byte3;
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte4_ = obj.byte4;
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte5_ = obj.byte5;
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte6_ = obj.byte6;
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte7_ = obj.byte7;
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte8_ = obj.byte8;
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte9_ = obj.byte9;
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte10_ = obj.byte10;
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte11_ = obj.byte11;
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte12_ = obj.byte12;
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte13_ = obj.byte13;
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte14_ = obj.byte14;
    jObj->fields.org_xmlvm_ios_CFUUIDBytes.byte15_ = obj.byte15;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFUUIDBytes]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFUUIDBytes___INIT___]
//XMLVM_END_WRAPPER
