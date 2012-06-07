
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSAttributeDescription (NSAttributeDescriptionWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSAttributeDescription (NSAttributeDescriptionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSAttributeDescription.classInitialized)
        __INIT_org_xmlvm_ios_NSAttributeDescription();
}
@end

void org_xmlvm_ios_NSAttributeDescription_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSPropertyDescription_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSAttributeDescription class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSAttributeDescription();
        org_xmlvm_ios_NSAttributeDescription_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSAttributeDescription]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSAttributeDescription]
__DELETE_org_xmlvm_ios_NSPropertyDescription(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributeDescription___INIT___]
    NSAttributeDescription* var0 = [[NSAttributeDescription alloc ] init];
    org_xmlvm_ios_NSAttributeDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributeDescription___INIT___]
    NSAttributeDescription* var0 = [[NSAttributeDescription alloc ] init];
    org_xmlvm_ios_NSAttributeDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributeDescription___INIT___]

    NSAttributeDescription* var0 = [[NSAttributeDescription alloc]init];

    org_xmlvm_ios_NSAttributeDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributeDescription_attributeType__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz attributeType];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributeDescription_setAttributeType___int]

    XMLVM_VAR_THIZ;
    [thiz  setAttributeType:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributeDescription_attributeValueClassName__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz attributeValueClassName];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributeDescription_defaultValue__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz defaultValue];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributeDescription_setDefaultValue___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  setDefaultValue:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributeDescription_setAttributeValueClassName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setAttributeValueClassName:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributeDescription_versionHash__]

    XMLVM_VAR_THIZ;
    
    NSData* var0 = [thiz versionHash];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributeDescription_valueTransformerName__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz valueTransformerName];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAttributeDescription_setValueTransformerName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setValueTransformerName:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
