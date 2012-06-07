
//XMLVM_BEGIN_IMPLEMENTATION
@interface GKMatchmaker (GKMatchmakerWrapperCategory)
+ (void) initialize_class;
@end

@implementation GKMatchmaker (GKMatchmakerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_GKMatchmaker.classInitialized)
        __INIT_org_xmlvm_ios_GKMatchmaker();
}
@end

void org_xmlvm_ios_GKMatchmaker_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [GKMatchmaker class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_GKMatchmaker();
        org_xmlvm_ios_GKMatchmaker_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_GKMatchmaker]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_GKMatchmaker]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmaker___INIT___]
    GKMatchmaker* var0 = [[GKMatchmaker alloc ] init];
    org_xmlvm_ios_GKMatchmaker_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmaker___INIT___]

    GKMatchmaker* var0 = [[GKMatchmaker alloc]init];

    org_xmlvm_ios_GKMatchmaker_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmaker_sharedMatchmaker__]

    GKMatchmaker* var0 =  [GKMatchmaker sharedMatchmaker];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmaker_findMatchForRequest___org_xmlvm_ios_GKMatchRequest_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  findMatchForRequest:(GKMatchRequest*) (((org_xmlvm_ios_GKMatchRequest*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) withCompletionHandler:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmaker_findPlayersForHostedMatchRequest___org_xmlvm_ios_GKMatchRequest_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  findPlayersForHostedMatchRequest:(GKMatchRequest*) (((org_xmlvm_ios_GKMatchRequest*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) withCompletionHandler:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmaker_addPlayersToMatch___org_xmlvm_ios_GKMatch_org_xmlvm_ios_GKMatchRequest_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  addPlayersToMatch:(GKMatch*) (((org_xmlvm_ios_GKMatch*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) matchRequest:(GKMatchRequest*) (((org_xmlvm_ios_GKMatchRequest*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj) completionHandler:((org_xmlvm_ios_NSObject*) n3)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmaker_cancel__]

    XMLVM_VAR_THIZ;
    [thiz cancel];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmaker_queryPlayerGroupActivity___int_java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  queryPlayerGroupActivity:n1 withCompletionHandler:((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_GKMatchmaker_queryActivityWithCompletionHandler___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz  queryActivityWithCompletionHandler:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER
