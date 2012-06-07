
//XMLVM_BEGIN_IMPLEMENTATION
@interface CTRunDelegate (CTRunDelegateWrapperCategory)
+ (void) initialize_class;
@end

@implementation CTRunDelegate (CTRunDelegateWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CTRunDelegate.classInitialized)
        __INIT_org_xmlvm_ios_CTRunDelegate();
}
@end

void org_xmlvm_ios_CTRunDelegate_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CTRunDelegate class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CTRunDelegate();
        org_xmlvm_ios_CTRunDelegate_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CTRunDelegate]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CTRunDelegate]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTRunDelegate___INIT____org_xmlvm_ios_Reference_byte_1ARRAY]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CTRunDelegateCallbacks var1= toCTRunDelegateCallbacks(jObject1);
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    CTRunDelegate* var0 = [[CTRunDelegate alloc] create:&var1];
    org_xmlvm_ios_CTRunDelegate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTRunDelegate___INIT___]
    CTRunDelegate* var0 = [[CTRunDelegate alloc ] init];
    org_xmlvm_ios_CTRunDelegate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTRunDelegate_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTRunDelegate_getRefCon__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
