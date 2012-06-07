
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSKeyedArchiver (NSKeyedArchiverWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSKeyedArchiver (NSKeyedArchiverWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSKeyedArchiver.classInitialized)
        __INIT_org_xmlvm_ios_NSKeyedArchiver();
}
@end

void org_xmlvm_ios_NSKeyedArchiver_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSCoder_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSKeyedArchiver class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSKeyedArchiver();
        org_xmlvm_ios_NSKeyedArchiver_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSKeyedArchiver]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSKeyedArchiver]
__DELETE_org_xmlvm_ios_NSCoder(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver___INIT____org_xmlvm_ios_NSMutableData]

    NSKeyedArchiver* var0 = [[NSKeyedArchiver alloc] initForWritingWithMutableData:(NSMutableData*) (((org_xmlvm_ios_NSMutableData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSKeyedArchiver_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver___INIT___]
    NSKeyedArchiver* var0 = [[NSKeyedArchiver alloc ] init];
    org_xmlvm_ios_NSKeyedArchiver_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver___INIT___]
    NSKeyedArchiver* var0 = [[NSKeyedArchiver alloc ] init];
    org_xmlvm_ios_NSKeyedArchiver_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver___INIT___]

    NSKeyedArchiver* var0 = [[NSKeyedArchiver alloc]init];

    org_xmlvm_ios_NSKeyedArchiver_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_archivedDataWithRootObject___java_lang_Object]

    NSData* var0 =  [NSKeyedArchiver  archivedDataWithRootObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_archiveRootObject___java_lang_Object_java_lang_String]
NSString * ObjCVar2 = toNSString(n2);
    
    BOOL var0 =  [NSKeyedArchiver  archiveRootObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj toFile:ObjCVar2];
    [ObjCVar2 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_setDelegate___org_xmlvm_ios_NSKeyedArchiverDelegate]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_delegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_setOutputFormat___int]

    XMLVM_VAR_THIZ;
    [thiz  setOutputFormat:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_outputFormat__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz outputFormat];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_finishEncoding__]

    XMLVM_VAR_THIZ;
    [thiz finishEncoding];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_setClassName___java_lang_String_org_xmlvm_ios_Class]
NSString * ObjCVar1 = toNSString(n1);
     [NSKeyedArchiver  setClassName:ObjCVar1 forClassStatic:(Class*) (((org_xmlvm_ios_Class*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_setClassName___java_lang_String_org_xmlvm_ios_Class]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setClassName:ObjCVar1 forClass:(Class*) (((org_xmlvm_ios_Class*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_classNameForClass___org_xmlvm_ios_Class]

    NSString* var0 =  [NSKeyedArchiver  classNameForClassStatic:(Class*) (((org_xmlvm_ios_Class*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_classNameForClass___org_xmlvm_ios_Class]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  classNameForClass:(Class*) (((org_xmlvm_ios_Class*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_encodeObject___java_lang_Object_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_encodeConditionalObject___java_lang_Object_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeConditionalObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_encodeBool___boolean_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeBool:n1 forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_encodeInt___int_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeInt:n1 forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_encodeInt32___int_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeInt32:n1 forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_encodeInt64___long_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeInt64:n1 forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_encodeFloat___float_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeFloat:n1 forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_encodeDouble___double_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  encodeDouble:n1 forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSKeyedArchiver_encodeBytes___byte_1ARRAY_int_java_lang_String]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    NSString * ObjCVar3 = toNSString(n3);
    [thiz  encodeBytes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ length:n2 forKey:ObjCVar3];
    [ObjCVar3 release];


    
//XMLVM_END_WRAPPER
