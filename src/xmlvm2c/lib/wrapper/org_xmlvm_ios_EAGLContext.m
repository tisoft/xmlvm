
//XMLVM_BEGIN_IMPLEMENTATION
@interface EAGLContext (EAGLContextWrapperCategory)
+ (void) initialize_class;
@end

@implementation EAGLContext (EAGLContextWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_EAGLContext.classInitialized)
        __INIT_org_xmlvm_ios_EAGLContext();
}
@end

void org_xmlvm_ios_EAGLContext_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [EAGLContext class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_EAGLContext();
        org_xmlvm_ios_EAGLContext_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_EAGLContext]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_EAGLContext]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAGLContext___INIT____int]

    EAGLContext* var0 = [[EAGLContext alloc] initWithAPI:n1];
    org_xmlvm_ios_EAGLContext_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAGLContext___INIT____int_org_xmlvm_ios_EAGLSharegroup]

    EAGLContext* var0 = [[EAGLContext alloc] initWithAPI:n1 sharegroup:(EAGLSharegroup*) (((org_xmlvm_ios_EAGLSharegroup*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_EAGLContext_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAGLContext___INIT___]
    EAGLContext* var0 = [[EAGLContext alloc ] init];
    org_xmlvm_ios_EAGLContext_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAGLContext___INIT___]

    EAGLContext* var0 = [[EAGLContext alloc]init];

    org_xmlvm_ios_EAGLContext_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAGLContext_setCurrentContext___org_xmlvm_ios_EAGLContext]

    BOOL var0 =  [EAGLContext  setCurrentContext:(EAGLContext*) (((org_xmlvm_ios_EAGLContext*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAGLContext_ currentContext__]

    EAGLContext* var0 =  [EAGLContext  currentContext];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAGLContext_getAPI__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz API];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAGLContext_getSharegroup__]

    XMLVM_VAR_THIZ;
    EAGLSharegroup* var0 = [thiz sharegroup];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAGLContext_renderbufferStorage___int_org_xmlvm_ios_EAGLDrawable]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_EAGLContext_presentRenderbuffer___int]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  presentRenderbuffer:n1];

    return var0;
//XMLVM_END_WRAPPER
