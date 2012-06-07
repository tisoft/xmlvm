
//XMLVM_BEGIN_IMPLEMENTATION
@interface CMVideoFormatDescription (CMVideoFormatDescriptionWrapperCategory)
+ (void) initialize_class;
@end

@implementation CMVideoFormatDescription (CMVideoFormatDescriptionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CMVideoFormatDescription.classInitialized)
        __INIT_org_xmlvm_ios_CMVideoFormatDescription();
}
@end

void org_xmlvm_ios_CMVideoFormatDescription_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CMFormatDescription_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CMVideoFormatDescription class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CMVideoFormatDescription();
        org_xmlvm_ios_CMVideoFormatDescription_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CMVideoFormatDescription]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CMVideoFormatDescription]
__DELETE_org_xmlvm_ios_CMFormatDescription(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMVideoFormatDescription___INIT____org_xmlvm_ios_CFAllocator_int_int_int_org_xmlvm_ios_CFDictionary_org_xmlvm_ios_CMVideoFormatDescription]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CMVideoFormatDescription* var0 = [[CMVideoFormatDescription alloc] create:var1];
    org_xmlvm_ios_CMVideoFormatDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMVideoFormatDescription___INIT___]
    CMVideoFormatDescription* var0 = [[CMVideoFormatDescription alloc ] init];
    org_xmlvm_ios_CMVideoFormatDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMVideoFormatDescription___INIT____org_xmlvm_ios_CFAllocator_int_int_org_xmlvm_ios_CFDictionary_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject5 = org_xmlvm_ios_Reference_get__(n5);
    XMLVM_VAR_IOS(CMFormatDescription, var5, jObject5);
    
    CMVideoFormatDescription* var0 = [[CMVideoFormatDescription alloc] create:var1];
    org_xmlvm_ios_CMVideoFormatDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMVideoFormatDescription___INIT___]
    CMVideoFormatDescription* var0 = [[CMVideoFormatDescription alloc ] init];
    org_xmlvm_ios_CMVideoFormatDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMVideoFormatDescription_createForImageBuffer___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CVImageBuffer_org_xmlvm_ios_CMVideoFormatDescription]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    int var0 = CMVideoFormatDescriptionCreateForImageBuffer(var1,(CVImageBuffer*) (((org_xmlvm_ios_CVImageBuffer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),(CMVideoFormatDescription*) (((org_xmlvm_ios_CMVideoFormatDescription*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMVideoFormatDescription_getDimensions__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMVideoFormatDescription_getPresentationDimensions___byte_byte]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMVideoFormatDescription_getCleanAperture___byte]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMVideoFormatDescription_getExtensionKeysCommonWithImageBuffers__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMVideoFormatDescription_matchesImageBuffer___org_xmlvm_ios_CVImageBuffer]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
