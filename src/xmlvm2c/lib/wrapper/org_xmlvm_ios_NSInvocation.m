
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSInvocation (NSInvocationWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSInvocation (NSInvocationWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSInvocation.classInitialized)
        __INIT_org_xmlvm_ios_NSInvocation();
}
@end

void org_xmlvm_ios_NSInvocation_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSInvocation class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSInvocation();
        org_xmlvm_ios_NSInvocation_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSInvocation]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSInvocation]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation___INIT___]
    NSInvocation* var0 = [[NSInvocation alloc ] init];
    org_xmlvm_ios_NSInvocation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation___INIT___]

    NSInvocation* var0 = [[NSInvocation alloc]init];

    org_xmlvm_ios_NSInvocation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation_invocationWithMethodSignature___org_xmlvm_ios_NSMethodSignature]

    NSInvocation* var0 =  [NSInvocation  invocationWithMethodSignature:(NSMethodSignature*) (((org_xmlvm_ios_NSMethodSignature*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation_methodSignature__]

    XMLVM_VAR_THIZ;
    
    NSMethodSignature* var0 = [thiz methodSignature];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation_retainArguments__]

    XMLVM_VAR_THIZ;
    [thiz retainArguments];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation_argumentsRetained__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz argumentsRetained];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation_target__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz target];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation_setTarget___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  setTarget:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation_selector__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation_setSelector___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation_getReturnValue___byte_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    [thiz  getReturnValue:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation_setReturnValue___byte_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    [thiz  setReturnValue:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation_getArgument___byte_1ARRAY_int]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    [thiz  getArgument:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ atIndex:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation_setArgument___byte_1ARRAY_int]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    [thiz  setArgument:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ atIndex:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation_invoke__]

    XMLVM_VAR_THIZ;
    [thiz invoke];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocation_invokeWithTarget___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  invokeWithTarget:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER
