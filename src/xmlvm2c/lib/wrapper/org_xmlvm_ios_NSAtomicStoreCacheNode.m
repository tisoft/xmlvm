
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSAtomicStoreCacheNode (NSAtomicStoreCacheNodeWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSAtomicStoreCacheNode (NSAtomicStoreCacheNodeWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSAtomicStoreCacheNode.classInitialized)
        __INIT_org_xmlvm_ios_NSAtomicStoreCacheNode();
}
@end

void org_xmlvm_ios_NSAtomicStoreCacheNode_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSAtomicStoreCacheNode class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSAtomicStoreCacheNode();
        org_xmlvm_ios_NSAtomicStoreCacheNode_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSAtomicStoreCacheNode]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSAtomicStoreCacheNode]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAtomicStoreCacheNode___INIT____org_xmlvm_ios_NSManagedObjectID]

    NSAtomicStoreCacheNode* var0 = [[NSAtomicStoreCacheNode alloc] initWithObjectID:(NSManagedObjectID*) (((org_xmlvm_ios_NSManagedObjectID*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSAtomicStoreCacheNode_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAtomicStoreCacheNode___INIT___]
    NSAtomicStoreCacheNode* var0 = [[NSAtomicStoreCacheNode alloc ] init];
    org_xmlvm_ios_NSAtomicStoreCacheNode_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAtomicStoreCacheNode___INIT___]

    NSAtomicStoreCacheNode* var0 = [[NSAtomicStoreCacheNode alloc]init];

    org_xmlvm_ios_NSAtomicStoreCacheNode_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAtomicStoreCacheNode_objectID__]

    XMLVM_VAR_THIZ;
    
    NSManagedObjectID* var0 = [thiz objectID];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAtomicStoreCacheNode_propertyCache__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAtomicStoreCacheNode_setPropertyCache___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAtomicStoreCacheNode_valueForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 = [thiz  valueForKey:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAtomicStoreCacheNode_setValue___java_lang_Object_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  setValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER
