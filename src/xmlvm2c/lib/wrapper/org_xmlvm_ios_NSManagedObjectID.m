
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSManagedObjectID (NSManagedObjectIDWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSManagedObjectID (NSManagedObjectIDWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSManagedObjectID.classInitialized)
        __INIT_org_xmlvm_ios_NSManagedObjectID();
}
@end

void org_xmlvm_ios_NSManagedObjectID_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSManagedObjectID class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSManagedObjectID();
        org_xmlvm_ios_NSManagedObjectID_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSManagedObjectID]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSManagedObjectID]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectID___INIT___]
    NSManagedObjectID* var0 = [[NSManagedObjectID alloc ] init];
    org_xmlvm_ios_NSManagedObjectID_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectID___INIT___]

    NSManagedObjectID* var0 = [[NSManagedObjectID alloc]init];

    org_xmlvm_ios_NSManagedObjectID_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectID_entity__]

    XMLVM_VAR_THIZ;
    
    NSEntityDescription* var0 = [thiz entity];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectID_persistentStore__]

    XMLVM_VAR_THIZ;
    
    NSPersistentStore* var0 = [thiz persistentStore];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectID_isTemporaryID__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isTemporaryID];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSManagedObjectID_URIRepresentation__]

    XMLVM_VAR_THIZ;
    
    NSURL* var0 = [thiz URIRepresentation];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
