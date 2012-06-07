
//XMLVM_BEGIN_IMPLEMENTATION
@interface CMAudioFormatDescription (CMAudioFormatDescriptionWrapperCategory)
+ (void) initialize_class;
@end

@implementation CMAudioFormatDescription (CMAudioFormatDescriptionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CMAudioFormatDescription.classInitialized)
        __INIT_org_xmlvm_ios_CMAudioFormatDescription();
}
@end

void org_xmlvm_ios_CMAudioFormatDescription_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CMFormatDescription_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CMAudioFormatDescription class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CMAudioFormatDescription();
        org_xmlvm_ios_CMAudioFormatDescription_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CMAudioFormatDescription]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CMAudioFormatDescription]
__DELETE_org_xmlvm_ios_CMFormatDescription(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAudioFormatDescription___INIT____org_xmlvm_ios_CFAllocator_org_xmlvm_ios_Reference_int_org_xmlvm_ios_Reference_int_byte_1ARRAY_org_xmlvm_ios_CFDictionary_org_xmlvm_ios_CMAudioFormatDescription]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    AudioStreamBasicDescription var2= toAudioStreamBasicDescription(jObject2);
    JAVA_OBJECT jObject4 = org_xmlvm_ios_Reference_get__(n4);
    AudioChannelLayout var4= toAudioChannelLayout(jObject4);
    XMLVM_VAR_BYTE_ARRAY(a6, n6); 
    
    CMAudioFormatDescription* var0 = [[CMAudioFormatDescription alloc] create:var1];
    org_xmlvm_ios_CMAudioFormatDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAudioFormatDescription___INIT___]
    CMAudioFormatDescription* var0 = [[CMAudioFormatDescription alloc ] init];
    org_xmlvm_ios_CMAudioFormatDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAudioFormatDescription___INIT____org_xmlvm_ios_CFAllocator_int_int_org_xmlvm_ios_CFDictionary_org_xmlvm_ios_Reference]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    JAVA_OBJECT jObject5 = org_xmlvm_ios_Reference_get__(n5);
    XMLVM_VAR_IOS(CMFormatDescription, var5, jObject5);
    
    CMAudioFormatDescription* var0 = [[CMAudioFormatDescription alloc] create:var1];
    org_xmlvm_ios_CMAudioFormatDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAudioFormatDescription___INIT___]
    CMAudioFormatDescription* var0 = [[CMAudioFormatDescription alloc ] init];
    org_xmlvm_ios_CMAudioFormatDescription_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAudioFormatDescription_getStreamBasicDescription__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAudioFormatDescription_getMagicCookie___int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAudioFormatDescription_getChannelLayout___int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAudioFormatDescription_getFormatList___int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAudioFormatDescription_getRichestDecodableFormat__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAudioFormatDescription_getMostCompatibleFormat__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAudioFormatDescription_createSummary___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFArray_int_org_xmlvm_ios_CMAudioFormatDescription]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAudioFormatDescription_equal___org_xmlvm_ios_CMAudioFormatDescription_int_int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
