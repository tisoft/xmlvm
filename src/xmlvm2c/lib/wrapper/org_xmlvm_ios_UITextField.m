
//XMLVM_BEGIN_IMPLEMENTATION
@interface UITextField (UITextFieldWrapperCategory)
+ (void) initialize_class;
@end

@implementation UITextField (UITextFieldWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UITextField.classInitialized)
        __INIT_org_xmlvm_ios_UITextField();
}
@end

void org_xmlvm_ios_UITextField_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIControl_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UITextField class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UITextField();
        org_xmlvm_ios_UITextField_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UITextField]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UITextField]
__DELETE_org_xmlvm_ios_UIControl(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField___INIT___]
    UITextField* var0 = [[UITextField alloc ] init];
    org_xmlvm_ios_UITextField_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField___INIT___]
    UITextField* var0 = [[UITextField alloc ] init];
    org_xmlvm_ios_UITextField_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField___INIT____org_xmlvm_ios_CGRect]

    UITextField* var0 = [[UITextField alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UITextField_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField___INIT___]
    UITextField* var0 = [[UITextField alloc ] init];
    org_xmlvm_ios_UITextField_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField___INIT___]
    UITextField* var0 = [[UITextField alloc ] init];
    org_xmlvm_ios_UITextField_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField___INIT___]

    UITextField* var0 = [[UITextField alloc]init];

    org_xmlvm_ios_UITextField_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getText__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz text];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setText___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setText:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getTextColor__]

    XMLVM_VAR_THIZ;
    UIColor* var0 = [thiz textColor];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setTextColor___org_xmlvm_ios_UIColor]

    XMLVM_VAR_THIZ;
    [thiz setTextColor:(UIColor*) (((org_xmlvm_ios_UIColor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getFont__]

    XMLVM_VAR_THIZ;
    UIFont* var0 = [thiz font];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setFont___org_xmlvm_ios_UIFont]

    XMLVM_VAR_THIZ;
    [thiz setFont:(UIFont*) (((org_xmlvm_ios_UIFont*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getTextAlignment__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz textAlignment];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setTextAlignment___int]

    XMLVM_VAR_THIZ;
    [thiz setTextAlignment:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getBorderStyle__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz borderStyle];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setBorderStyle___int]

    XMLVM_VAR_THIZ;
    [thiz setBorderStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getPlaceholder__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz placeholder];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setPlaceholder___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setPlaceholder:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getClearsOnBeginEditing__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz clearsOnBeginEditing];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setClearsOnBeginEditing___boolean]

    XMLVM_VAR_THIZ;
    [thiz setClearsOnBeginEditing:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getAdjustsFontSizeToFitWidth__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz adjustsFontSizeToFitWidth];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setAdjustsFontSizeToFitWidth___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAdjustsFontSizeToFitWidth:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getMinimumFontSize__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz minimumFontSize];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setMinimumFontSize___float]

    XMLVM_VAR_THIZ;
    [thiz setMinimumFontSize:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setDelegate___org_xmlvm_ios_UITextFieldDelegate]

    XMLVM_VAR_THIZ;
    if(thiz.delegate!= nil) [thiz.delegate release];
    org_xmlvm_ios_UITextFieldDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UITextFieldDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];
    XMLVMUtil_ArrayList_add(reference_array, n1);objc_setAssociatedObject(thiz, &key, jwrapper->nativeDelegateWrapper_, OBJC_ASSOCIATION_RETAIN);
    [jwrapper->nativeDelegateWrapper_ release];
    

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getBackground__]

    XMLVM_VAR_THIZ;
    UIImage* var0 = [thiz background];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setBackground___org_xmlvm_ios_UIImage]

    XMLVM_VAR_THIZ;
    [thiz setBackground:(UIImage*) (((org_xmlvm_ios_UIImage*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getDisabledBackground__]

    XMLVM_VAR_THIZ;
    UIImage* var0 = [thiz disabledBackground];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setDisabledBackground___org_xmlvm_ios_UIImage]

    XMLVM_VAR_THIZ;
    [thiz setDisabledBackground:(UIImage*) (((org_xmlvm_ios_UIImage*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_isEditing__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isEditing];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getClearButtonMode__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz clearButtonMode];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setClearButtonMode___int]

    XMLVM_VAR_THIZ;
    [thiz setClearButtonMode:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getLeftView__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz leftView];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setLeftView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz setLeftView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getLeftViewMode__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz leftViewMode];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setLeftViewMode___int]

    XMLVM_VAR_THIZ;
    [thiz setLeftViewMode:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getRightView__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz rightView];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setRightView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz setRightView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getRightViewMode__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz rightViewMode];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setRightViewMode___int]

    XMLVM_VAR_THIZ;
    [thiz setRightViewMode:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_borderRectForBounds___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  borderRectForBounds:toCGRect(n1)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_textRectForBounds___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  textRectForBounds:toCGRect(n1)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_placeholderRectForBounds___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  placeholderRectForBounds:toCGRect(n1)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_editingRectForBounds___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  editingRectForBounds:toCGRect(n1)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_clearButtonRectForBounds___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  clearButtonRectForBounds:toCGRect(n1)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_leftViewRectForBounds___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  leftViewRectForBounds:toCGRect(n1)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_rightViewRectForBounds___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  rightViewRectForBounds:toCGRect(n1)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_drawTextInRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz  drawTextInRect:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_drawPlaceholderInRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz  drawPlaceholderInRect:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getInputView__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz inputView];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setInputView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz setInputView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getInputAccessoryView__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz inputAccessoryView];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setInputAccessoryView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz setInputAccessoryView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getAutocapitalizationType__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz autocapitalizationType];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setAutocapitalizationType___int]

    XMLVM_VAR_THIZ;
    [thiz setAutocapitalizationType:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getAutocorrectionType__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz autocorrectionType];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setAutocorrectionType___int]

    XMLVM_VAR_THIZ;
    [thiz setAutocorrectionType:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getKeyboardType__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz keyboardType];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setKeyboardType___int]

    XMLVM_VAR_THIZ;
    [thiz setKeyboardType:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getKeyboardAppearance__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz keyboardAppearance];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setKeyboardAppearance___int]

    XMLVM_VAR_THIZ;
    [thiz setKeyboardAppearance:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getReturnKeyType__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz returnKeyType];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setReturnKeyType___int]

    XMLVM_VAR_THIZ;
    [thiz setReturnKeyType:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_getEnablesReturnKeyAutomatically__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz enablesReturnKeyAutomatically];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setEnablesReturnKeyAutomatically___boolean]

    XMLVM_VAR_THIZ;
    [thiz setEnablesReturnKeyAutomatically:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_isSecureTextEntry__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isSecureTextEntry];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextField_setSecureTextEntry___boolean]

    XMLVM_VAR_THIZ;
    [thiz setSecureTextEntry:n1];

    
//XMLVM_END_WRAPPER
