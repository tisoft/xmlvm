
//XMLVM_BEGIN_IMPLEMENTATION
@interface GKInvite (GKInviteWrapperCategory)
+ (void) initialize_class;
@end

@implementation GKInvite (GKInviteWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_GKInvite.classInitialized)
        __INIT_org_xmlvm_ios_GKInvite();
}
@end

void org_xmlvm_ios_GKInvite_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [GKInvite class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_GKInvite();
        org_xmlvm_ios_GKInvite_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_GKInvite]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_GKInvite]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKInvite___INIT___]
    GKInvite* var0 = [[GKInvite alloc ] init];
    org_xmlvm_ios_GKInvite_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKInvite___INIT___]

    GKInvite* var0 = [[GKInvite alloc]init];

    org_xmlvm_ios_GKInvite_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKInvite_getInviter__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz inviter];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKInvite_isHosted__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isHosted];
    
    return var0;
//XMLVM_END_WRAPPER
