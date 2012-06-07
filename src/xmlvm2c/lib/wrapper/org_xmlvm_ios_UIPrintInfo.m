
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIPrintInfo (UIPrintInfoWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIPrintInfo (UIPrintInfoWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIPrintInfo.classInitialized)
        __INIT_org_xmlvm_ios_UIPrintInfo();
}
@end

void org_xmlvm_ios_UIPrintInfo_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIPrintInfo class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIPrintInfo();
        org_xmlvm_ios_UIPrintInfo_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIPrintInfo]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIPrintInfo]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInfo___INIT___]
    UIPrintInfo* var0 = [[UIPrintInfo alloc ] init];
    org_xmlvm_ios_UIPrintInfo_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInfo___INIT___]

    UIPrintInfo* var0 = [[UIPrintInfo alloc]init];

    org_xmlvm_ios_UIPrintInfo_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInfo_printInfo__]

    UIPrintInfo* var0 =  [UIPrintInfo printInfo];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInfo_printInfoWithDictionary___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInfo_dictionaryRepresentation__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInfo_getPrinterID__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz printerID];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInfo_setPrinterID___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setPrinterID:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInfo_getJobName__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz jobName];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInfo_setJobName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setJobName:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInfo_getOutputType__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz outputType];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInfo_setOutputType___int]

    XMLVM_VAR_THIZ;
    [thiz setOutputType:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInfo_getOrientation__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz orientation];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInfo_setOrientation___int]

    XMLVM_VAR_THIZ;
    [thiz setOrientation:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInfo_getDuplex__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz duplex];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPrintInfo_setDuplex___int]

    XMLVM_VAR_THIZ;
    [thiz setDuplex:n1];

    
//XMLVM_END_WRAPPER
