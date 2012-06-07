
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSFetchedPropertyDescription (NSFetchedPropertyDescriptionWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSFetchedPropertyDescription (NSFetchedPropertyDescriptionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSFetchedPropertyDescription.classInitialized)
        __INIT_org_xmlvm_ios_NSFetchedPropertyDescription();
}
@end

void org_xmlvm_ios_NSFetchedPropertyDescription_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSPropertyDescription_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSFetchedPropertyDescription class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSFetchedPropertyDescription();
        org_xmlvm_ios_NSFetchedPropertyDescription_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSFetchedPropertyDescription]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSFetchedPropertyDescription]
__DELETE_org_xmlvm_ios_NSPropertyDescription(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedPropertyDescription___INIT___]
    NSFetchedPropertyDescription* var0 = [[NSFetchedPropertyDescription alloc ] init];
    org_xmlvm_ios_NSFetchedPropertyDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedPropertyDescription___INIT___]
    NSFetchedPropertyDescription* var0 = [[NSFetchedPropertyDescription alloc ] init];
    org_xmlvm_ios_NSFetchedPropertyDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedPropertyDescription___INIT___]

    NSFetchedPropertyDescription* var0 = [[NSFetchedPropertyDescription alloc]init];

    org_xmlvm_ios_NSFetchedPropertyDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedPropertyDescription_fetchRequest__]

    XMLVM_VAR_THIZ;
    
    NSFetchRequest* var0 = [thiz fetchRequest];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSFetchedPropertyDescription_setFetchRequest___org_xmlvm_ios_NSFetchRequest]

    XMLVM_VAR_THIZ;
    [thiz  setFetchRequest:(NSFetchRequest*) (((org_xmlvm_ios_NSFetchRequest*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
