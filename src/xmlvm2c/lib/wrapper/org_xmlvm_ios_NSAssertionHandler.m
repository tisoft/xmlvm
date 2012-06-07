
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSAssertionHandler (NSAssertionHandlerWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSAssertionHandler (NSAssertionHandlerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSAssertionHandler.classInitialized)
        __INIT_org_xmlvm_ios_NSAssertionHandler();
}
@end

void org_xmlvm_ios_NSAssertionHandler_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSAssertionHandler class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSAssertionHandler();
        org_xmlvm_ios_NSAssertionHandler_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSAssertionHandler]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSAssertionHandler]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAssertionHandler___INIT___]
    NSAssertionHandler* var0 = [[NSAssertionHandler alloc ] init];
    org_xmlvm_ios_NSAssertionHandler_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAssertionHandler___INIT___]

    NSAssertionHandler* var0 = [[NSAssertionHandler alloc]init];

    org_xmlvm_ios_NSAssertionHandler_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAssertionHandler_currentHandler__]

    NSAssertionHandler* var0 =  [NSAssertionHandler currentHandler];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAssertionHandler_handleFailureInMethod___org_xmlvm_ios_SEL_java_lang_Object_java_lang_String_int_org_xmlvm_ios_String...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSAssertionHandler_handleFailureInFunction___java_lang_String_java_lang_String_int_org_xmlvm_ios_String...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
