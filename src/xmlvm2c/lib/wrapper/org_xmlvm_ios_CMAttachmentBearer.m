
//XMLVM_BEGIN_IMPLEMENTATION
@interface CMAttachmentBearer (CMAttachmentBearerWrapperCategory)
+ (void) initialize_class;
@end

@implementation CMAttachmentBearer (CMAttachmentBearerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CMAttachmentBearer.classInitialized)
        __INIT_org_xmlvm_ios_CMAttachmentBearer();
}
@end

void org_xmlvm_ios_CMAttachmentBearer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CMAttachmentBearer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CMAttachmentBearer();
        org_xmlvm_ios_CMAttachmentBearer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CMAttachmentBearer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CMAttachmentBearer]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAttachmentBearer___INIT___]
    CMAttachmentBearer* var0 = [[CMAttachmentBearer alloc ] init];
    org_xmlvm_ios_CMAttachmentBearer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CMAttachmentBearer___INIT___]
    CMAttachmentBearer* var0 = [[CMAttachmentBearer alloc ] init];
    org_xmlvm_ios_CMAttachmentBearer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
