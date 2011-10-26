
//XMLVM_BEGIN_IMPLEMENTATION
#include "xmlvm-ios.h"

AudioUnitCocoaViewInfo toAudioUnitCocoaViewInfo(void *obj)
{
	org_xmlvm_ios_AudioUnitCocoaViewInfo* cObj = obj;
	AudioUnitCocoaViewInfo toRet;
	toRet.mCocoaAUViewBundleLocation = cObj->fields.org_xmlvm_ios_AudioUnitCocoaViewInfo.mCocoaAUViewBundleLocation_;
	return toRet;
}
JAVA_OBJECT fromAudioUnitCocoaViewInfo(AudioUnitCocoaViewInfo obj)
{
	org_xmlvm_ios_AudioUnitCocoaViewInfo* jObj = __NEW_org_xmlvm_ios_AudioUnitCocoaViewInfo();
	org_xmlvm_ios_AudioUnitCocoaViewInfo___INIT___(jObj);
	jObj->fields.org_xmlvm_ios_AudioUnitCocoaViewInfo.mCocoaAUViewBundleLocation_ = obj.mCocoaAUViewBundleLocation;
	return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_AudioUnitCocoaViewInfo]
//XMLVM_END_WRAPPER
