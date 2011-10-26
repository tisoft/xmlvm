
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

SCPreferencesContext toSCPreferencesContext(void *obj)
{
	org_xmlvm_ios_SCPreferencesContext* cObj = obj;
	SCPreferencesContext toRet;
	toRet.version = cObj->fields.org_xmlvm_ios_SCPreferencesContext.version_;
	toRet.info = cObj->fields.org_xmlvm_ios_SCPreferencesContext.info_;
	return toRet;
}
JAVA_OBJECT fromSCPreferencesContext(SCPreferencesContext obj)
{
	org_xmlvm_ios_SCPreferencesContext* jObj = __NEW_org_xmlvm_ios_SCPreferencesContext();
	org_xmlvm_ios_SCPreferencesContext___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_SCPreferencesContext.version_ = obj.version;
	jObj->fields.org_xmlvm_ios_SCPreferencesContext.info_ = obj.info;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_SCPreferencesContext]
//XMLVM_END_WRAPPER
