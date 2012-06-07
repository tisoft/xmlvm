
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSMessagePort (NSMessagePortWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSMessagePort (NSMessagePortWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSMessagePort.classInitialized)
        __INIT_org_xmlvm_ios_NSMessagePort();
}
@end

void org_xmlvm_ios_NSMessagePort_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSPort_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSMessagePort class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSMessagePort();
        org_xmlvm_ios_NSMessagePort_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSMessagePort]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSMessagePort]
__DELETE_org_xmlvm_ios_NSPort(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMessagePort___INIT___]
    NSMessagePort* var0 = [[NSMessagePort alloc ] init];
    org_xmlvm_ios_NSMessagePort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMessagePort___INIT___]
    NSMessagePort* var0 = [[NSMessagePort alloc ] init];
    org_xmlvm_ios_NSMessagePort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSMessagePort___INIT___]

    NSMessagePort* var0 = [[NSMessagePort alloc]init];

    org_xmlvm_ios_NSMessagePort_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
