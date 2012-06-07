
//XMLVM_BEGIN_IMPLEMENTATION
@interface GKLeaderboard (GKLeaderboardWrapperCategory)
+ (void) initialize_class;
@end

@implementation GKLeaderboard (GKLeaderboardWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_GKLeaderboard.classInitialized)
        __INIT_org_xmlvm_ios_GKLeaderboard();
}
@end

void org_xmlvm_ios_GKLeaderboard_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [GKLeaderboard class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_GKLeaderboard();
        org_xmlvm_ios_GKLeaderboard_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_GKLeaderboard]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_GKLeaderboard]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard___INIT___]

    GKLeaderboard* var0 = [[GKLeaderboard alloc]init];

    org_xmlvm_ios_GKLeaderboard_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard___INIT____java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    GKLeaderboard* var0 = [[GKLeaderboard alloc] initWithPlayerIDs:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_GKLeaderboard_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard___INIT___]
    GKLeaderboard* var0 = [[GKLeaderboard alloc ] init];
    org_xmlvm_ios_GKLeaderboard_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard_getTimeScope__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz timeScope];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard_setTimeScope___int]

    XMLVM_VAR_THIZ;
    [thiz setTimeScope:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard_getPlayerScope__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz playerScope];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard_setPlayerScope___int]

    XMLVM_VAR_THIZ;
    [thiz setPlayerScope:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard_getCategory__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz category];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard_setCategory___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setCategory:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard_getTitle__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz title];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard_getRange__]

    XMLVM_VAR_THIZ;
    NSRange var0 = [thiz range];
    
    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard_setRange___org_xmlvm_ios_NSRange]

    XMLVM_VAR_THIZ;
    [thiz setRange:toNSRange(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard_getScores__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz scores];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard_getMaxRange__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz maxRange];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard_getLocalPlayerScore__]

    XMLVM_VAR_THIZ;
    GKScore* var0 = [thiz localPlayerScore];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard_isLoading__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isLoading];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard_loadScoresWithCompletionHandler___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  loadScoresWithCompletionHandler:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKLeaderboard_loadCategoriesWithCompletionHandler___java_lang_Object]
 [GKLeaderboard  loadCategoriesWithCompletionHandler:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER
