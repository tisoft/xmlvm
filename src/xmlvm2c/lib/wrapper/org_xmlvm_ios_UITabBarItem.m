
//XMLVM_BEGIN_IMPLEMENTATION
@interface UITabBarItem (UITabBarItemWrapperCategory)
+ (void) initialize_class;
@end

@implementation UITabBarItem (UITabBarItemWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UITabBarItem.classInitialized)
        __INIT_org_xmlvm_ios_UITabBarItem();
}
@end

void org_xmlvm_ios_UITabBarItem_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIBarItem_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UITabBarItem class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UITabBarItem();
        org_xmlvm_ios_UITabBarItem_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UITabBarItem]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UITabBarItem]
__DELETE_org_xmlvm_ios_UIBarItem(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITabBarItem___INIT____java_lang_String_org_xmlvm_ios_UIImage_int]
NSString * ObjCVar1 = toNSString(n1);
    
    UITabBarItem* var0 = [[UITabBarItem alloc] initWithTitle:ObjCVar1 image:(UIImage*) (((org_xmlvm_ios_UIImage*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) tag:n3];
    [ObjCVar1 release];

    org_xmlvm_ios_UITabBarItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITabBarItem___INIT____int_int]

    UITabBarItem* var0 = [[UITabBarItem alloc] initWithTabBarSystemItem:n1 tag:n2];
    org_xmlvm_ios_UITabBarItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITabBarItem___INIT___]
    UITabBarItem* var0 = [[UITabBarItem alloc ] init];
    org_xmlvm_ios_UITabBarItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITabBarItem___INIT___]
    UITabBarItem* var0 = [[UITabBarItem alloc ] init];
    org_xmlvm_ios_UITabBarItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITabBarItem___INIT___]

    UITabBarItem* var0 = [[UITabBarItem alloc]init];

    org_xmlvm_ios_UITabBarItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITabBarItem_getBadgeValue__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz badgeValue];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITabBarItem_setBadgeValue___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setBadgeValue:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
