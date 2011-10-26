
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

CFStringInlineBuffer toCFStringInlineBuffer(void *obj)
{
	org_xmlvm_ios_CFStringInlineBuffer* cObj = obj;
	CFStringInlineBuffer toRet;
	toRet.theString = cObj->fields.org_xmlvm_ios_CFStringInlineBuffer.theString_;
	toRet.directBuffer = cObj->fields.org_xmlvm_ios_CFStringInlineBuffer.directBuffer_;
	org_xmlvm_ios_CFRange* obj0 = cObj->fields.org_xmlvm_ios_CFStringInlineBuffer.rangeToBuffer_;
	toRet.rangeToBuffer.location = obj0->fields.org_xmlvm_ios_CFRange.location_;
	toRet.rangeToBuffer.length = obj0->fields.org_xmlvm_ios_CFRange.length_;
	toRet.bufferedRangeStart = cObj->fields.org_xmlvm_ios_CFStringInlineBuffer.bufferedRangeStart_;
	toRet.bufferedRangeEnd = cObj->fields.org_xmlvm_ios_CFStringInlineBuffer.bufferedRangeEnd_;
	return toRet;
}
JAVA_OBJECT fromCFStringInlineBuffer(CFStringInlineBuffer obj)
{
	org_xmlvm_ios_CFStringInlineBuffer* jObj = __NEW_org_xmlvm_ios_CFStringInlineBuffer();
	org_xmlvm_ios_CFStringInlineBuffer___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_CFStringInlineBuffer.theString_ = obj.theString;
	jObj->fields.org_xmlvm_ios_CFStringInlineBuffer.directBuffer_ = obj.directBuffer;
	org_xmlvm_ios_CFRange* obj0 = jObj->fields.org_xmlvm_ios_CFStringInlineBuffer.rangeToBuffer_;
	obj0->fields.org_xmlvm_ios_CFRange.location_ = obj.rangeToBuffer.location;
	obj0->fields.org_xmlvm_ios_CFRange.length_ = obj.rangeToBuffer.length;
	jObj->fields.org_xmlvm_ios_CFStringInlineBuffer.bufferedRangeStart_ = obj.bufferedRangeStart;
	jObj->fields.org_xmlvm_ios_CFStringInlineBuffer.bufferedRangeEnd_ = obj.bufferedRangeEnd;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CFStringInlineBuffer]
	me->fields.org_xmlvm_ios_CFStringInlineBuffer.rangeToBuffer_ = __NEW_org_xmlvm_ios_CFRange();
//XMLVM_END_WRAPPER
