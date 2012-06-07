
//XMLVM_BEGIN_IMPLEMENTATION
@interface CTTextTab (CTTextTabWrapperCategory)
+ (void) initialize_class;
@end

@implementation CTTextTab (CTTextTabWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CTTextTab.classInitialized)
        __INIT_org_xmlvm_ios_CTTextTab();
}
@end

void org_xmlvm_ios_CTTextTab_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CTTextTab class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CTTextTab();
        org_xmlvm_ios_CTTextTab_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CTTextTab]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CTTextTab]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTextTab___INIT____byte_double_org_xmlvm_ios_CFDictionary]

    CTTextTab* var0 = [[CTTextTab alloc] create:n1];
    org_xmlvm_ios_CTTextTab_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTextTab___INIT___]
    CTTextTab* var0 = [[CTTextTab alloc ] init];
    org_xmlvm_ios_CTTextTab_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTextTab_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTextTab_getAlignment__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTextTab_getLocation__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTextTab_getOptions__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
