
//XMLVM_BEGIN_IMPLEMENTATION
@interface CMMuxedFormatDescription (CMMuxedFormatDescriptionWrapperCategory)
+ (void) initialize_class;
@end

@implementation CMMuxedFormatDescription (CMMuxedFormatDescriptionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CMMuxedFormatDescription.classInitialized)
        __INIT_org_xmlvm_ios_CMMuxedFormatDescription();
}
@end

void org_xmlvm_ios_CMMuxedFormatDescription_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CMFormatDescription_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CMMuxedFormatDescription class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CMMuxedFormatDescription();
        org_xmlvm_ios_CMMuxedFormatDescription_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CMMuxedFormatDescription]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CMMuxedFormatDescription]
__DELETE_org_xmlvm_ios_CMFormatDescription(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMuxedFormatDescription___INIT____org_xmlvm_ios_CFAllocator_int_org_xmlvm_ios_CFDictionary_org_xmlvm_ios_CMMuxedFormatDescription]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CMMuxedFormatDescription* var0 = [[CMMuxedFormatDescription alloc] create:var1];
    org_xmlvm_ios_CMMuxedFormatDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMuxedFormatDescription___INIT___]
    CMMuxedFormatDescription* var0 = [[CMMuxedFormatDescription alloc ] init];
    org_xmlvm_ios_CMMuxedFormatDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMuxedFormatDescription___INIT____org_xmlvm_ios_CFAllocator_int_int_org_xmlvm_ios_CFDictionary_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject5 = org_xmlvm_ios_Reference_get__(n5);
    XMLVM_VAR_IOS(CMFormatDescription, var5, jObject5);
    
    CMMuxedFormatDescription* var0 = [[CMMuxedFormatDescription alloc] create:var1];
    org_xmlvm_ios_CMMuxedFormatDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMMuxedFormatDescription___INIT___]
    CMMuxedFormatDescription* var0 = [[CMMuxedFormatDescription alloc ] init];
    org_xmlvm_ios_CMMuxedFormatDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
