
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSMappingModel (NSMappingModelWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSMappingModel (NSMappingModelWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSMappingModel.classInitialized)
        __INIT_org_xmlvm_ios_NSMappingModel();
}
@end

void org_xmlvm_ios_NSMappingModel_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSMappingModel class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSMappingModel();
        org_xmlvm_ios_NSMappingModel_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSMappingModel]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSMappingModel]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMappingModel___INIT____org_xmlvm_ios_NSURL]

    NSMappingModel* var0 = [[NSMappingModel alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSMappingModel_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMappingModel___INIT___]
    NSMappingModel* var0 = [[NSMappingModel alloc ] init];
    org_xmlvm_ios_NSMappingModel_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMappingModel___INIT___]

    NSMappingModel* var0 = [[NSMappingModel alloc]init];

    org_xmlvm_ios_NSMappingModel_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMappingModel_mappingModelFromBundles___java_util_List_org_xmlvm_ios_NSManagedObjectModel_org_xmlvm_ios_NSManagedObjectModel]
NSArray * ObjCVar1 = toNSArray(n1);
    
    NSMappingModel* var0 =  [NSMappingModel  mappingModelFromBundles:ObjCVar1 forSourceModel:(NSManagedObjectModel*) (((org_xmlvm_ios_NSManagedObjectModel*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) destinationModel:(NSManagedObjectModel*) (((org_xmlvm_ios_NSManagedObjectModel*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMappingModel_inferredMappingModelForSourceModel___org_xmlvm_ios_NSManagedObjectModel_org_xmlvm_ios_NSManagedObjectModel_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSMappingModel* var0 =  [NSMappingModel  inferredMappingModelForSourceModel:(NSManagedObjectModel*) (((org_xmlvm_ios_NSManagedObjectModel*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) destinationModel:(NSManagedObjectModel*) (((org_xmlvm_ios_NSManagedObjectModel*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) error:&var3];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMappingModel_entityMappings__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz entityMappings];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMappingModel_setEntityMappings___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  setEntityMappings:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMappingModel_entityMappingsByName__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
