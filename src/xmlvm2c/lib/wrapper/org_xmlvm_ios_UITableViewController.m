
//XMLVM_BEGIN_IMPLEMENTATION
@interface UITableViewController (UITableViewControllerWrapperCategory)
+ (void) initialize_class;
@end

@implementation UITableViewController (UITableViewControllerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UITableViewController.classInitialized)
        __INIT_org_xmlvm_ios_UITableViewController();
}
@end

void org_xmlvm_ios_UITableViewController_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIViewController_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UITableViewController class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UITableViewController();
        org_xmlvm_ios_UITableViewController_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UITableViewController]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UITableViewController]
__DELETE_org_xmlvm_ios_UIViewController(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableViewController___INIT____int]

    UITableViewController* var0 = [[UITableViewController alloc] initWithStyle:n1];
    org_xmlvm_ios_UITableViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableViewController___INIT___]
    UITableViewController* var0 = [[UITableViewController alloc ] init];
    org_xmlvm_ios_UITableViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableViewController___INIT____java_lang_String_org_xmlvm_ios_NSBundle]
NSString * ObjCVar1 = toNSString(n1);
    
    UITableViewController* var0 = [[UITableViewController alloc] initWithNibName:ObjCVar1 bundle:(NSBundle*) (((org_xmlvm_ios_NSBundle*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];

    org_xmlvm_ios_UITableViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableViewController___INIT___]
    UITableViewController* var0 = [[UITableViewController alloc ] init];
    org_xmlvm_ios_UITableViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableViewController___INIT___]
    UITableViewController* var0 = [[UITableViewController alloc ] init];
    org_xmlvm_ios_UITableViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableViewController___INIT___]

    UITableViewController* var0 = [[UITableViewController alloc]init];

    org_xmlvm_ios_UITableViewController_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableViewController_getTableView__]

    XMLVM_VAR_THIZ;
    UITableView* var0 = [thiz tableView];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableViewController_setTableView___org_xmlvm_ios_UITableView]

    XMLVM_VAR_THIZ;
    [thiz setTableView:(UITableView*) (((org_xmlvm_ios_UITableView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableViewController_getClearsSelectionOnViewWillAppear__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz clearsSelectionOnViewWillAppear];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableViewController_setClearsSelectionOnViewWillAppear___boolean]

    XMLVM_VAR_THIZ;
    [thiz setClearsSelectionOnViewWillAppear:n1];

    
//XMLVM_END_WRAPPER
