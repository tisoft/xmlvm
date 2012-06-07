
//XMLVM_BEGIN_IMPLEMENTATION
@interface CTTypesetter (CTTypesetterWrapperCategory)
+ (void) initialize_class;
@end

@implementation CTTypesetter (CTTypesetterWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CTTypesetter.classInitialized)
        __INIT_org_xmlvm_ios_CTTypesetter();
}
@end

void org_xmlvm_ios_CTTypesetter_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CTTypesetter class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CTTypesetter();
        org_xmlvm_ios_CTTypesetter_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CTTypesetter]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CTTypesetter]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTypesetter___INIT___]
    CTTypesetter* var0 = [[CTTypesetter alloc ] init];
    org_xmlvm_ios_CTTypesetter_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTypesetter_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTypesetter_createWithAttributedString___org_xmlvm_ios_CFAttributedString]

    CTTypesetter* var0 = CTFramesetterCreateWithAttributedString((CFAttributedString*) (((org_xmlvm_ios_CFAttributedString*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTypesetter_createWithAttributedStringAndOptions___org_xmlvm_ios_CFAttributedString_org_xmlvm_ios_CFDictionary]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTypesetter_createLineWithOffset___org_xmlvm_ios_CFRange_double]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTypesetter_createLine___org_xmlvm_ios_CFRange]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTypesetter_suggestLineBreakWithOffset___long_double_double]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTypesetter_suggestLineBreak___long_double]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTypesetter_suggestClusterBreakWithOffset___long_double_double]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTTypesetter_suggestClusterBreak___long_double]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
