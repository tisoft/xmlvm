
//XMLVM_BEGIN_IMPLEMENTATION
@interface EAAccessoryManager (EAAccessoryManagerWrapperCategory)
+ (void) initialize_class;
@end

@implementation EAAccessoryManager (EAAccessoryManagerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_EAAccessoryManager.classInitialized)
        __INIT_org_xmlvm_ios_EAAccessoryManager();
}
@end

void org_xmlvm_ios_EAAccessoryManager_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [EAAccessoryManager class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_EAAccessoryManager();
        org_xmlvm_ios_EAAccessoryManager_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_EAAccessoryManager]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_EAAccessoryManager]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessoryManager___INIT___]
    EAAccessoryManager* var0 = [[EAAccessoryManager alloc ] init];
    org_xmlvm_ios_EAAccessoryManager_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessoryManager___INIT___]

    EAAccessoryManager* var0 = [[EAAccessoryManager alloc]init];

    org_xmlvm_ios_EAAccessoryManager_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessoryManager_sharedAccessoryManager__]

    EAAccessoryManager* var0 =  [EAAccessoryManager sharedAccessoryManager];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessoryManager_registerForLocalNotifications__]

    XMLVM_VAR_THIZ;
    [thiz registerForLocalNotifications];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessoryManager_unregisterForLocalNotifications__]

    XMLVM_VAR_THIZ;
    [thiz unregisterForLocalNotifications];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAAccessoryManager_getConnectedAccessories__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz connectedAccessories];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER
