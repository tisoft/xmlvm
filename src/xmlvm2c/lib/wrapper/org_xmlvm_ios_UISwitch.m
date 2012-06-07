
//XMLVM_BEGIN_IMPLEMENTATION
@interface UISwitch (UISwitchWrapperCategory)
+ (void) initialize_class;
@end

@implementation UISwitch (UISwitchWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UISwitch.classInitialized)
        __INIT_org_xmlvm_ios_UISwitch();
}
@end

void org_xmlvm_ios_UISwitch_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIControl_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UISwitch class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UISwitch();
        org_xmlvm_ios_UISwitch_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UISwitch]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UISwitch]
__DELETE_org_xmlvm_ios_UIControl(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwitch___INIT____org_xmlvm_ios_CGRect]

    UISwitch* var0 = [[UISwitch alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UISwitch_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwitch___INIT___]
    UISwitch* var0 = [[UISwitch alloc ] init];
    org_xmlvm_ios_UISwitch_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwitch___INIT___]
    UISwitch* var0 = [[UISwitch alloc ] init];
    org_xmlvm_ios_UISwitch_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwitch___INIT___]
    UISwitch* var0 = [[UISwitch alloc ] init];
    org_xmlvm_ios_UISwitch_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwitch___INIT___]
    UISwitch* var0 = [[UISwitch alloc ] init];
    org_xmlvm_ios_UISwitch_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwitch___INIT___]

    UISwitch* var0 = [[UISwitch alloc]init];

    org_xmlvm_ios_UISwitch_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwitch_isOn__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isOn];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwitch_setOn___boolean]

    XMLVM_VAR_THIZ;
    [thiz setOn:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISwitch_setOn___boolean_boolean]

    XMLVM_VAR_THIZ;
    [thiz  setOn:n1 animated:n2];

    
//XMLVM_END_WRAPPER
