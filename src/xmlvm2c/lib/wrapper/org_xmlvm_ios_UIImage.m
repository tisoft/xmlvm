
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIImage (UIImageWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIImage (UIImageWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIImage.classInitialized)
        __INIT_org_xmlvm_ios_UIImage();
}
@end


            
@interface CroppedImageArgs : NSObject {
@public    CGRect cropRect;
@public    UIImage* croppedImage;
}
@end

@implementation CroppedImageArgs
@end

@interface UIImage(cat_UIImage)
@end

@implementation UIImage(cat_UIImage)
/*
 * We perform the cropping on the main thread in case the cropping is
 * done in a thread. Quartz is not thread-safe.
 */
- (void) cropImage: (id) args
{
    CGRect cropRect = ((CroppedImageArgs*) args)->cropRect;
    CGSize size = cropRect.size;
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGImageRef subImage = CGImageCreateWithImageInRect([self CGImage], cropRect);
    CGRect myRect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    CGContextScaleCTM(context, 1.0f, -1.0f);
    CGContextTranslateCTM(context, 0.0f, -size.height);
    CGContextFlush(context);
    CGContextDrawImage(context, myRect, subImage);
    CGContextFlush(context);
    UIImage* croppedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [croppedImage retain];
    CGImageRelease(subImage);
    ((CroppedImageArgs *) args)->croppedImage = croppedImage;
}
@end

        void org_xmlvm_ios_UIImage_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIImage class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIImage();
        org_xmlvm_ios_UIImage_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIImage]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIImage]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage___INIT____java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    UIImage* var0 = [[UIImage alloc] initWithContentsOfFile:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_UIImage_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage___INIT____org_xmlvm_ios_NSData]

    UIImage* var0 = [[UIImage alloc] initWithData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_UIImage_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage___INIT____org_xmlvm_ios_CGImage]
XMLVM_VAR_IOS_REF(CGImage, var1, n1);
    
    UIImage* var0 = [[UIImage alloc] initWithCGImage:var1];
    org_xmlvm_ios_UIImage_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage___INIT____org_xmlvm_ios_CGImage_float_int]
XMLVM_VAR_IOS_REF(CGImage, var1, n1);
    
    UIImage* var0 = [[UIImage alloc] initWithCGImage:var1 scale:n2 orientation:n3];
    org_xmlvm_ios_UIImage_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage___INIT___]
    UIImage* var0 = [[UIImage alloc ] init];
    org_xmlvm_ios_UIImage_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage___INIT___]

    UIImage* var0 = [[UIImage alloc]init];

    org_xmlvm_ios_UIImage_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_imageNamed___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    UIImage* var0 =  [UIImage  imageNamed:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_imageWithContentsOfFile___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    UIImage* var0 =  [UIImage  imageWithContentsOfFile:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_imageWithData___org_xmlvm_ios_NSData]

    UIImage* var0 =  [UIImage  imageWithData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_imageWithCGImage___org_xmlvm_ios_CGImage]
XMLVM_VAR_IOS_REF(CGImage, var1, n1);
    
    UIImage* var0 =  [UIImage  imageWithCGImage:var1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_imageWithCGImage___org_xmlvm_ios_CGImage_float_int]
XMLVM_VAR_IOS_REF(CGImage, var1, n1);
    
    UIImage* var0 =  [UIImage  imageWithCGImage:var1 scale:n2 orientation:n3];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_getSize__]

    XMLVM_VAR_THIZ;
    CGSize var0 = [thiz size];
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_getCGImage__]

    XMLVM_VAR_THIZ;
    CGImageRef var0 = [thiz CGImage];
    XMLVM_VAR_INIT_REF(CGImage, refVar0, var0);
    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_getImageOrientation__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz imageOrientation];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_getScale__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz scale];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_drawAtPoint___org_xmlvm_ios_CGPoint]

    XMLVM_VAR_THIZ;
    [thiz  drawAtPoint:toCGPoint(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_drawAtPoint___org_xmlvm_ios_CGPoint_int_float]

    XMLVM_VAR_THIZ;
    [thiz  drawAtPoint:toCGPoint(n1) blendMode:n2 alpha:n3];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_drawInRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz  drawInRect:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_drawInRect___org_xmlvm_ios_CGRect_int_float]

    XMLVM_VAR_THIZ;
    [thiz  drawInRect:toCGRect(n1) blendMode:n2 alpha:n3];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_drawAsPatternInRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz  drawAsPatternInRect:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_stretchableImageWithLeftCapWidth___int_int]

    XMLVM_VAR_THIZ;
    
    UIImage* var0 = [thiz  stretchableImageWithLeftCapWidth:n1 topCapHeight:n2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_getLeftCapWidth__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz leftCapWidth];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_getTopCapHeight__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz topCapHeight];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_pNGRepresentation__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_jPEGRepresentation___float]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_writeToSavedPhotosAlbum___java_lang_Object_org_xmlvm_ios_SEL_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImage_cropImage___int_int_int_int]

                
    XMLVM_VAR_THIZ;
    XMLVM_VAR_INT(x, n1);
    XMLVM_VAR_INT(y, n2);
    XMLVM_VAR_INT(width, n3);
    XMLVM_VAR_INT(height, n4);
    
    CroppedImageArgs* args = [[CroppedImageArgs alloc] init];
    args->cropRect = CGRectMake(x, y, width, height);
    [thiz performSelectorOnMainThread:@selector(cropImage:) withObject:args waitUntilDone:TRUE];
    UIImage* croppedImage = args->croppedImage;
    [args release];
    JAVA_OBJECT obj = xmlvm_get_associated_c_object(croppedImage);
    [croppedImage release];
    return obj;

            
//XMLVM_END_WRAPPER