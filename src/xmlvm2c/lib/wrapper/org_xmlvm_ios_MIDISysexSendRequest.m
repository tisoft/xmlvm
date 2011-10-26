
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

MIDISysexSendRequest toMIDISysexSendRequest(void *obj)
{
	org_xmlvm_ios_MIDISysexSendRequest* cObj = obj;
	MIDISysexSendRequest toRet;
	toRet.destination = cObj->fields.org_xmlvm_ios_MIDISysexSendRequest.destination_;
	toRet.data = cObj->fields.org_xmlvm_ios_MIDISysexSendRequest.data_;
	toRet.bytesToSend = cObj->fields.org_xmlvm_ios_MIDISysexSendRequest.bytesToSend_;
	toRet.complete = cObj->fields.org_xmlvm_ios_MIDISysexSendRequest.complete_;
	toRet.completionProc = cObj->fields.org_xmlvm_ios_MIDISysexSendRequest.completionProc_;
	toRet.completionRefCon = cObj->fields.org_xmlvm_ios_MIDISysexSendRequest.completionRefCon_;
	return toRet;
}
JAVA_OBJECT fromMIDISysexSendRequest(MIDISysexSendRequest obj)
{
	org_xmlvm_ios_MIDISysexSendRequest* jObj = __NEW_org_xmlvm_ios_MIDISysexSendRequest();
	org_xmlvm_ios_MIDISysexSendRequest___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_MIDISysexSendRequest.destination_ = obj.destination;
	jObj->fields.org_xmlvm_ios_MIDISysexSendRequest.data_ = obj.data;
	jObj->fields.org_xmlvm_ios_MIDISysexSendRequest.bytesToSend_ = obj.bytesToSend;
	jObj->fields.org_xmlvm_ios_MIDISysexSendRequest.complete_ = obj.complete;
	jObj->fields.org_xmlvm_ios_MIDISysexSendRequest.completionProc_ = obj.completionProc;
	jObj->fields.org_xmlvm_ios_MIDISysexSendRequest.completionRefCon_ = obj.completionRefCon;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MIDISysexSendRequest]
//XMLVM_END_WRAPPER
