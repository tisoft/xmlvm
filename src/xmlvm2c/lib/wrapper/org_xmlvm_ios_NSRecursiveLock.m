
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSRecursiveLock (NSRecursiveLockWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSRecursiveLock (NSRecursiveLockWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSRecursiveLock.classInitialized)
        __INIT_org_xmlvm_ios_NSRecursiveLock();
}
@end

void org_xmlvm_ios_NSRecursiveLock_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSRecursiveLock class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSRecursiveLock();
        org_xmlvm_ios_NSRecursiveLock_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSRecursiveLock]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSRecursiveLock]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRecursiveLock___INIT___]
    NSRecursiveLock* var0 = [[NSRecursiveLock alloc ] init];
    org_xmlvm_ios_NSRecursiveLock_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRecursiveLock___INIT___]

    NSRecursiveLock* var0 = [[NSRecursiveLock alloc]init];

    org_xmlvm_ios_NSRecursiveLock_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRecursiveLock_tryLock__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz tryLock];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRecursiveLock_lockBeforeDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  lockBeforeDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRecursiveLock_setName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setName:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRecursiveLock_name__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz name];

    return fromNSString(var0);
//XMLVM_END_WRAPPER
