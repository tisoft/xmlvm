
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFDate (CFDateWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFDate (CFDateWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFDate.classInitialized)
        __INIT_org_xmlvm_ios_CFDate();
}
@end

void org_xmlvm_ios_CFDate_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFDate class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFDate();
        org_xmlvm_ios_CFDate_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFDate]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFDate]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFDate___INIT____org_xmlvm_ios_CFAllocator_double]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFDate* var0 = [[CFDate alloc] create:var1];
    org_xmlvm_ios_CFDate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFDate___INIT___]
    CFDate* var0 = [[CFDate alloc ] init];
    org_xmlvm_ios_CFDate_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFDate_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFDate_getAbsoluteTime__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFDate_getTimeIntervalSinceDate___org_xmlvm_ios_NSDate]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFDate_compare___org_xmlvm_ios_NSDate_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
