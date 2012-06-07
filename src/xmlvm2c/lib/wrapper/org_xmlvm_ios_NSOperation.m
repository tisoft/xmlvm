
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSOperation (NSOperationWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSOperation (NSOperationWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSOperation.classInitialized)
        __INIT_org_xmlvm_ios_NSOperation();
}
@end

void org_xmlvm_ios_NSOperation_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSOperation class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSOperation();
        org_xmlvm_ios_NSOperation_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSOperation]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSOperation]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation___INIT___]

    NSOperation* var0 = [[NSOperation alloc]init];

    org_xmlvm_ios_NSOperation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation___INIT___]
    NSOperation* var0 = [[NSOperation alloc ] init];
    org_xmlvm_ios_NSOperation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_start__]

    XMLVM_VAR_THIZ;
    [thiz start];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_main__]

    XMLVM_VAR_THIZ;
    [thiz main];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_isCancelled__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isCancelled];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_cancel__]

    XMLVM_VAR_THIZ;
    [thiz cancel];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_isExecuting__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isExecuting];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_isFinished__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isFinished];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_isConcurrent__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isConcurrent];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_isReady__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isReady];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_addDependency___org_xmlvm_ios_NSOperation]

    XMLVM_VAR_THIZ;
    [thiz  addDependency:(NSOperation*) (((org_xmlvm_ios_NSOperation*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_removeDependency___org_xmlvm_ios_NSOperation]

    XMLVM_VAR_THIZ;
    [thiz  removeDependency:(NSOperation*) (((org_xmlvm_ios_NSOperation*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_dependencies__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz dependencies];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_queuePriority__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz queuePriority];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_setQueuePriority___int]

    XMLVM_VAR_THIZ;
    [thiz  setQueuePriority:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_completionBlock__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz completionBlock];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_setCompletionBlock___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  setCompletionBlock:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_waitUntilFinished__]

    XMLVM_VAR_THIZ;
    [thiz waitUntilFinished];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_threadPriority__]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz threadPriority];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperation_setThreadPriority___double]

    XMLVM_VAR_THIZ;
    [thiz  setThreadPriority:n1];

    
//XMLVM_END_WRAPPER
