
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSKeyedUnarchiver (NSKeyedUnarchiverWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSKeyedUnarchiver (NSKeyedUnarchiverWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSKeyedUnarchiver.classInitialized)
        __INIT_org_xmlvm_ios_NSKeyedUnarchiver();
}
@end

void org_xmlvm_ios_NSKeyedUnarchiver_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSCoder_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSKeyedUnarchiver class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSKeyedUnarchiver();
        org_xmlvm_ios_NSKeyedUnarchiver_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSKeyedUnarchiver]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSKeyedUnarchiver]
__DELETE_org_xmlvm_ios_NSCoder(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver___INIT____org_xmlvm_ios_NSData]

    NSKeyedUnarchiver* var0 = [[NSKeyedUnarchiver alloc] initForReadingWithData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSKeyedUnarchiver_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver___INIT___]
    NSKeyedUnarchiver* var0 = [[NSKeyedUnarchiver alloc ] init];
    org_xmlvm_ios_NSKeyedUnarchiver_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver___INIT___]
    NSKeyedUnarchiver* var0 = [[NSKeyedUnarchiver alloc ] init];
    org_xmlvm_ios_NSKeyedUnarchiver_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver___INIT___]

    NSKeyedUnarchiver* var0 = [[NSKeyedUnarchiver alloc]init];

    org_xmlvm_ios_NSKeyedUnarchiver_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_unarchiveObjectWithData___org_xmlvm_ios_NSData]

    NSObject* var0 =  [NSKeyedUnarchiver  unarchiveObjectWithData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_unarchiveObjectWithFile___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 =  [NSKeyedUnarchiver  unarchiveObjectWithFile:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_setDelegate___org_xmlvm_ios_NSKeyedUnarchiverDelegate]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_delegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_finishDecoding__]

    XMLVM_VAR_THIZ;
    [thiz finishDecoding];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_setClass___org_xmlvm_ios_Class_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
     [NSKeyedUnarchiver  setClass:(Class*) (((org_xmlvm_ios_Class*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forClassNameStatic:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_setClass___org_xmlvm_ios_Class_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  setClass:(Class*) (((org_xmlvm_ios_Class*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forClassName:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_classForClassName___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    Class* var0 =  [NSKeyedUnarchiver  classForClassNameStatic:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_classForClassName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    Class* var0 = [thiz  classForClassName:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_containsValueForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 = [thiz  containsValueForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_decodeObjectForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 = [thiz  decodeObjectForKey:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_decodeBoolForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 = [thiz  decodeBoolForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_decodeIntForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  decodeIntForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_decodeInt32ForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    int var0 = [thiz  decodeInt32ForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_decodeInt64ForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    long var0 = [thiz  decodeInt64ForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_decodeFloatForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    float var0 = [thiz  decodeFloatForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_decodeDoubleForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    double var0 = [thiz  decodeDoubleForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedUnarchiver_decodeBytesForKey___java_lang_String_int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
