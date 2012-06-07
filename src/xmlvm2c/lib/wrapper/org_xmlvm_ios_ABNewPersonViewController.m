
//XMLVM_BEGIN_IMPLEMENTATION
@interface ABNewPersonViewController (ABNewPersonViewControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation ABNewPersonViewController (ABNewPersonViewControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_ABNewPersonViewController.classInitialized)
        __INIT_org_xmlvm_ios_ABNewPersonViewController();
}
@end

void org_xmlvm_ios_ABNewPersonViewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIViewController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [ABNewPersonViewController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_ABNewPersonViewController();
        org_xmlvm_ios_ABNewPersonViewController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_ABNewPersonViewController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_ABNewPersonViewController]
__DELETE_org_xmlvm_ios_UIViewController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABNewPersonViewController___INIT___]
    ABNewPersonViewController* var0 = [[ABNewPersonViewController alloc ] init];
    org_xmlvm_ios_ABNewPersonViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABNewPersonViewController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    ABNewPersonViewController* var0 = [[ABNewPersonViewController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_ABNewPersonViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABNewPersonViewController___INIT___]
    ABNewPersonViewController* var0 = [[ABNewPersonViewController alloc ] init];
    org_xmlvm_ios_ABNewPersonViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABNewPersonViewController___INIT___]
    ABNewPersonViewController* var0 = [[ABNewPersonViewController alloc ] init];
    org_xmlvm_ios_ABNewPersonViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABNewPersonViewController___INIT___]

    ABNewPersonViewController* var0 = [[ABNewPersonViewController alloc]init];

    org_xmlvm_ios_ABNewPersonViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABNewPersonViewController_getNewPersonViewDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABNewPersonViewController_setNewPersonViewDelegate___org_xmlvm_ios_ABNewPersonViewControllerDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_ABNewPersonViewControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_ABNewPersonViewControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setNewPersonViewDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABNewPersonViewController_getAddressBook__]

    XMLVM_VAR_THIZ;
    ABAddressBook* var0 = [thiz addressBook];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABNewPersonViewController_setAddressBook___org_xmlvm_ios_ABAddressBook]

    XMLVM_VAR_THIZ;
    [thiz setAddressBook:(ABAddressBook*) (((org_xmlvm_ios_ABAddressBook*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABNewPersonViewController_getDisplayedPerson__]

    XMLVM_VAR_THIZ;
    ABRecord* var0 = [thiz displayedPerson];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABNewPersonViewController_setDisplayedPerson___org_xmlvm_ios_ABRecord]

    XMLVM_VAR_THIZ;
    [thiz setDisplayedPerson:(ABRecord*) (((org_xmlvm_ios_ABRecord*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABNewPersonViewController_getParentGroup__]

    XMLVM_VAR_THIZ;
    ABRecord* var0 = [thiz parentGroup];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABNewPersonViewController_setParentGroup___org_xmlvm_ios_ABRecord]

    XMLVM_VAR_THIZ;
    [thiz setParentGroup:(ABRecord*) (((org_xmlvm_ios_ABRecord*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
