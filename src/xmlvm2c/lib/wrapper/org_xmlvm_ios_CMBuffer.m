
//XMLVM_BEGIN_IMPLEMENTATION
@interface CMBuffer (CMBufferWrapperCategory)
+ (void) initialize_class;
@end

@implementation CMBuffer (CMBufferWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CMBuffer.classInitialized)
        __INIT_org_xmlvm_ios_CMBuffer();
}
@end

void org_xmlvm_ios_CMBuffer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CMBuffer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CMBuffer();
        org_xmlvm_ios_CMBuffer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CMBuffer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CMBuffer]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMBuffer___INIT___]
    CMBuffer* var0 = [[CMBuffer alloc ] init];
    org_xmlvm_ios_CMBuffer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMBuffer___INIT___]
    CMBuffer* var0 = [[CMBuffer alloc ] init];
    org_xmlvm_ios_CMBuffer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
