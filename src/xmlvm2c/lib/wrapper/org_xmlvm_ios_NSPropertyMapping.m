
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSPropertyMapping (NSPropertyMappingWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSPropertyMapping (NSPropertyMappingWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSPropertyMapping.classInitialized)
        __INIT_org_xmlvm_ios_NSPropertyMapping();
}
@end

void org_xmlvm_ios_NSPropertyMapping_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSPropertyMapping class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSPropertyMapping();
        org_xmlvm_ios_NSPropertyMapping_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSPropertyMapping]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSPropertyMapping]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyMapping___INIT___]
    NSPropertyMapping* var0 = [[NSPropertyMapping alloc ] init];
    org_xmlvm_ios_NSPropertyMapping_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyMapping___INIT___]

    NSPropertyMapping* var0 = [[NSPropertyMapping alloc]init];

    org_xmlvm_ios_NSPropertyMapping_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyMapping_name__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz name];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyMapping_setName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setName:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyMapping_valueExpression__]

    XMLVM_VAR_THIZ;
    
    NSExpression* var0 = [thiz valueExpression];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyMapping_setValueExpression___org_xmlvm_ios_NSExpression]

    XMLVM_VAR_THIZ;
    [thiz  setValueExpression:(NSExpression*) (((org_xmlvm_ios_NSExpression*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyMapping_userInfo__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSPropertyMapping_setUserInfo___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
