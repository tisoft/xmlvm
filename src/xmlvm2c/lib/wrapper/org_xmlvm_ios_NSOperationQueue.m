
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSOperationQueue (NSOperationQueueWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSOperationQueue (NSOperationQueueWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSOperationQueue.classInitialized)
        __INIT_org_xmlvm_ios_NSOperationQueue();
}
@end

void org_xmlvm_ios_NSOperationQueue_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSOperationQueue class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSOperationQueue();
        org_xmlvm_ios_NSOperationQueue_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSOperationQueue]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSOperationQueue]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue___INIT___]
    NSOperationQueue* var0 = [[NSOperationQueue alloc ] init];
    org_xmlvm_ios_NSOperationQueue_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue___INIT___]

    NSOperationQueue* var0 = [[NSOperationQueue alloc]init];

    org_xmlvm_ios_NSOperationQueue_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue_addOperation___org_xmlvm_ios_NSOperation]

    XMLVM_VAR_THIZ;
    [thiz  addOperation:(NSOperation*) (((org_xmlvm_ios_NSOperation*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue_addOperations___java_util_List_boolean]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  addOperations:ObjCVar1 waitUntilFinished:n2];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue_addOperationWithBlock___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  addOperationWithBlock:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue_operations__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz operations];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue_operationCount__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz operationCount];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue_maxConcurrentOperationCount__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz maxConcurrentOperationCount];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue_setMaxConcurrentOperationCount___int]

    XMLVM_VAR_THIZ;
    [thiz  setMaxConcurrentOperationCount:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue_setSuspended___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setSuspended:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue_isSuspended__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isSuspended];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue_setName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setName:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue_name__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz name];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue_cancelAllOperations__]

    XMLVM_VAR_THIZ;
    [thiz cancelAllOperations];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue_waitUntilAllOperationsAreFinished__]

    XMLVM_VAR_THIZ;
    [thiz waitUntilAllOperationsAreFinished];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue_currentQueue__]

    NSObject* var0 =  [NSOperationQueue currentQueue];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSOperationQueue_mainQueue__]

    NSObject* var0 =  [NSOperationQueue mainQueue];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
