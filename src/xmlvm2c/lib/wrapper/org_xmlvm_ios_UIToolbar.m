
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIToolbar (UIToolbarWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIToolbar (UIToolbarWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIToolbar.classInitialized)
        __INIT_org_xmlvm_ios_UIToolbar();
}
@end

void org_xmlvm_ios_UIToolbar_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIToolbar class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIToolbar();
        org_xmlvm_ios_UIToolbar_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIToolbar]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIToolbar]
__DELETE_org_xmlvm_ios_UIView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIToolbar___INIT___]
    UIToolbar* var0 = [[UIToolbar alloc ] init];
    org_xmlvm_ios_UIToolbar_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIToolbar___INIT____org_xmlvm_ios_CGRect]

    UIToolbar* var0 = [[UIToolbar alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UIToolbar_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIToolbar___INIT___]
    UIToolbar* var0 = [[UIToolbar alloc ] init];
    org_xmlvm_ios_UIToolbar_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIToolbar___INIT___]
    UIToolbar* var0 = [[UIToolbar alloc ] init];
    org_xmlvm_ios_UIToolbar_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIToolbar___INIT___]

    UIToolbar* var0 = [[UIToolbar alloc]init];

    org_xmlvm_ios_UIToolbar_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIToolbar_getBarStyle__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz barStyle];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIToolbar_setBarStyle___int]

    XMLVM_VAR_THIZ;
    [thiz setBarStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIToolbar_getItems__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz items];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIToolbar_setItems___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setItems:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIToolbar_getTintColor__]

    XMLVM_VAR_THIZ;
    UIColor* var0 = [thiz tintColor];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIToolbar_setTintColor___org_xmlvm_ios_UIColor]

    XMLVM_VAR_THIZ;
    [thiz setTintColor:(UIColor*) (((org_xmlvm_ios_UIColor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIToolbar_isTranslucent__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isTranslucent];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIToolbar_setTranslucent___boolean]

    XMLVM_VAR_THIZ;
    [thiz setTranslucent:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIToolbar_setItems___java_util_List_boolean]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setItems:ObjCVar1 animated:n2];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
