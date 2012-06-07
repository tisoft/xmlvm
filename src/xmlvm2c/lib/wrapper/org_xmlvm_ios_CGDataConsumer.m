
//XMLVM_BEGIN_IMPLEMENTATION
@interface CGDataConsumer (CGDataConsumerWrapperCategory)
+ (void) initialize_class;
@end

@implementation CGDataConsumer (CGDataConsumerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CGDataConsumer.classInitialized)
        __INIT_org_xmlvm_ios_CGDataConsumer();
}
@end

void org_xmlvm_ios_CGDataConsumer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CGDataConsumer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CGDataConsumer();
        org_xmlvm_ios_CGDataConsumer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CGDataConsumer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGDataConsumer]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataConsumer___INIT____byte_1ARRAY_org_xmlvm_ios_Reference]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGDataConsumerCallbacks var2= toCGDataConsumerCallbacks(jObject2);
    
    CGDataConsumer* var0 = [[CGDataConsumer alloc] create:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];
    org_xmlvm_ios_CGDataConsumer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataConsumer___INIT___]
    CGDataConsumer* var0 = [[CGDataConsumer alloc ] init];
    org_xmlvm_ios_CGDataConsumer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataConsumer_getTypeID__]

    long var0 = CFHostGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataConsumer_createWithURL___org_xmlvm_ios_CFURL]
XMLVM_VAR_IOS_REF(CFURL, var1, n1);
    
    CGDataConsumer* var0 = AudioFileCreateWithURL(var1);
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataConsumer_createWithCFData___org_xmlvm_ios_CFData]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataConsumer_retain__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGDataConsumer_release__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
