
//XMLVM_BEGIN_IMPLEMENTATION
@interface CGImageDestination (CGImageDestinationWrapperCategory)
+ (void) initialize_class;
@end

@implementation CGImageDestination (CGImageDestinationWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CGImageDestination.classInitialized)
        __INIT_org_xmlvm_ios_CGImageDestination();
}
@end

void org_xmlvm_ios_CGImageDestination_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CGImageDestination class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CGImageDestination();
        org_xmlvm_ios_CGImageDestination_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CGImageDestination]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGImageDestination]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImageDestination___INIT___]
    CGImageDestination* var0 = [[CGImageDestination alloc ] init];
    org_xmlvm_ios_CGImageDestination_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImageDestination_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImageDestination_copyTypeIdentifiers__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImageDestination_createWithDataConsumer___org_xmlvm_ios_CGDataConsumer_java_lang_String_int_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImageDestination_createWithData___org_xmlvm_ios_CFData_java_lang_String_int_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImageDestination_createWithURL___org_xmlvm_ios_CFURL_java_lang_String_int_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImageDestination_setProperties___org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImageDestination_addImage___org_xmlvm_ios_CGImage_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImageDestination_addImageFromSource___org_xmlvm_ios_CGImageSource_int_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGImageDestination_finalize__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
