
//XMLVM_BEGIN_IMPLEMENTATION
@interface GKLocalPlayer (GKLocalPlayerWrapperCategory)
+ (void) initialize_class;
@end

@implementation GKLocalPlayer (GKLocalPlayerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_GKLocalPlayer.classInitialized)
        __INIT_org_xmlvm_ios_GKLocalPlayer();
}
@end

void org_xmlvm_ios_GKLocalPlayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_GKPlayer_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [GKLocalPlayer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_GKLocalPlayer();
        org_xmlvm_ios_GKLocalPlayer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_GKLocalPlayer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_GKLocalPlayer]
__DELETE_org_xmlvm_ios_GKPlayer(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLocalPlayer___INIT___]
    GKLocalPlayer* var0 = [[GKLocalPlayer alloc ] init];
    org_xmlvm_ios_GKLocalPlayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLocalPlayer___INIT___]
    GKLocalPlayer* var0 = [[GKLocalPlayer alloc ] init];
    org_xmlvm_ios_GKLocalPlayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLocalPlayer___INIT___]

    GKLocalPlayer* var0 = [[GKLocalPlayer alloc]init];

    org_xmlvm_ios_GKLocalPlayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLocalPlayer_localPlayer__]

    GKLocalPlayer* var0 =  [GKLocalPlayer localPlayer];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLocalPlayer_isAuthenticated__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isAuthenticated];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLocalPlayer_isUnderage__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isUnderage];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLocalPlayer_authenticateWithCompletionHandler___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  authenticateWithCompletionHandler:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLocalPlayer_getFriends__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz friends];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLocalPlayer_loadFriendsWithCompletionHandler___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  loadFriendsWithCompletionHandler:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER
