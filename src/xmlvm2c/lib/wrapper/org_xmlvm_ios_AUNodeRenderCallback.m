
//XMLVM_BEGIN_IMPLEMENTATION
AUNodeRenderCallback toAUNodeRenderCallback(void *obj)
{
    org_xmlvm_ios_AUNodeRenderCallback* objCObj = obj;
    AUNodeRenderCallback toRet;
    toRet.destNode = objCObj->fields.org_xmlvm_ios_AUNodeRenderCallback.destNode_;
    toRet.destInputNumber = objCObj->fields.org_xmlvm_ios_AUNodeRenderCallback.destInputNumber_;
    toRet.cback = toAURenderCallbackStruct(objCObj->fields.org_xmlvm_ios_AUNodeRenderCallback.cback_);
    return toRet;
}
JAVA_OBJECT fromAUNodeRenderCallback(AUNodeRenderCallback obj)
{
    org_xmlvm_ios_AUNodeRenderCallback* jObj = __NEW_org_xmlvm_ios_AUNodeRenderCallback();
    org_xmlvm_ios_AUNodeRenderCallback___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AUNodeRenderCallback.destNode_ = obj.destNode;
    jObj->fields.org_xmlvm_ios_AUNodeRenderCallback.destInputNumber_ = obj.destInputNumber;
    jObj->fields.org_xmlvm_ios_AUNodeRenderCallback.cback_ = fromAURenderCallbackStruct(obj.cback);
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUNodeRenderCallback]
    me->fields.org_xmlvm_ios_AUNodeRenderCallback.cback_ = __NEW_org_xmlvm_ios_AURenderCallbackStruct();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AUNodeRenderCallback___INIT___]
//XMLVM_END_WRAPPER
