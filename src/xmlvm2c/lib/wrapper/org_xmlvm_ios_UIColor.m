
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIColor (UIColorWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIColor (UIColorWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIColor.classInitialized)
        __INIT_org_xmlvm_ios_UIColor();
}
@end

void org_xmlvm_ios_UIColor_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIColor class] || ([NSStringFromClass([obj class]) isEqual:@"UIDeviceRGBColor"]) || ([NSStringFromClass([obj class]) isEqual:@"UICachedDeviceWhiteColor"])) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIColor();
        org_xmlvm_ios_UIColor_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIColor]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIColor]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor___INIT____float_float]

    UIColor* var0 = [[UIColor alloc] initWithWhite:n1 alpha:n2];
    org_xmlvm_ios_UIColor_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor___INIT____float_float_float_float_org_xmlvm_ios_UIColor_Colorspace]

    if((org_xmlvm_ios_UIColor_Colorspace*) n5 == org_xmlvm_ios_UIColor_Colorspace_GET_RGBA())
    {
    UIColor* var0 = [[UIColor alloc] initWithHue:n1 saturation:n2 brightness:n3 alpha:n4];
    org_xmlvm_ios_UIColor_INTERNAL_CONSTRUCTOR(me, var0);
    }

    if((org_xmlvm_ios_UIColor_Colorspace*) n5 == org_xmlvm_ios_UIColor_Colorspace_GET_HSBA())
    {
    UIColor* var0 = [[UIColor alloc] initWithRed:n1 green:n2 blue:n3 alpha:n4];
    org_xmlvm_ios_UIColor_INTERNAL_CONSTRUCTOR(me, var0);
    }
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor___INIT____org_xmlvm_ios_CGColor]
XMLVM_VAR_IOS_REF(CGColor, var1, n1);
    
    UIColor* var0 = [[UIColor alloc] initWithCGColor:var1];
    org_xmlvm_ios_UIColor_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor___INIT____org_xmlvm_ios_UIImage]

    UIColor* var0 = [[UIColor alloc] initWithPatternImage:(UIImage*) (((org_xmlvm_ios_UIImage*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_UIColor_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor___INIT___]
    UIColor* var0 = [[UIColor alloc ] init];
    org_xmlvm_ios_UIColor_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor___INIT___]

    UIColor* var0 = [[UIColor alloc]init];

    org_xmlvm_ios_UIColor_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_colorWithWhite___float_float]

    UIColor* var0 =  [UIColor  colorWithWhite:n1 alpha:n2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_colorWithHue___float_float_float_float]

    UIColor* var0 =  [UIColor  colorWithHue:n1 saturation:n2 brightness:n3 alpha:n4];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_colorWithRed___float_float_float_float]

    UIColor* var0 =  [UIColor  colorWithRed:n1 green:n2 blue:n3 alpha:n4];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_colorWithCGColor___org_xmlvm_ios_CGColor]
XMLVM_VAR_IOS_REF(CGColor, var1, n1);
    
    UIColor* var0 =  [UIColor  colorWithCGColor:var1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_colorWithPatternImage___org_xmlvm_ios_UIImage]

    UIColor* var0 =  [UIColor  colorWithPatternImage:(UIImage*) (((org_xmlvm_ios_UIImage*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_blackColor__]

    UIColor* var0 =  [UIColor blackColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_darkGrayColor__]

    UIColor* var0 =  [UIColor darkGrayColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_lightGrayColor__]

    UIColor* var0 =  [UIColor lightGrayColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_whiteColor__]

    UIColor* var0 =  [UIColor whiteColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_grayColor__]

    UIColor* var0 =  [UIColor grayColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_redColor__]

    UIColor* var0 =  [UIColor redColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_greenColor__]

    UIColor* var0 =  [UIColor greenColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_blueColor__]

    UIColor* var0 =  [UIColor blueColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_cyanColor__]

    UIColor* var0 =  [UIColor cyanColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_yellowColor__]

    UIColor* var0 =  [UIColor yellowColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_magentaColor__]

    UIColor* var0 =  [UIColor magentaColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_orangeColor__]

    UIColor* var0 =  [UIColor orangeColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_purpleColor__]

    UIColor* var0 =  [UIColor purpleColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_brownColor__]

    UIColor* var0 =  [UIColor brownColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_clearColor__]

    UIColor* var0 =  [UIColor clearColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_set__]

    XMLVM_VAR_THIZ;
    [thiz set];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_setFill__]

    XMLVM_VAR_THIZ;
    [thiz setFill];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_setStroke__]

    XMLVM_VAR_THIZ;
    [thiz setStroke];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_colorWithAlphaComponent___float]

    XMLVM_VAR_THIZ;
    
    UIColor* var0 = [thiz  colorWithAlphaComponent:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_getCGColor__]

    XMLVM_VAR_THIZ;
    CGColorRef var0 = [thiz CGColor];
    XMLVM_VAR_INIT_REF(CGColor, refVar0, var0);
    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_lightTextColor__]

    UIColor* var0 =  [UIColor lightTextColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_darkTextColor__]

    UIColor* var0 =  [UIColor darkTextColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_groupTableViewBackgroundColor__]

    UIColor* var0 =  [UIColor groupTableViewBackgroundColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_viewFlipsideBackgroundColor__]

    UIColor* var0 =  [UIColor viewFlipsideBackgroundColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIColor_scrollViewTexturedBackgroundColor__]

    UIColor* var0 =  [UIColor scrollViewTexturedBackgroundColor];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
