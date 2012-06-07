
//XMLVM_BEGIN_IMPLEMENTATION
AUInputSamplesInOutputCallbackStruct toAUInputSamplesInOutputCallbackStruct(void *obj)
{
    org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct* objCObj = obj;
    AUInputSamplesInOutputCallbackStruct toRet;
    toRet.inputToOutputCallback = objCObj->fields.org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct.inputToOutputCallback_;
    toRet.userData = objCObj->fields.org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct.userData_;
    return toRet;
}
JAVA_OBJECT fromAUInputSamplesInOutputCallbackStruct(AUInputSamplesInOutputCallbackStruct obj)
{
    org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct* jObj = __NEW_org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct();
    org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct.inputToOutputCallback_ = obj.inputToOutputCallback;
    jObj->fields.org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct.userData_ = obj.userData;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AUInputSamplesInOutputCallbackStruct___INIT___]
//XMLVM_END_WRAPPER
