
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

IUnknownVTbl toIUnknownVTbl(void *obj)
{
	org_xmlvm_ios_IUnknownVTbl* cObj = obj;
	IUnknownVTbl toRet;
	return toRet;
}
JAVA_OBJECT fromIUnknownVTbl(IUnknownVTbl obj)
{
	org_xmlvm_ios_IUnknownVTbl* jObj = __NEW_org_xmlvm_ios_IUnknownVTbl();
	org_xmlvm_ios_IUnknownVTbl___INIT___(jObj);
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_IUnknownVTbl]
//XMLVM_END_WRAPPER
