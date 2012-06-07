
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIActionSheet (UIActionSheetWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIActionSheet (UIActionSheetWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIActionSheet.classInitialized)
        __INIT_org_xmlvm_ios_UIActionSheet();
}
@end

void org_xmlvm_ios_UIActionSheet_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIActionSheet class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIActionSheet();
        org_xmlvm_ios_UIActionSheet_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIActionSheet]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIActionSheet]
__DELETE_org_xmlvm_ios_UIView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet___INIT____java_lang_String_org_xmlvm_ios_UIActionSheetDelegate_java_lang_String_java_lang_String_org_xmlvm_ios_String...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet___INIT___]
    UIActionSheet* var0 = [[UIActionSheet alloc ] init];
    org_xmlvm_ios_UIActionSheet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet___INIT____org_xmlvm_ios_CGRect]

    UIActionSheet* var0 = [[UIActionSheet alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UIActionSheet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet___INIT___]
    UIActionSheet* var0 = [[UIActionSheet alloc ] init];
    org_xmlvm_ios_UIActionSheet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet___INIT___]
    UIActionSheet* var0 = [[UIActionSheet alloc ] init];
    org_xmlvm_ios_UIActionSheet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet___INIT___]

    UIActionSheet* var0 = [[UIActionSheet alloc]init];

    org_xmlvm_ios_UIActionSheet_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_setDelegate___org_xmlvm_ios_UIActionSheetDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_UIActionSheetDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UIActionSheetDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_getTitle__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz title];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_setTitle___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setTitle:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_getActionSheetStyle__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz actionSheetStyle];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_setActionSheetStyle___int]

    XMLVM_VAR_THIZ;
    [thiz setActionSheetStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_addButtonWithTitle___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  addButtonWithTitle:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_buttonTitleAtIndex___int]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  buttonTitleAtIndex:n1];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_getNumberOfButtons__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfButtons];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_getCancelButtonIndex__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz cancelButtonIndex];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_setCancelButtonIndex___int]

    XMLVM_VAR_THIZ;
    [thiz setCancelButtonIndex:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_getDestructiveButtonIndex__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz destructiveButtonIndex];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_setDestructiveButtonIndex___int]

    XMLVM_VAR_THIZ;
    [thiz setDestructiveButtonIndex:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_getFirstOtherButtonIndex__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz firstOtherButtonIndex];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_isVisible__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isVisible];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_showFromToolbar___org_xmlvm_ios_UIToolbar]

    XMLVM_VAR_THIZ;
    [thiz  showFromToolbar:(UIToolbar*) (((org_xmlvm_ios_UIToolbar*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_showFromTabBar___org_xmlvm_ios_UITabBar]

    XMLVM_VAR_THIZ;
    [thiz  showFromTabBar:(UITabBar*) (((org_xmlvm_ios_UITabBar*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_showFromBarButtonItem___org_xmlvm_ios_UIBarButtonItem_boolean]

    XMLVM_VAR_THIZ;
    [thiz  showFromBarButtonItem:(UIBarButtonItem*) (((org_xmlvm_ios_UIBarButtonItem*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_showFromRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_UIView_boolean]

    XMLVM_VAR_THIZ;
    [thiz  showFromRect:toCGRect(n1) inView:(UIView*) (((org_xmlvm_ios_UIView*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) animated:n3];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_showInView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz  showInView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIActionSheet_dismissWithClickedButtonIndex___int_boolean]

    XMLVM_VAR_THIZ;
    [thiz  dismissWithClickedButtonIndex:n1 animated:n2];

    
//XMLVM_END_WRAPPER
