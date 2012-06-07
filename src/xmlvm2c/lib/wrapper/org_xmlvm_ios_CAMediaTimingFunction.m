
//XMLVM_BEGIN_IMPLEMENTATION
@interface CAMediaTimingFunction (CAMediaTimingFunctionWrapperCategory)
+ (void) initialize_class;
@end

@implementation CAMediaTimingFunction (CAMediaTimingFunctionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CAMediaTimingFunction.classInitialized)
        __INIT_org_xmlvm_ios_CAMediaTimingFunction();
}
@end

void org_xmlvm_ios_CAMediaTimingFunction_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CAMediaTimingFunction class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CAMediaTimingFunction();
        org_xmlvm_ios_CAMediaTimingFunction_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CAMediaTimingFunction]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CAMediaTimingFunction]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAMediaTimingFunction___INIT____float_float_float_float]

    CAMediaTimingFunction* var0 = [[CAMediaTimingFunction alloc] initWithControlPoints:n1 :n2 :n3 :n4];
    org_xmlvm_ios_CAMediaTimingFunction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAMediaTimingFunction___INIT___]
    CAMediaTimingFunction* var0 = [[CAMediaTimingFunction alloc ] init];
    org_xmlvm_ios_CAMediaTimingFunction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAMediaTimingFunction___INIT___]

    CAMediaTimingFunction* var0 = [[CAMediaTimingFunction alloc]init];

    org_xmlvm_ios_CAMediaTimingFunction_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAMediaTimingFunction_functionWithName___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 =  [CAMediaTimingFunction  functionWithName:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAMediaTimingFunction_functionWithControlPoints___float_float_float_float]

    NSObject* var0 =  [CAMediaTimingFunction  functionWithControlPoints:n1 :n2 :n3 :n4];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAMediaTimingFunction_getControlPointAtIndex___int_float_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    [thiz  getControlPointAtIndex:n1 values:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];

    
//XMLVM_END_WRAPPER
