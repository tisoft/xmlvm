
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFNull (CFNullWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFNull (CFNullWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFNull.classInitialized)
        __INIT_org_xmlvm_ios_CFNull();
}
@end

void org_xmlvm_ios_CFNull_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFNull class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFNull();
        org_xmlvm_ios_CFNull_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFNull]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFNull]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNull___INIT___]
    CFNull* var0 = [[CFNull alloc ] init];
    org_xmlvm_ios_CFNull_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNull_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER
