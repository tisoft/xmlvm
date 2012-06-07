
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSInvocationOperation (NSInvocationOperationWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSInvocationOperation (NSInvocationOperationWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSInvocationOperation.classInitialized)
        __INIT_org_xmlvm_ios_NSInvocationOperation();
}
@end

void org_xmlvm_ios_NSInvocationOperation_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSOperation_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSInvocationOperation class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSInvocationOperation();
        org_xmlvm_ios_NSInvocationOperation_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSInvocationOperation]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSInvocationOperation]
__DELETE_org_xmlvm_ios_NSOperation(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocationOperation___INIT____java_lang_Object_org_xmlvm_ios_SEL_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocationOperation___INIT____org_xmlvm_ios_NSInvocation]

    NSInvocationOperation* var0 = [[NSInvocationOperation alloc] initWithInvocation:(NSInvocation*) (((org_xmlvm_ios_NSInvocation*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSInvocationOperation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocationOperation___INIT___]
    NSInvocationOperation* var0 = [[NSInvocationOperation alloc ] init];
    org_xmlvm_ios_NSInvocationOperation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocationOperation___INIT___]

    NSInvocationOperation* var0 = [[NSInvocationOperation alloc]init];

    org_xmlvm_ios_NSInvocationOperation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocationOperation___INIT___]
    NSInvocationOperation* var0 = [[NSInvocationOperation alloc ] init];
    org_xmlvm_ios_NSInvocationOperation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocationOperation_invocation__]

    XMLVM_VAR_THIZ;
    
    NSInvocation* var0 = [thiz invocation];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInvocationOperation_result__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz result];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
