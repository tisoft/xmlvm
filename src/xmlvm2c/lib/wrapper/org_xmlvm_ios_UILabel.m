
//XMLVM_BEGIN_IMPLEMENTATION
@interface UILabel (UILabelWrapperCategory)
+ (void) initialize_class;
@end

@implementation UILabel (UILabelWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UILabel.classInitialized)
        __INIT_org_xmlvm_ios_UILabel();
}
@end

void org_xmlvm_ios_UILabel_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UILabel class] || ([NSStringFromClass([obj class]) isEqual:@"UITableViewLabel"])) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UILabel();
        org_xmlvm_ios_UILabel_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UILabel]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UILabel]
__DELETE_org_xmlvm_ios_UIView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel___INIT___]
    UILabel* var0 = [[UILabel alloc ] init];
    org_xmlvm_ios_UILabel_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel___INIT____org_xmlvm_ios_CGRect]

    UILabel* var0 = [[UILabel alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UILabel_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel___INIT___]
    UILabel* var0 = [[UILabel alloc ] init];
    org_xmlvm_ios_UILabel_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel___INIT___]
    UILabel* var0 = [[UILabel alloc ] init];
    org_xmlvm_ios_UILabel_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel___INIT___]

    UILabel* var0 = [[UILabel alloc]init];

    org_xmlvm_ios_UILabel_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_getText__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz text];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_setText___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setText:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_getFont__]

    XMLVM_VAR_THIZ;
    UIFont* var0 = [thiz font];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_setFont___org_xmlvm_ios_UIFont]

    XMLVM_VAR_THIZ;
    [thiz setFont:(UIFont*) (((org_xmlvm_ios_UIFont*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_getTextColor__]

    XMLVM_VAR_THIZ;
    UIColor* var0 = [thiz textColor];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_setTextColor___org_xmlvm_ios_UIColor]

    XMLVM_VAR_THIZ;
    [thiz setTextColor:(UIColor*) (((org_xmlvm_ios_UIColor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_getShadowColor__]

    XMLVM_VAR_THIZ;
    UIColor* var0 = [thiz shadowColor];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_setShadowColor___org_xmlvm_ios_UIColor]

    XMLVM_VAR_THIZ;
    [thiz setShadowColor:(UIColor*) (((org_xmlvm_ios_UIColor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_getShadowOffset__]

    XMLVM_VAR_THIZ;
    CGSize var0 = [thiz shadowOffset];
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_setShadowOffset___org_xmlvm_ios_CGSize]

    XMLVM_VAR_THIZ;
    [thiz setShadowOffset:toCGSize(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_getTextAlignment__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz textAlignment];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_setTextAlignment___int]

    XMLVM_VAR_THIZ;
    [thiz setTextAlignment:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_getLineBreakMode__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz lineBreakMode];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_setLineBreakMode___int]

    XMLVM_VAR_THIZ;
    [thiz setLineBreakMode:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_getHighlightedTextColor__]

    XMLVM_VAR_THIZ;
    UIColor* var0 = [thiz highlightedTextColor];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_setHighlightedTextColor___org_xmlvm_ios_UIColor]

    XMLVM_VAR_THIZ;
    [thiz setHighlightedTextColor:(UIColor*) (((org_xmlvm_ios_UIColor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_isHighlighted__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isHighlighted];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_setHighlighted___boolean]

    XMLVM_VAR_THIZ;
    [thiz setHighlighted:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_isUserInteractionEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isUserInteractionEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_setUserInteractionEnabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setUserInteractionEnabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_isEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_setEnabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setEnabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_getNumberOfLines__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfLines];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_setNumberOfLines___int]

    XMLVM_VAR_THIZ;
    [thiz setNumberOfLines:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_getAdjustsFontSizeToFitWidth__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz adjustsFontSizeToFitWidth];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_setAdjustsFontSizeToFitWidth___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAdjustsFontSizeToFitWidth:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_getMinimumFontSize__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz minimumFontSize];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_setMinimumFontSize___float]

    XMLVM_VAR_THIZ;
    [thiz setMinimumFontSize:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_getBaselineAdjustment__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz baselineAdjustment];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_setBaselineAdjustment___int]

    XMLVM_VAR_THIZ;
    [thiz setBaselineAdjustment:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_textRectForBounds___org_xmlvm_ios_CGRect_int]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  textRectForBounds:toCGRect(n1) limitedToNumberOfLines:n2];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UILabel_drawTextInRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz  drawTextInRect:toCGRect(n1)];

    
//XMLVM_END_WRAPPER
