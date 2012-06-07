
//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGBitmapContextGetAlphaInfo___org_xmlvm_ios_CGContext]
XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    
    int var0 = CGBitmapContextGetAlphaInfo(var1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGBitmapContextCreateImage___org_xmlvm_ios_CGContext]
XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    
    CGImageRef var0 = CGBitmapContextCreateImage(var1);
        XMLVM_VAR_INIT_REF(CGImage, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGPDFContextCreateWithURL___org_xmlvm_ios_CFURL_org_xmlvm_ios_Reference_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGPDFContextAddDestinationAtPoint___org_xmlvm_ios_CGContext_java_lang_String_org_xmlvm_ios_CGPoint]
XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    CGPDFContextAddDestinationAtPoint(var1,ObjCVar2,toCGPoint(n3));
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGBitmapContextGetBitsPerComponent___org_xmlvm_ios_CGContext]
XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    
    int var0 = CGBitmapContextGetBitsPerComponent(var1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGBitmapContextGetBitsPerPixel___org_xmlvm_ios_CGContext]
XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    
    int var0 = CGBitmapContextGetBitsPerPixel(var1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGBitmapContextCreateWithData___byte_1ARRAY_int_int_int_int_org_xmlvm_ios_CGColorSpace_int_java_lang_Object_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_IOS_REF(CGColorSpace, var6, n6);
    XMLVM_VAR_BYTE_ARRAY(a9, n9); 
    
    CGContextRef var0 = CGBitmapContextCreateWithData(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,n2,n3,n4,n5,var6,n7,((org_xmlvm_ios_NSObject*) n8)->fields.org_xmlvm_ios_NSObject.wrappedObj,a9->fields.org_xmlvm_runtime_XMLVMArray.array_);
        XMLVM_VAR_INIT_REF(CGContext, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGPDFContextSetURLForRect___org_xmlvm_ios_CGContext_org_xmlvm_ios_CFURL_org_xmlvm_ios_CGRect]
XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    XMLVM_VAR_IOS_REF(CFURL, var2, n2);
    CGPDFContextSetURLForRect(var1,var2,toCGRect(n3));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGPDFContextClose___org_xmlvm_ios_CGContext]
XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    CGPDFContextClose(var1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGBitmapContextCreate___byte_1ARRAY_int_int_int_int_org_xmlvm_ios_CGColorSpace_int]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_IOS_REF(CGColorSpace, var6, n6);
    
    CGContextRef var0 = CGBitmapContextCreate(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,n2,n3,n4,n5,var6,n7);
        XMLVM_VAR_INIT_REF(CGContext, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGBitmapContextGetHeight___org_xmlvm_ios_CGContext]
XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    
    int var0 = CGBitmapContextGetHeight(var1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGPDFContextSetDestinationForRect___org_xmlvm_ios_CGContext_java_lang_String_org_xmlvm_ios_CGRect]
XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    NSString * ObjCVar2 = toNSString(n2);
    CGPDFContextSetDestinationForRect(var1,ObjCVar2,toCGRect(n3));
    
    [ObjCVar2 release];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGBitmapContextGetData___org_xmlvm_ios_CGContext]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGBitmapContextGetColorSpace___org_xmlvm_ios_CGContext]
XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    
    CGColorSpaceRef var0 = CGBitmapContextGetColorSpace(var1);
        XMLVM_VAR_INIT_REF(CGColorSpace, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGPDFContextCreate___org_xmlvm_ios_CGDataConsumer_org_xmlvm_ios_Reference_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGPDFContextAddDocumentMetadata___org_xmlvm_ios_CGContext_org_xmlvm_ios_CFData]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGBitmapContextGetWidth___org_xmlvm_ios_CGContext]
XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    
    int var0 = CGBitmapContextGetWidth(var1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGPDFContextBeginPage___org_xmlvm_ios_CGContext_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGBitmapContextGetBytesPerRow___org_xmlvm_ios_CGContext]
XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    
    int var0 = CGBitmapContextGetBytesPerRow(var1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGPDFContextEndPage___org_xmlvm_ios_CGContext]
XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    CGPDFContextEndPage(var1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CoreGraphics_CGBitmapContextGetBitmapInfo___org_xmlvm_ios_CGContext]
XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    
    int var0 = CGBitmapContextGetBitmapInfo(var1);
    
    return var0;
//XMLVM_END_WRAPPER
