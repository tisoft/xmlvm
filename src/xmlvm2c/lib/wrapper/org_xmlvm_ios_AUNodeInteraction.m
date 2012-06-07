
//XMLVM_BEGIN_IMPLEMENTATION
AUNodeInteraction toAUNodeInteraction(void *obj)
{
    org_xmlvm_ios_AUNodeInteraction* objCObj = obj;
    AUNodeInteraction toRet;
    toRet.nodeInteractionType = objCObj->fields.org_xmlvm_ios_AUNodeInteraction.nodeInteractionType_;
    return toRet;
}
JAVA_OBJECT fromAUNodeInteraction(AUNodeInteraction obj)
{
    org_xmlvm_ios_AUNodeInteraction* jObj = __NEW_org_xmlvm_ios_AUNodeInteraction();
    org_xmlvm_ios_AUNodeInteraction___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_AUNodeInteraction.nodeInteractionType_ = obj.nodeInteractionType;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUNodeInteraction]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_AUNodeInteraction___INIT___]
//XMLVM_END_WRAPPER
