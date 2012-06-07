
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSNotificationQueue (NSNotificationQueueWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSNotificationQueue (NSNotificationQueueWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSNotificationQueue.classInitialized)
        __INIT_org_xmlvm_ios_NSNotificationQueue();
}
@end

void org_xmlvm_ios_NSNotificationQueue_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSNotificationQueue class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSNotificationQueue();
        org_xmlvm_ios_NSNotificationQueue_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSNotificationQueue]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSNotificationQueue]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationQueue___INIT____org_xmlvm_ios_NSNotificationCenter]

    NSNotificationQueue* var0 = [[NSNotificationQueue alloc] initWithNotificationCenter:(NSNotificationCenter*) (((org_xmlvm_ios_NSNotificationCenter*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSNotificationQueue_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationQueue___INIT___]
    NSNotificationQueue* var0 = [[NSNotificationQueue alloc ] init];
    org_xmlvm_ios_NSNotificationQueue_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationQueue___INIT___]

    NSNotificationQueue* var0 = [[NSNotificationQueue alloc]init];

    org_xmlvm_ios_NSNotificationQueue_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationQueue_defaultQueue__]

    NSObject* var0 =  [NSNotificationQueue defaultQueue];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationQueue_enqueueNotification___org_xmlvm_ios_NSNotification_int]

    XMLVM_VAR_THIZ;
    [thiz  enqueueNotification:(NSNotification*) (((org_xmlvm_ios_NSNotification*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) postingStyle:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationQueue_enqueueNotification___org_xmlvm_ios_NSNotification_int_int_java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar4 = toNSArray(n4);
    [thiz  enqueueNotification:(NSNotification*) (((org_xmlvm_ios_NSNotification*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) postingStyle:n2 coalesceMask:n3 forModes:ObjCVar4];
    [ObjCVar4 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSNotificationQueue_dequeueNotificationsMatching___org_xmlvm_ios_NSNotification_int]

    XMLVM_VAR_THIZ;
    [thiz  dequeueNotificationsMatching:(NSNotification*) (((org_xmlvm_ios_NSNotification*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) coalesceMask:n2];

    
//XMLVM_END_WRAPPER
