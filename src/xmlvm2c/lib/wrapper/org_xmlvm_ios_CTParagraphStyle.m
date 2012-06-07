
//XMLVM_BEGIN_IMPLEMENTATION
@interface CTParagraphStyle (CTParagraphStyleWrapperCategory)
+ (void) initialize_class;
@end

@implementation CTParagraphStyle (CTParagraphStyleWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CTParagraphStyle.classInitialized)
        __INIT_org_xmlvm_ios_CTParagraphStyle();
}
@end

void org_xmlvm_ios_CTParagraphStyle_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CTParagraphStyle class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CTParagraphStyle();
        org_xmlvm_ios_CTParagraphStyle_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CTParagraphStyle]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CTParagraphStyle]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTParagraphStyle___INIT____org_xmlvm_ios_Reference_long]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CTParagraphStyleSetting var1= toCTParagraphStyleSetting(jObject1);
    
    CTParagraphStyle* var0 = [[CTParagraphStyle alloc] create:&var1];
    org_xmlvm_ios_CTParagraphStyle_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTParagraphStyle___INIT___]
    CTParagraphStyle* var0 = [[CTParagraphStyle alloc ] init];
    org_xmlvm_ios_CTParagraphStyle_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTParagraphStyle_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTParagraphStyle_createCopy__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CTParagraphStyle_getValueForSpecifier___int_int_byte_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
