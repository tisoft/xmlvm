
//XMLVM_BEGIN_IMPLEMENTATION
@interface CFNetDiagnostic (CFNetDiagnosticWrapperCategory)
+ (void) initialize_class;
@end

@implementation CFNetDiagnostic (CFNetDiagnosticWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CFNetDiagnostic.classInitialized)
        __INIT_org_xmlvm_ios_CFNetDiagnostic();
}
@end

void org_xmlvm_ios_CFNetDiagnostic_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CFNetDiagnostic class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CFNetDiagnostic();
        org_xmlvm_ios_CFNetDiagnostic_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CFNetDiagnostic]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CFNetDiagnostic]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetDiagnostic___INIT___]
    CFNetDiagnostic* var0 = [[CFNetDiagnostic alloc ] init];
    org_xmlvm_ios_CFNetDiagnostic_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetDiagnostic_createWithStreams___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFReadStream_org_xmlvm_ios_CFWriteStream]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    
    CFNetDiagnostic* var0 = CFNetDiagnosticCreateWithStreams(var1,(CFReadStream*) (((org_xmlvm_ios_CFReadStream*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj),(CFWriteStream*) (((org_xmlvm_ios_CFWriteStream*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj));
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetDiagnostic_createWithURL___org_xmlvm_ios_CFAllocator_org_xmlvm_ios_CFURL]
XMLVM_VAR_IOS_REF(CFAllocator, var1, n1);
    XMLVM_VAR_IOS_REF(CFURL, var2, n2);
    
    CFNetDiagnostic* var0 = AudioFileCreateWithURL(var1,var2);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetDiagnostic_setName___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetDiagnostic_diagnoseProblemInteractively__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CFNetDiagnostic_copyNetworkStatusPassively___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
