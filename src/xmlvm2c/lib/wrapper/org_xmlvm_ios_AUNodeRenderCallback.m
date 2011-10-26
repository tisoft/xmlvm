
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AUNodeRenderCallback toAUNodeRenderCallback(void *obj)
{
	org_xmlvm_ios_AUNodeRenderCallback* cObj = obj;
	AUNodeRenderCallback toRet;
	toRet.destNode = cObj->fields.org_xmlvm_ios_AUNodeRenderCallback.destNode_;
	toRet.destInputNumber = cObj->fields.org_xmlvm_ios_AUNodeRenderCallback.destInputNumber_;
	org_xmlvm_ios_AURenderCallbackStruct* obj0 = cObj->fields.org_xmlvm_ios_AUNodeRenderCallback.cback_;
	toRet.cback.inputProc = obj0->fields.org_xmlvm_ios_AURenderCallbackStruct.inputProc_;
	toRet.cback.inputProcRefCon = obj0->fields.org_xmlvm_ios_AURenderCallbackStruct.inputProcRefCon_;
	return toRet;
}
JAVA_OBJECT fromAUNodeRenderCallback(AUNodeRenderCallback obj)
{
	org_xmlvm_ios_AUNodeRenderCallback* jObj = __NEW_org_xmlvm_ios_AUNodeRenderCallback();
	org_xmlvm_ios_AUNodeRenderCallback___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AUNodeRenderCallback.destNode_ = obj.destNode;
	jObj->fields.org_xmlvm_ios_AUNodeRenderCallback.destInputNumber_ = obj.destInputNumber;
	org_xmlvm_ios_AURenderCallbackStruct* obj0 = jObj->fields.org_xmlvm_ios_AUNodeRenderCallback.cback_;
	obj0->fields.org_xmlvm_ios_AURenderCallbackStruct.inputProc_ = obj.cback.inputProc;
	obj0->fields.org_xmlvm_ios_AURenderCallbackStruct.inputProcRefCon_ = obj.cback.inputProcRefCon;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AUNodeRenderCallback]
	me->fields.org_xmlvm_ios_AUNodeRenderCallback.cback_ = __NEW_org_xmlvm_ios_AURenderCallbackStruct();
//XMLVM_END_WRAPPER
