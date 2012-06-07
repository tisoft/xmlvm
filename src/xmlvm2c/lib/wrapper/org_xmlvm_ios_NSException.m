
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSException (NSExceptionWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSException (NSExceptionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSException.classInitialized)
        __INIT_org_xmlvm_ios_NSException();
}
@end

void org_xmlvm_ios_NSException_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSException class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSException();
        org_xmlvm_ios_NSException_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSException]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSException]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSException___INIT____java_lang_String_java_lang_String_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSException___INIT___]
    NSException* var0 = [[NSException alloc ] init];
    org_xmlvm_ios_NSException_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSException___INIT___]

    NSException* var0 = [[NSException alloc]init];

    org_xmlvm_ios_NSException_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSException_exceptionWithName___java_lang_String_java_lang_String_java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSException_name__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz name];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSException_reason__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz reason];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSException_userInfo__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSException_callStackReturnAddresses__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz callStackReturnAddresses];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSException_callStackSymbols__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz callStackSymbols];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSException_raise__]

    XMLVM_VAR_THIZ;
    [thiz raise];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSException_raise___java_lang_String_org_xmlvm_ios_String...]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSException_raise___java_lang_String_java_lang_String_byte_1ARRAY]
NSString * ObjCVar1 = toNSString(n1);
    NSString * ObjCVar2 = toNSString(n2);
    XMLVM_VAR_BYTE_ARRAY(a3, n3); 
     [NSException  raise:ObjCVar1 format:ObjCVar2 arguments:a3->fields.org_xmlvm_runtime_XMLVMArray.array_];
    [ObjCVar1 release];

    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER
