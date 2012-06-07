
//XMLVM_BEGIN_IMPLEMENTATION
SCDynamicStoreContext toSCDynamicStoreContext(void *obj)
{
    org_xmlvm_ios_SCDynamicStoreContext* objCObj = obj;
    SCDynamicStoreContext toRet;
    toRet.version = objCObj->fields.org_xmlvm_ios_SCDynamicStoreContext.version_;
    toRet.info = objCObj->fields.org_xmlvm_ios_SCDynamicStoreContext.info_;
    return toRet;
}
JAVA_OBJECT fromSCDynamicStoreContext(SCDynamicStoreContext obj)
{
    org_xmlvm_ios_SCDynamicStoreContext* jObj = __NEW_org_xmlvm_ios_SCDynamicStoreContext();
    org_xmlvm_ios_SCDynamicStoreContext___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_SCDynamicStoreContext.version_ = obj.version;
    jObj->fields.org_xmlvm_ios_SCDynamicStoreContext.info_ = obj.info;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_SCDynamicStoreContext]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_SCDynamicStoreContext___INIT___]
//XMLVM_END_WRAPPER
