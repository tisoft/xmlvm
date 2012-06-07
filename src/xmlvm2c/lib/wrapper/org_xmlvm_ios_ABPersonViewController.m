
//XMLVM_BEGIN_IMPLEMENTATION
@interface ABPersonViewController (ABPersonViewControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation ABPersonViewController (ABPersonViewControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_ABPersonViewController.classInitialized)
        __INIT_org_xmlvm_ios_ABPersonViewController();
}
@end

void org_xmlvm_ios_ABPersonViewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIViewController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [ABPersonViewController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_ABPersonViewController();
        org_xmlvm_ios_ABPersonViewController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_ABPersonViewController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_ABPersonViewController]
__DELETE_org_xmlvm_ios_UIViewController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController___INIT___]
    ABPersonViewController* var0 = [[ABPersonViewController alloc ] init];
    org_xmlvm_ios_ABPersonViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    ABPersonViewController* var0 = [[ABPersonViewController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_ABPersonViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController___INIT___]
    ABPersonViewController* var0 = [[ABPersonViewController alloc ] init];
    org_xmlvm_ios_ABPersonViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController___INIT___]
    ABPersonViewController* var0 = [[ABPersonViewController alloc ] init];
    org_xmlvm_ios_ABPersonViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController___INIT___]

    ABPersonViewController* var0 = [[ABPersonViewController alloc]init];

    org_xmlvm_ios_ABPersonViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController_getPersonViewDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController_setPersonViewDelegate___org_xmlvm_ios_ABPersonViewControllerDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_ABPersonViewControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_ABPersonViewControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setPersonViewDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController_getAddressBook__]

    XMLVM_VAR_THIZ;
    ABAddressBook* var0 = [thiz addressBook];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController_setAddressBook___org_xmlvm_ios_ABAddressBook]

    XMLVM_VAR_THIZ;
    [thiz setAddressBook:(ABAddressBook*) (((org_xmlvm_ios_ABAddressBook*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController_getDisplayedPerson__]

    XMLVM_VAR_THIZ;
    ABRecord* var0 = [thiz displayedPerson];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController_setDisplayedPerson___org_xmlvm_ios_ABRecord]

    XMLVM_VAR_THIZ;
    [thiz setDisplayedPerson:(ABRecord*) (((org_xmlvm_ios_ABRecord*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController_getDisplayedProperties__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz displayedProperties];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController_setDisplayedProperties___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setDisplayedProperties:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController_getAllowsEditing__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz allowsEditing];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController_setAllowsEditing___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAllowsEditing:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController_getShouldShowLinkedPeople__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz shouldShowLinkedPeople];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController_setShouldShowLinkedPeople___boolean]

    XMLVM_VAR_THIZ;
    [thiz setShouldShowLinkedPeople:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPersonViewController_setHighlightedItemForProperty___int_int]

    XMLVM_VAR_THIZ;
    [thiz  setHighlightedItemForProperty:n1 withIdentifier:n2];

    
//XMLVM_END_WRAPPER
