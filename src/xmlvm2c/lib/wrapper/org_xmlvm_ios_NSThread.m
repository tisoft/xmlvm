
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSThread (NSThreadWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSThread (NSThreadWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSThread.classInitialized)
        __INIT_org_xmlvm_ios_NSThread();
}
@end

void org_xmlvm_ios_NSThread_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSThread class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSThread();
        org_xmlvm_ios_NSThread_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSThread]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSThread]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread___INIT___]

    NSThread* var0 = [[NSThread alloc]init];

    org_xmlvm_ios_NSThread_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread___INIT____java_lang_Object_org_xmlvm_ios_SEL_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread___INIT___]
    NSThread* var0 = [[NSThread alloc ] init];
    org_xmlvm_ios_NSThread_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_currentThread__]

    NSThread* var0 =  [NSThread currentThread];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_detachNewThreadSelector___org_xmlvm_ios_SEL_java_lang_Object_java_lang_Object]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_isMultiThreaded__]

    BOOL var0 =  [NSThread isMultiThreaded];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_threadDictionary__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_sleepUntilDate___org_xmlvm_ios_NSDate]
 [NSThread  sleepUntilDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_sleepForTimeInterval___double]
 [NSThread  sleepForTimeInterval:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_exit__]
 [NSThread exit];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_threadPriority__]

    double var0 =  [NSThread threadPriority];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_setThreadPriority___double]

    BOOL var0 =  [NSThread  setThreadPriorityStatic:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_threadPriority__]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz threadPriority];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_setThreadPriority___double]

    XMLVM_VAR_THIZ;
    [thiz  setThreadPriority:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_callStackReturnAddresses__]

    NSArray* var0 =  [NSThread callStackReturnAddresses];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_callStackSymbols__]

    NSArray* var0 =  [NSThread callStackSymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_setName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setName:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_name__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz name];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_stackSize__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz stackSize];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_setStackSize___int]

    XMLVM_VAR_THIZ;
    [thiz  setStackSize:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_isMainThread__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isMainThread];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_isMainThread__]

    BOOL var0 =  [NSThread isMainThread];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_mainThread__]

    NSThread* var0 =  [NSThread mainThread];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_isExecuting__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isExecuting];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_isFinished__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isFinished];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_isCancelled__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isCancelled];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_cancel__]

    XMLVM_VAR_THIZ;
    [thiz cancel];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_start__]

    XMLVM_VAR_THIZ;
    [thiz start];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSThread_main__]

    XMLVM_VAR_THIZ;
    [thiz main];

    
//XMLVM_END_WRAPPER
