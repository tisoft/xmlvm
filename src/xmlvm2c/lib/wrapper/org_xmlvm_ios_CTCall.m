
//XMLVM_BEGIN_IMPLEMENTATION
@interface CTCall (CTCallWrapperCategory)
+ (void) initialize_class;
@end

@implementation CTCall (CTCallWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CTCall.classInitialized)
        __INIT_org_xmlvm_ios_CTCall();
}
@end

void org_xmlvm_ios_CTCall_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CTCall class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CTCall();
        org_xmlvm_ios_CTCall_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CTCall]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CTCall]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTCall___INIT___]
    CTCall* var0 = [[CTCall alloc ] init];
    org_xmlvm_ios_CTCall_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTCall___INIT___]

    CTCall* var0 = [[CTCall alloc]init];

    org_xmlvm_ios_CTCall_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTCall_getCallState__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz callState];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTCall_getCallID__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz callID];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER
