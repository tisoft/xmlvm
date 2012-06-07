
//XMLVM_BEGIN_IMPLEMENTATION
@interface ABPeoplePickerNavigationController (ABPeoplePickerNavigationControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation ABPeoplePickerNavigationController (ABPeoplePickerNavigationControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_ABPeoplePickerNavigationController.classInitialized)
        __INIT_org_xmlvm_ios_ABPeoplePickerNavigationController();
}
@end

void org_xmlvm_ios_ABPeoplePickerNavigationController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UINavigationController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [ABPeoplePickerNavigationController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_ABPeoplePickerNavigationController();
        org_xmlvm_ios_ABPeoplePickerNavigationController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_ABPeoplePickerNavigationController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_ABPeoplePickerNavigationController]
__DELETE_org_xmlvm_ios_UINavigationController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPeoplePickerNavigationController___INIT___]
    ABPeoplePickerNavigationController* var0 = [[ABPeoplePickerNavigationController alloc ] init];
    org_xmlvm_ios_ABPeoplePickerNavigationController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPeoplePickerNavigationController___INIT____org_xmlvm_ios_UIViewController]

    ABPeoplePickerNavigationController* var0 = [[ABPeoplePickerNavigationController alloc] initWithRootViewController:(UIViewController*) (((org_xmlvm_ios_UIViewController*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_ABPeoplePickerNavigationController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPeoplePickerNavigationController___INIT___]
    ABPeoplePickerNavigationController* var0 = [[ABPeoplePickerNavigationController alloc ] init];
    org_xmlvm_ios_ABPeoplePickerNavigationController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPeoplePickerNavigationController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    ABPeoplePickerNavigationController* var0 = [[ABPeoplePickerNavigationController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_ABPeoplePickerNavigationController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPeoplePickerNavigationController___INIT___]
    ABPeoplePickerNavigationController* var0 = [[ABPeoplePickerNavigationController alloc ] init];
    org_xmlvm_ios_ABPeoplePickerNavigationController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPeoplePickerNavigationController___INIT___]
    ABPeoplePickerNavigationController* var0 = [[ABPeoplePickerNavigationController alloc ] init];
    org_xmlvm_ios_ABPeoplePickerNavigationController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPeoplePickerNavigationController___INIT___]

    ABPeoplePickerNavigationController* var0 = [[ABPeoplePickerNavigationController alloc]init];

    org_xmlvm_ios_ABPeoplePickerNavigationController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPeoplePickerNavigationController_getPeoplePickerDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPeoplePickerNavigationController_setPeoplePickerDelegate___org_xmlvm_ios_ABPeoplePickerNavigationControllerDelegate]

    XMLVM_VAR_THIZ;
    org_xmlvm_ios_ABPeoplePickerNavigationControllerDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_ABPeoplePickerNavigationControllerDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setPeoplePickerDelegate:jwrapper->nativeDelegateWrapper_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPeoplePickerNavigationController_getDisplayedProperties__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz displayedProperties];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPeoplePickerNavigationController_setDisplayedProperties___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setDisplayedProperties:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPeoplePickerNavigationController_getAddressBook__]

    XMLVM_VAR_THIZ;
    ABAddressBook* var0 = [thiz addressBook];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABPeoplePickerNavigationController_setAddressBook___org_xmlvm_ios_ABAddressBook]

    XMLVM_VAR_THIZ;
    [thiz setAddressBook:(ABAddressBook*) (((org_xmlvm_ios_ABAddressBook*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
