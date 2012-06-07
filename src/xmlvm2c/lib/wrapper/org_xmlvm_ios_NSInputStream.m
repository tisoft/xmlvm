
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSInputStream (NSInputStreamWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSInputStream (NSInputStreamWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSInputStream.classInitialized)
        __INIT_org_xmlvm_ios_NSInputStream();
}
@end

void org_xmlvm_ios_NSInputStream_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSStream_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSInputStream class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSInputStream();
        org_xmlvm_ios_NSInputStream_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSInputStream]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSInputStream]
__DELETE_org_xmlvm_ios_NSStream(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInputStream___INIT____org_xmlvm_ios_NSData]

    NSInputStream* var0 = [[NSInputStream alloc] initWithData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSInputStream_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInputStream___INIT____java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSInputStream* var0 = [[NSInputStream alloc] initWithFileAtPath:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_NSInputStream_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInputStream___INIT____org_xmlvm_ios_NSURL]

    NSInputStream* var0 = [[NSInputStream alloc] initWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSInputStream_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInputStream___INIT___]
    NSInputStream* var0 = [[NSInputStream alloc ] init];
    org_xmlvm_ios_NSInputStream_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInputStream___INIT___]
    NSInputStream* var0 = [[NSInputStream alloc ] init];
    org_xmlvm_ios_NSInputStream_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInputStream___INIT___]

    NSInputStream* var0 = [[NSInputStream alloc]init];

    org_xmlvm_ios_NSInputStream_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInputStream_read___byte_1ARRAY_int]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    int var0 = [thiz  read:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ maxLength:n2];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInputStream_getBuffer___byte_2ARRAY_int_1ARRAY]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInputStream_hasBytesAvailable__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz hasBytesAvailable];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInputStream_inputStreamWithData___org_xmlvm_ios_NSData]

    NSInputStream* var0 =  [NSInputStream  inputStreamWithData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInputStream_inputStreamWithFileAtPath___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSInputStream* var0 =  [NSInputStream  inputStreamWithFileAtPath:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSInputStream_inputStreamWithURL___org_xmlvm_ios_NSURL]

    NSInputStream* var0 =  [NSInputStream  inputStreamWithURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
