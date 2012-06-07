
//XMLVM_BEGIN_IMPLEMENTATION
@interface GKMatchRequest (GKMatchRequestWrapperCategory)
+ (void) initialize_class;
@end

@implementation GKMatchRequest (GKMatchRequestWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_GKMatchRequest.classInitialized)
        __INIT_org_xmlvm_ios_GKMatchRequest();
}
@end

void org_xmlvm_ios_GKMatchRequest_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [GKMatchRequest class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_GKMatchRequest();
        org_xmlvm_ios_GKMatchRequest_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_GKMatchRequest]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_GKMatchRequest]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchRequest___INIT___]
    GKMatchRequest* var0 = [[GKMatchRequest alloc ] init];
    org_xmlvm_ios_GKMatchRequest_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchRequest___INIT___]

    GKMatchRequest* var0 = [[GKMatchRequest alloc]init];

    org_xmlvm_ios_GKMatchRequest_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchRequest_getMinPlayers__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz minPlayers];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchRequest_setMinPlayers___int]

    XMLVM_VAR_THIZ;
    [thiz setMinPlayers:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchRequest_getMaxPlayers__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz maxPlayers];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchRequest_setMaxPlayers___int]

    XMLVM_VAR_THIZ;
    [thiz setMaxPlayers:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchRequest_getPlayerGroup__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz playerGroup];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchRequest_setPlayerGroup___int]

    XMLVM_VAR_THIZ;
    [thiz setPlayerGroup:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchRequest_getPlayerAttributes__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz playerAttributes];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchRequest_setPlayerAttributes___int]

    XMLVM_VAR_THIZ;
    [thiz setPlayerAttributes:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchRequest_getPlayersToInvite__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz playersToInvite];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchRequest_setPlayersToInvite___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setPlayersToInvite:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
