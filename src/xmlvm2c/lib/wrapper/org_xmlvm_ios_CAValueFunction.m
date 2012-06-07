
//XMLVM_BEGIN_IMPLEMENTATION
@interface CAValueFunction (CAValueFunctionWrapperCategory)
+ (void) initialize_class;
@end

@implementation CAValueFunction (CAValueFunctionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CAValueFunction.classInitialized)
        __INIT_org_xmlvm_ios_CAValueFunction();
}
@end

void org_xmlvm_ios_CAValueFunction_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CAValueFunction class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CAValueFunction();
        org_xmlvm_ios_CAValueFunction_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CAValueFunction]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CAValueFunction]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAValueFunction___INIT___]
    CAValueFunction* var0 = [[CAValueFunction alloc ] init];
    org_xmlvm_ios_CAValueFunction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAValueFunction___INIT___]

    CAValueFunction* var0 = [[CAValueFunction alloc]init];

    org_xmlvm_ios_CAValueFunction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAValueFunction_functionWithName___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 =  [CAValueFunction  functionWithName:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAValueFunction_getName__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz name];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER
