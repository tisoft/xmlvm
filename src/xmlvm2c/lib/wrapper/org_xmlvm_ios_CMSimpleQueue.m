
//XMLVM_BEGIN_IMPLEMENTATION
@interface CMSimpleQueue (CMSimpleQueueWrapperCategory)
+ (void) initialize_class;
@end

@implementation CMSimpleQueue (CMSimpleQueueWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CMSimpleQueue.classInitialized)
        __INIT_org_xmlvm_ios_CMSimpleQueue();
}
@end

void org_xmlvm_ios_CMSimpleQueue_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CMSimpleQueue class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CMSimpleQueue();
        org_xmlvm_ios_CMSimpleQueue_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CMSimpleQueue]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CMSimpleQueue]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSimpleQueue___INIT____org_xmlvm_ios_CFAllocator_int_org_xmlvm_ios_CMSimpleQueue]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CMSimpleQueue* var0 = [[CMSimpleQueue alloc] create:var1];
    org_xmlvm_ios_CMSimpleQueue_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSimpleQueue___INIT___]
    CMSimpleQueue* var0 = [[CMSimpleQueue alloc ] init];
    org_xmlvm_ios_CMSimpleQueue_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSimpleQueue_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSimpleQueue_enqueue___byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSimpleQueue_dequeue__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSimpleQueue_getHead__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSimpleQueue_reset__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSimpleQueue_getCapacity__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMSimpleQueue_getCount__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
