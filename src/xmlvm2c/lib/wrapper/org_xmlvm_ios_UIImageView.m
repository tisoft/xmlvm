
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIImageView (UIImageViewWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIImageView (UIImageViewWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIImageView.classInitialized)
        __INIT_org_xmlvm_ios_UIImageView();
}
@end

void org_xmlvm_ios_UIImageView_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIImageView class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIImageView();
        org_xmlvm_ios_UIImageView_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIImageView]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIImageView]
__DELETE_org_xmlvm_ios_UIView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView___INIT____org_xmlvm_ios_UIImage]

    UIImageView* var0 = [[UIImageView alloc] initWithImage:(UIImage*) (((org_xmlvm_ios_UIImage*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_UIImageView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView___INIT____org_xmlvm_ios_UIImage_org_xmlvm_ios_UIImage]

    UIImageView* var0 = [[UIImageView alloc] initWithImage:(UIImage*) (((org_xmlvm_ios_UIImage*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) highlightedImage:(UIImage*) (((org_xmlvm_ios_UIImage*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_UIImageView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView___INIT___]
    UIImageView* var0 = [[UIImageView alloc ] init];
    org_xmlvm_ios_UIImageView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView___INIT____org_xmlvm_ios_CGRect]

    UIImageView* var0 = [[UIImageView alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UIImageView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView___INIT___]
    UIImageView* var0 = [[UIImageView alloc ] init];
    org_xmlvm_ios_UIImageView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView___INIT___]
    UIImageView* var0 = [[UIImageView alloc ] init];
    org_xmlvm_ios_UIImageView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView___INIT___]

    UIImageView* var0 = [[UIImageView alloc]init];

    org_xmlvm_ios_UIImageView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_getImage__]

    XMLVM_VAR_THIZ;
    UIImage* var0 = [thiz image];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_setImage___org_xmlvm_ios_UIImage]

    XMLVM_VAR_THIZ;
    [thiz setImage:(UIImage*) (((org_xmlvm_ios_UIImage*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_getHighlightedImage__]

    XMLVM_VAR_THIZ;
    UIImage* var0 = [thiz highlightedImage];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_setHighlightedImage___org_xmlvm_ios_UIImage]

    XMLVM_VAR_THIZ;
    [thiz setHighlightedImage:(UIImage*) (((org_xmlvm_ios_UIImage*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_isUserInteractionEnabled__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isUserInteractionEnabled];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_setUserInteractionEnabled___boolean]

    XMLVM_VAR_THIZ;
    [thiz setUserInteractionEnabled:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_isHighlighted__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isHighlighted];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_setHighlighted___boolean]

    XMLVM_VAR_THIZ;
    [thiz setHighlighted:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_getAnimationImages__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz animationImages];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_setAnimationImages___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setAnimationImages:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_getHighlightedAnimationImages__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz highlightedAnimationImages];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_setHighlightedAnimationImages___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setHighlightedAnimationImages:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_getAnimationDuration__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz animationDuration];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_setAnimationDuration___double]

    XMLVM_VAR_THIZ;
    [thiz setAnimationDuration:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_getAnimationRepeatCount__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz animationRepeatCount];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_setAnimationRepeatCount___int]

    XMLVM_VAR_THIZ;
    [thiz setAnimationRepeatCount:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_startAnimating__]

    XMLVM_VAR_THIZ;
    [thiz startAnimating];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_stopAnimating__]

    XMLVM_VAR_THIZ;
    [thiz stopAnimating];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIImageView_isAnimating__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isAnimating];

    return var0;
//XMLVM_END_WRAPPER
