
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSConditionLock (NSConditionLockWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSConditionLock (NSConditionLockWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSConditionLock.classInitialized)
        __INIT_org_xmlvm_ios_NSConditionLock();
}
@end

void org_xmlvm_ios_NSConditionLock_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSConditionLock class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSConditionLock();
        org_xmlvm_ios_NSConditionLock_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSConditionLock]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSConditionLock]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConditionLock___INIT____int]

    NSConditionLock* var0 = [[NSConditionLock alloc] initWithCondition:n1];
    org_xmlvm_ios_NSConditionLock_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConditionLock___INIT___]
    NSConditionLock* var0 = [[NSConditionLock alloc ] init];
    org_xmlvm_ios_NSConditionLock_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConditionLock___INIT___]

    NSConditionLock* var0 = [[NSConditionLock alloc]init];

    org_xmlvm_ios_NSConditionLock_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConditionLock_condition__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz condition];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConditionLock_lockWhenCondition___int]

    XMLVM_VAR_THIZ;
    [thiz  lockWhenCondition:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConditionLock_tryLock__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz tryLock];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConditionLock_tryLockWhenCondition___int]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  tryLockWhenCondition:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConditionLock_unlockWithCondition___int]

    XMLVM_VAR_THIZ;
    [thiz  unlockWithCondition:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConditionLock_lockBeforeDate___org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  lockBeforeDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConditionLock_lockWhenCondition___int_org_xmlvm_ios_NSDate]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  lockWhenCondition:n1 beforeDate:(NSDate*) (((org_xmlvm_ios_NSDate*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConditionLock_setName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setName:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSConditionLock_name__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz name];

    return fromNSString(var0);
//XMLVM_END_WRAPPER
