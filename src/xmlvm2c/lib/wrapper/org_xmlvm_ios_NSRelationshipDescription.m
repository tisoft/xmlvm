
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSRelationshipDescription (NSRelationshipDescriptionWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSRelationshipDescription (NSRelationshipDescriptionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSRelationshipDescription.classInitialized)
        __INIT_org_xmlvm_ios_NSRelationshipDescription();
}
@end

void org_xmlvm_ios_NSRelationshipDescription_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSPropertyDescription_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSRelationshipDescription class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSRelationshipDescription();
        org_xmlvm_ios_NSRelationshipDescription_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSRelationshipDescription]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSRelationshipDescription]
__DELETE_org_xmlvm_ios_NSPropertyDescription(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRelationshipDescription___INIT___]
    NSRelationshipDescription* var0 = [[NSRelationshipDescription alloc ] init];
    org_xmlvm_ios_NSRelationshipDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRelationshipDescription___INIT___]
    NSRelationshipDescription* var0 = [[NSRelationshipDescription alloc ] init];
    org_xmlvm_ios_NSRelationshipDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRelationshipDescription___INIT___]

    NSRelationshipDescription* var0 = [[NSRelationshipDescription alloc]init];

    org_xmlvm_ios_NSRelationshipDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRelationshipDescription_destinationEntity__]

    XMLVM_VAR_THIZ;
    
    NSEntityDescription* var0 = [thiz destinationEntity];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRelationshipDescription_setDestinationEntity___org_xmlvm_ios_NSEntityDescription]

    XMLVM_VAR_THIZ;
    [thiz  setDestinationEntity:(NSEntityDescription*) (((org_xmlvm_ios_NSEntityDescription*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRelationshipDescription_inverseRelationship__]

    XMLVM_VAR_THIZ;
    
    NSRelationshipDescription* var0 = [thiz inverseRelationship];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRelationshipDescription_setInverseRelationship___org_xmlvm_ios_NSRelationshipDescription]

    XMLVM_VAR_THIZ;
    [thiz  setInverseRelationship:(NSRelationshipDescription*) (((org_xmlvm_ios_NSRelationshipDescription*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRelationshipDescription_maxCount__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz maxCount];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRelationshipDescription_setMaxCount___int]

    XMLVM_VAR_THIZ;
    [thiz  setMaxCount:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRelationshipDescription_minCount__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz minCount];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRelationshipDescription_setMinCount___int]

    XMLVM_VAR_THIZ;
    [thiz  setMinCount:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRelationshipDescription_deleteRule__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz deleteRule];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRelationshipDescription_setDeleteRule___int]

    XMLVM_VAR_THIZ;
    [thiz  setDeleteRule:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRelationshipDescription_isToMany__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz isToMany];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSRelationshipDescription_versionHash__]

    XMLVM_VAR_THIZ;
    
    NSData* var0 = [thiz versionHash];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
