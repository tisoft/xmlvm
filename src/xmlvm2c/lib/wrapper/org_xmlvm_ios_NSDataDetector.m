
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSDataDetector (NSDataDetectorWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSDataDetector (NSDataDetectorWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSDataDetector.classInitialized)
        __INIT_org_xmlvm_ios_NSDataDetector();
}
@end

void org_xmlvm_ios_NSDataDetector_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSRegularExpression_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSDataDetector class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSDataDetector();
        org_xmlvm_ios_NSDataDetector_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSDataDetector]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSDataDetector]
__DELETE_org_xmlvm_ios_NSRegularExpression(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDataDetector___INIT____long_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    NSDataDetector* var0 = [[NSDataDetector alloc] initWithTypes:n1 error:&var2];
    org_xmlvm_ios_NSDataDetector_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDataDetector___INIT___]
    NSDataDetector* var0 = [[NSDataDetector alloc ] init];
    org_xmlvm_ios_NSDataDetector_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDataDetector___INIT____java_lang_String_int_org_xmlvm_ios_Reference]
NSString * ObjCVar1 = toNSString(n1);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    XMLVM_VAR_IOS(NSError, var3, jObject3);
    
    NSDataDetector* var0 = [[NSDataDetector alloc] initWithPattern:ObjCVar1 options:n2 error:&var3];
    [ObjCVar1 release];

    org_xmlvm_ios_NSDataDetector_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDataDetector___INIT___]
    NSDataDetector* var0 = [[NSDataDetector alloc ] init];
    org_xmlvm_ios_NSDataDetector_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDataDetector___INIT___]

    NSDataDetector* var0 = [[NSDataDetector alloc]init];

    org_xmlvm_ios_NSDataDetector_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDataDetector_dataDetectorWithTypes___long_org_xmlvm_ios_Reference]
JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    XMLVM_VAR_IOS(NSError, var2, jObject2);
    
    NSDataDetector* var0 =  [NSDataDetector  dataDetectorWithTypes:n1 error:&var2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSDataDetector_getCheckingTypes__]

    XMLVM_VAR_THIZ;
    long var0 = [thiz checkingTypes];
    
    return var0;
//XMLVM_END_WRAPPER
