
//XMLVM_BEGIN_IMPLEMENTATION
@interface ABMutableMultiValue (ABMutableMultiValueWrapperCategory)
+ (void) initialize_class;
@end

@implementation ABMutableMultiValue (ABMutableMultiValueWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_ABMutableMultiValue.classInitialized)
        __INIT_org_xmlvm_ios_ABMutableMultiValue();
}
@end

void org_xmlvm_ios_ABMutableMultiValue_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [ABMutableMultiValue class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_ABMutableMultiValue();
        org_xmlvm_ios_ABMutableMultiValue_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_ABMutableMultiValue]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_ABMutableMultiValue]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMutableMultiValue___INIT___]
    ABMutableMultiValue* var0 = [[ABMutableMultiValue alloc ] init];
    org_xmlvm_ios_ABMutableMultiValue_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_ABMutableMultiValue___INIT___]
    ABMutableMultiValue* var0 = [[ABMutableMultiValue alloc ] init];
    org_xmlvm_ios_ABMutableMultiValue_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
