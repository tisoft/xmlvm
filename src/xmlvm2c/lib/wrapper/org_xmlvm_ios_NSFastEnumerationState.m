
//XMLVM_BEGIN_IMPLEMENTATION
NSFastEnumerationState toNSFastEnumerationState(void *obj)
{
    org_xmlvm_ios_NSFastEnumerationState* objCObj = obj;
    NSFastEnumerationState toRet;
    toRet.state = objCObj->fields.org_xmlvm_ios_NSFastEnumerationState.state_;
    toRet.itemsPtr = objCObj->fields.org_xmlvm_ios_NSFastEnumerationState.itemsPtr_;
    toRet.mutationsPtr = objCObj->fields.org_xmlvm_ios_NSFastEnumerationState.mutationsPtr_;
    return toRet;
}
JAVA_OBJECT fromNSFastEnumerationState(NSFastEnumerationState obj)
{
    org_xmlvm_ios_NSFastEnumerationState* jObj = __NEW_org_xmlvm_ios_NSFastEnumerationState();
    org_xmlvm_ios_NSFastEnumerationState___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_NSFastEnumerationState.state_ = obj.state;
    jObj->fields.org_xmlvm_ios_NSFastEnumerationState.itemsPtr_ = obj.itemsPtr;
    jObj->fields.org_xmlvm_ios_NSFastEnumerationState.mutationsPtr_ = obj.mutationsPtr;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_NSFastEnumerationState]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFastEnumerationState___INIT___]
//XMLVM_END_WRAPPER
