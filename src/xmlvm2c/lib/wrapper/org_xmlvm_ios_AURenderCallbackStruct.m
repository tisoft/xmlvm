
//XMLVM_BEGIN_IMPLEMENTATION
AURenderCallbackStruct toAURenderCallbackStruct(void *obj)
{
    org_xmlvm_ios_AURenderCallbackStruct* objCObj = obj;
    AURenderCallbackStruct toRet;
    toRet.inputProc = objCObj->fields.org_xmlvm_ios_AURenderCallbackStruct.inputProc_;
    toRet.inputProcRefCon = objCObj->fields.org_xmlvm_ios_AURenderCallbackStruct.inputProcRefCon_;
    return toRet;
}
JAVA_OBJECT fromAURenderCallbackStruct(AURenderCallbackStruct obj)
{
    org_xmlvm_ios_AURenderCallbackStruct* jObj = __NEW_org_xmlvm_ios_AURenderCallbackStruct();
    org_xmlvm_ios_AURenderCallbackStruct___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AURenderCallbackStruct.inputProc_ = obj.inputProc;
    jObj->fields.org_xmlvm_ios_AURenderCallbackStruct.inputProcRefCon_ = obj.inputProcRefCon;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AURenderCallbackStruct]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AURenderCallbackStruct___INIT___]
//XMLVM_END_WRAPPER
