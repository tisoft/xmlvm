
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CGImage_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGImage]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage___INIT____int_int_int_int_int_org_xmlvm_ios_CGColorSpace_int_org_xmlvm_ios_CGDataProvider_float_1ARRAY_boolean_int]
XMLVM_VAR_IOS_REF(CGColorSpace, var6, n6);
    XMLVM_VAR_IOS_REF(CGDataProvider, var8, n8);
    XMLVM_VAR_FLOAT_ARRAY(a9, n9); 
    
    CGImageRef var0 = CGImageCreate(n1,n2,n3,n4,n5,var6,n7,var8,a9->fields.org_xmlvm_runtime_XMLVMArray.array_,n10,n11);
        org_xmlvm_ios_CGImage_INTERNAL_CONSTRUCTOR(me, var0);
null//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_getTypeID__]

    long var0 = CGImageGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_maskCreate___int_int_int_int_int_org_xmlvm_ios_CGDataProvider_float_1ARRAY_boolean]
XMLVM_VAR_IOS_REF(CGDataProvider, var6, n6);
    XMLVM_VAR_FLOAT_ARRAY(a7, n7); 
    
    CGImageRef var0 = CGImageMaskCreate(n1,n2,n3,n4,n5,var6,a7->fields.org_xmlvm_runtime_XMLVMArray.array_,n8);
        XMLVM_VAR_INIT_REF(CGImage, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_createCopy__]

    XMLVM_VAR_CFTHIZ;
    
    CGImageRef var0 = CGImageCreateCopy(thiz);
        XMLVM_VAR_INIT_REF(CGImage, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_createWithJPEGDataProvider___org_xmlvm_ios_CGDataProvider_float_1ARRAY_boolean_int]
XMLVM_VAR_IOS_REF(CGDataProvider, var1, n1);
    XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    
    CGImageRef var0 = CGImageCreateWithJPEGDataProvider(var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3,n4);
        XMLVM_VAR_INIT_REF(CGImage, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_createWithPNGDataProvider___org_xmlvm_ios_CGDataProvider_float_1ARRAY_boolean_int]
XMLVM_VAR_IOS_REF(CGDataProvider, var1, n1);
    XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    
    CGImageRef var0 = CGImageCreateWithPNGDataProvider(var1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3,n4);
        XMLVM_VAR_INIT_REF(CGImage, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_createWithImageInRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_CFTHIZ;
    
    CGImageRef var0 = CGImageCreateWithImageInRect(thiz,toCGRect(n1));
        XMLVM_VAR_INIT_REF(CGImage, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_createWithMask___org_xmlvm_ios_CGImage]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGImage, var1, n1);
    
    CGImageRef var0 = CGImageCreateWithMask(thiz,var1);
        XMLVM_VAR_INIT_REF(CGImage, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_createWithMaskingColors___float_1ARRAY]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_FLOAT_ARRAY(a1, n1); 
    
    CGImageRef var0 = CGImageCreateWithMaskingColors(thiz,a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
        XMLVM_VAR_INIT_REF(CGImage, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_createCopyWithColorSpace___org_xmlvm_ios_CGColorSpace]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGColorSpace, var1, n1);
    
    CGImageRef var0 = CGImageCreateCopyWithColorSpace(thiz,var1);
        XMLVM_VAR_INIT_REF(CGImage, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_retain__]

    XMLVM_VAR_CFTHIZ;
    
    CGImageRef var0 = CGImageRetain(thiz);
        XMLVM_VAR_INIT_REF(CGImage, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_release__]

    XMLVM_VAR_CFTHIZ;
    CGImageRelease(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_isMask__]

    XMLVM_VAR_CFTHIZ;
    
    BOOL var0 = CGImageIsMask(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_getWidth__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGImageGetWidth(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_getHeight__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGImageGetHeight(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_getBitsPerComponent__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGImageGetBitsPerComponent(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_getBitsPerPixel__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGImageGetBitsPerPixel(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_getBytesPerRow__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGImageGetBytesPerRow(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_getColorSpace__]

    XMLVM_VAR_CFTHIZ;
    
    CGColorSpaceRef var0 = CGImageGetColorSpace(thiz);
        XMLVM_VAR_INIT_REF(CGColorSpace, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_getAlphaInfo__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGImageGetAlphaInfo(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_getDataProvider__]

    XMLVM_VAR_CFTHIZ;
    
    CGDataProviderRef var0 = CGImageGetDataProvider(thiz);
        XMLVM_VAR_INIT_REF(CGDataProvider, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_getDecode__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_getShouldInterpolate__]

    XMLVM_VAR_CFTHIZ;
    
    BOOL var0 = CGImageGetShouldInterpolate(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_getRenderingIntent__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGImageGetRenderingIntent(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImage_getBitmapInfo__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGImageGetBitmapInfo(thiz);
    
    return var0;
//XMLVM_END_WRAPPER
