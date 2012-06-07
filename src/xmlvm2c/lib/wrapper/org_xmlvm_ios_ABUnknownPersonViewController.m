
//XMLVM_BEGIN_IMPLEMENTATION
@interface ABUnknownPersonViewController (ABUnknownPersonViewControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation ABUnknownPersonViewController (ABUnknownPersonViewControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_ABUnknownPersonViewController.classInitialized)
        __INIT_org_xmlvm_ios_ABUnknownPersonViewController();
}
@end

void org_xmlvm_ios_ABUnknownPersonViewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIViewController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [ABUnknownPersonViewController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_ABUnknownPersonViewController();
        org_xmlvm_ios_ABUnknownPersonViewController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_ABUnknownPersonViewController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_ABUnknownPersonViewController]
__DELETE_org_xmlvm_ios_UIViewController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController___INIT___]
    ABUnknownPersonViewController* var0 = [[ABUnknownPersonViewController alloc ] init];
    org_xmlvm_ios_ABUnknownPersonViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    ABUnknownPersonViewController* var0 = [[ABUnknownPersonViewController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_ABUnknownPersonViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController___INIT___]
    ABUnknownPersonViewController* var0 = [[ABUnknownPersonViewController alloc ] init];
    org_xmlvm_ios_ABUnknownPersonViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController___INIT___]
    ABUnknownPersonViewController* var0 = [[ABUnknownPersonViewController alloc ] init];
    org_xmlvm_ios_ABUnknownPersonViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController___INIT___]

    ABUnknownPersonViewController* var0 = [[ABUnknownPersonViewController alloc]init];

    org_xmlvm_ios_ABUnknownPersonViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController_getUnknownPersonViewDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController_setUnknownPersonViewDelegate___org_xmlvm_ios_ABUnknownPersonViewControllerDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_ABUnknownPersonViewControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_ABUnknownPersonViewControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setUnknownPersonViewDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController_getAddressBook__]

    XMLVM_VAR_THIZ;
    ABAddressBook* var0 = [thiz addressBook];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController_setAddressBook___org_xmlvm_ios_ABAddressBook]

    XMLVM_VAR_THIZ;
    [thiz setAddressBook:(ABAddressBook*) (((org_xmlvm_ios_ABAddressBook*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController_getDisplayedPerson__]

    XMLVM_VAR_THIZ;
    ABRecord* var0 = [thiz displayedPerson];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController_setDisplayedPerson___org_xmlvm_ios_ABRecord]

    XMLVM_VAR_THIZ;
    [thiz setDisplayedPerson:(ABRecord*) (((org_xmlvm_ios_ABRecord*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController_getAlternateName__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz alternateName];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController_setAlternateName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setAlternateName:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController_getMessage__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz message];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController_setMessage___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setMessage:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController_getAllowsActions__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz allowsActions];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController_setAllowsActions___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAllowsActions:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController_getAllowsAddingToAddressBook__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz allowsAddingToAddressBook];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABUnknownPersonViewController_setAllowsAddingToAddressBook___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAllowsAddingToAddressBook:n1];

    
//XMLVM_END_WRAPPER
