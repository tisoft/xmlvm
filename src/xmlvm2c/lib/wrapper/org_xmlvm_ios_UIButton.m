
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIButton (UIButtonWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIButton (UIButtonWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIButton.classInitialized)
        __INIT_org_xmlvm_ios_UIButton();
}
@end

void org_xmlvm_ios_UIButton_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIControl_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIButton class] || ([NSStringFromClass([obj class]) isEqual:@"UIRoundedRectButton"])) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIButton();
        org_xmlvm_ios_UIButton_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIButton]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIButton]
__DELETE_org_xmlvm_ios_UIControl(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton___INIT___]
    UIButton* var0 = [[UIButton alloc ] init];
    org_xmlvm_ios_UIButton_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton___INIT___]
    UIButton* var0 = [[UIButton alloc ] init];
    org_xmlvm_ios_UIButton_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton___INIT____org_xmlvm_ios_CGRect]

    UIButton* var0 = [[UIButton alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UIButton_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton___INIT___]
    UIButton* var0 = [[UIButton alloc ] init];
    org_xmlvm_ios_UIButton_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton___INIT___]
    UIButton* var0 = [[UIButton alloc ] init];
    org_xmlvm_ios_UIButton_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton___INIT___]

    UIButton* var0 = [[UIButton alloc]init];

    org_xmlvm_ios_UIButton_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_buttonWithType___int]

    UIButton* var0 =  [UIButton  buttonWithType:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getContentEdgeInsets__]

    XMLVM_VAR_THIZ;
    UIEdgeInsets var0 = [thiz contentEdgeInsets];
    
    return fromUIEdgeInsets(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_setContentEdgeInsets___org_xmlvm_ios_UIEdgeInsets]

    XMLVM_VAR_THIZ;
    [thiz setContentEdgeInsets:toUIEdgeInsets(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getTitleEdgeInsets__]

    XMLVM_VAR_THIZ;
    UIEdgeInsets var0 = [thiz titleEdgeInsets];
    
    return fromUIEdgeInsets(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_setTitleEdgeInsets___org_xmlvm_ios_UIEdgeInsets]

    XMLVM_VAR_THIZ;
    [thiz setTitleEdgeInsets:toUIEdgeInsets(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getReversesTitleShadowWhenHighlighted__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz reversesTitleShadowWhenHighlighted];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_setReversesTitleShadowWhenHighlighted___boolean]

    XMLVM_VAR_THIZ;
    [thiz setReversesTitleShadowWhenHighlighted:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getImageEdgeInsets__]

    XMLVM_VAR_THIZ;
    UIEdgeInsets var0 = [thiz imageEdgeInsets];
    
    return fromUIEdgeInsets(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_setImageEdgeInsets___org_xmlvm_ios_UIEdgeInsets]

    XMLVM_VAR_THIZ;
    [thiz setImageEdgeInsets:toUIEdgeInsets(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getAdjustsImageWhenHighlighted__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz adjustsImageWhenHighlighted];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_setAdjustsImageWhenHighlighted___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAdjustsImageWhenHighlighted:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getAdjustsImageWhenDisabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz adjustsImageWhenDisabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_setAdjustsImageWhenDisabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAdjustsImageWhenDisabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getShowsTouchWhenHighlighted__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz showsTouchWhenHighlighted];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_setShowsTouchWhenHighlighted___boolean]

    XMLVM_VAR_THIZ;
    [thiz setShowsTouchWhenHighlighted:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getButtonType__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz buttonType];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_setTitle___java_lang_String_int]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setTitle:ObjCVar1 forState:n2];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_setTitleColor___org_xmlvm_ios_UIColor_int]

    XMLVM_VAR_THIZ;
    [thiz  setTitleColor:(UIColor*) (((org_xmlvm_ios_UIColor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forState:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_setTitleShadowColor___org_xmlvm_ios_UIColor_int]

    XMLVM_VAR_THIZ;
    [thiz  setTitleShadowColor:(UIColor*) (((org_xmlvm_ios_UIColor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forState:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_setImage___org_xmlvm_ios_UIImage_int]

    XMLVM_VAR_THIZ;
    [thiz  setImage:(UIImage*) (((org_xmlvm_ios_UIImage*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forState:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_setBackgroundImage___org_xmlvm_ios_UIImage_int]

    XMLVM_VAR_THIZ;
    [thiz  setBackgroundImage:(UIImage*) (((org_xmlvm_ios_UIImage*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forState:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_titleForState___int]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  titleForState:n1];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_titleColorForState___int]

    XMLVM_VAR_THIZ;
    
    UIColor* var0 = [thiz  titleColorForState:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_titleShadowColorForState___int]

    XMLVM_VAR_THIZ;
    
    UIColor* var0 = [thiz  titleShadowColorForState:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_imageForState___int]

    XMLVM_VAR_THIZ;
    
    UIImage* var0 = [thiz  imageForState:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_backgroundImageForState___int]

    XMLVM_VAR_THIZ;
    
    UIImage* var0 = [thiz  backgroundImageForState:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getCurrentTitle__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz currentTitle];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getCurrentTitleColor__]

    XMLVM_VAR_THIZ;
    UIColor* var0 = [thiz currentTitleColor];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getCurrentTitleShadowColor__]

    XMLVM_VAR_THIZ;
    UIColor* var0 = [thiz currentTitleShadowColor];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getCurrentImage__]

    XMLVM_VAR_THIZ;
    UIImage* var0 = [thiz currentImage];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getCurrentBackgroundImage__]

    XMLVM_VAR_THIZ;
    UIImage* var0 = [thiz currentBackgroundImage];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getTitleLabel__]

    XMLVM_VAR_THIZ;
    UILabel* var0 = [thiz titleLabel];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getImageView__]

    XMLVM_VAR_THIZ;
    UIImageView* var0 = [thiz imageView];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_backgroundRectForBounds___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  backgroundRectForBounds:toCGRect(n1)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_contentRectForBounds___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  contentRectForBounds:toCGRect(n1)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_titleRectForContentRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  titleRectForContentRect:toCGRect(n1)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_imageRectForContentRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  imageRectForContentRect:toCGRect(n1)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getFont__]

    XMLVM_VAR_THIZ;
    UIFont* var0 = [thiz font];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_setFont___org_xmlvm_ios_UIFont]

    XMLVM_VAR_THIZ;
    [thiz setFont:(UIFont*) (((org_xmlvm_ios_UIFont*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getLineBreakMode__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz lineBreakMode];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_setLineBreakMode___int]

    XMLVM_VAR_THIZ;
    [thiz setLineBreakMode:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_getTitleShadowOffset__]

    XMLVM_VAR_THIZ;
    CGSize var0 = [thiz titleShadowOffset];
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIButton_setTitleShadowOffset___org_xmlvm_ios_CGSize]

    XMLVM_VAR_THIZ;
    [thiz setTitleShadowOffset:toCGSize(n1)];

    
//XMLVM_END_WRAPPER
