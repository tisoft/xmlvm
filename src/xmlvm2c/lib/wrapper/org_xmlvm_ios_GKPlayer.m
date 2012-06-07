
//XMLVM_BEGIN_IMPLEMENTATION
@interface GKPlayer (GKPlayerWrapperCategory)
+ (void) initialize_class;
@end

@implementation GKPlayer (GKPlayerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_GKPlayer.classInitialized)
        __INIT_org_xmlvm_ios_GKPlayer();
}
@end

void org_xmlvm_ios_GKPlayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [GKPlayer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_GKPlayer();
        org_xmlvm_ios_GKPlayer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_GKPlayer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_GKPlayer]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKPlayer___INIT___]
    GKPlayer* var0 = [[GKPlayer alloc ] init];
    org_xmlvm_ios_GKPlayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKPlayer___INIT___]

    GKPlayer* var0 = [[GKPlayer alloc]init];

    org_xmlvm_ios_GKPlayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKPlayer_loadPlayersForIdentifiers___java_util_List_java_lang_Object]
NSArray * ObjCVar1 = toNSArray(n1);
     [GKPlayer  loadPlayersForIdentifiers:ObjCVar1 withCompletionHandler:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKPlayer_getPlayerID__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz playerID];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKPlayer_getAlias__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz alias];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKPlayer_getIsFriend__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isFriend];
    
    return var0;
//XMLVM_END_WRAPPER
