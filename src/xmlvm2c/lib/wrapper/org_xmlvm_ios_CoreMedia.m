
//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreMedia_CMRemoveAttachment___org_xmlvm_ios_CMAttachmentBearer_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    CMRemoveAttachment((CMAttachmentBearer*) (((org_xmlvm_ios_CMAttachmentBearer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar2);
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreMedia_CMTextFormatDescriptionGetDefaultStyle___org_xmlvm_ios_CMFormatDescription_short_1ARRAY_byte_1ARRAY_byte_1ARRAY_byte_1ARRAY_float_1ARRAY_float_1ARRAY]
XMLVM_VAR_SHORT_ARRAY(a2, n2); 
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    XMLVM_VAR_BYTE_ARRAY(a4, n4); 
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    XMLVM_VAR_FLOAT_ARRAY(a6, n6); 
    XMLVM_VAR_FLOAT_ARRAY(a7, n7); 
    
    int var0 = CMTextFormatDescriptionGetDefaultStyle((CMFormatDescription*) (((org_xmlvm_ios_CMFormatDescription*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_,a5->fields.org_xmlvm_runtime_XMLVMArray.array_,a6->fields.org_xmlvm_runtime_XMLVMArray.array_,a7->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreMedia_CMAudioSampleBufferCreateWithPacketDescriptions___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CMBlockBuffer_byte_java_lang_Object_byte_1ARRAY_org_xmlvm_ios_CMFormatDescription_long_org_xmlvm_ios_CMTime_org_xmlvm_ios_Reference_org_xmlvm_ios_CMSampleBuffer]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_BYTE_ARRAY(a5, n5); 
    JAVA_OBJECT jObject9 = org_xmlvm_ios_Reference_get__(n9);
    AudioStreamPacketDescription var9= toAudioStreamPacketDescription(jObject9);
    
    int var0 = CMAudioSampleBufferCreateWithPacketDescriptions(var1,(CMBlockBuffer*) (((org_xmlvm_ios_CMBlockBuffer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),n3,((org_xmlvm_ios_NSObject*) n4)->fields.org_xmlvm_ios_NSObject.wrappedObj,a5->fields.org_xmlvm_runtime_XMLVMArray.array_,(CMFormatDescription*) (((org_xmlvm_ios_CMFormatDescription*) n6)->fields.org_xmlvm_ios_NSObject.wrappedObj),n7,toCMTime(n8),&var9,(CMSampleBuffer*) (((org_xmlvm_ios_CMSampleBuffer*) n10)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    org_xmlvm_ios_Reference_set___java_lang_Object(n9, fromAudioStreamPacketDescription(var9));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreMedia_CMTextFormatDescriptionGetFontName___org_xmlvm_ios_CMFormatDescription_short_java_lang_String]
NSString * ObjCVar3 = toNSString(n3);
    
    int var0 = CMTextFormatDescriptionGetFontName((CMFormatDescription*) (((org_xmlvm_ios_CMFormatDescription*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,ObjCVar3);
    
    [ObjCVar3 release];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreMedia_CMTextFormatDescriptionGetJustification___org_xmlvm_ios_CMFormatDescription_byte_1ARRAY_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    
    int var0 = CMTextFormatDescriptionGetJustification((CMFormatDescription*) (((org_xmlvm_ios_CMFormatDescription*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreMedia_CMTextFormatDescriptionGetDisplayFlags___org_xmlvm_ios_CMFormatDescription_int_1ARRAY]
XMLVM_VAR_INT_ARRAY(a2, n2); 
    
    int var0 = CMTextFormatDescriptionGetDisplayFlags((CMFormatDescription*) (((org_xmlvm_ios_CMFormatDescription*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreMedia_CMSetAttachment___org_xmlvm_ios_CMAttachmentBearer_java_lang_String_byte_1ARRAY_int]
NSString * ObjCVar2 = toNSString(n2);
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
    CMSetAttachment((CMAttachmentBearer*) (((org_xmlvm_ios_CMAttachmentBearer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),ObjCVar2,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,n4);
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreMedia_CMCopyDictionaryOfAttachments___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CMAttachmentBearer_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreMedia_CMSetAttachments___org_xmlvm_ios_CMAttachmentBearer_org_xmlvm_ios_CFDictionary_int]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreMedia_CMGetAttachment___org_xmlvm_ios_CMAttachmentBearer_java_lang_String_int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreMedia_CMPropagateAttachments___org_xmlvm_ios_CMAttachmentBearer_org_xmlvm_ios_CMAttachmentBearer]
CMPropagateAttachments((CMAttachmentBearer*) (((org_xmlvm_ios_CMAttachmentBearer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),(CMAttachmentBearer*) (((org_xmlvm_ios_CMAttachmentBearer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreMedia_CMTextFormatDescriptionGetDefaultTextBox___org_xmlvm_ios_CMFormatDescription_byte_float_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    CGRect var4= toCGRect(jObject4);
    
    int var0 = CMTextFormatDescriptionGetDefaultTextBox((CMFormatDescription*) (((org_xmlvm_ios_CMFormatDescription*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj),n2,n3,&var4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n4, fromCGRect(var4));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreMedia_CMRemoveAllAttachments___org_xmlvm_ios_CMAttachmentBearer]
CMRemoveAllAttachments((CMAttachmentBearer*) (((org_xmlvm_ios_CMAttachmentBearer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    
//XMLVM_END_WRAPPER
