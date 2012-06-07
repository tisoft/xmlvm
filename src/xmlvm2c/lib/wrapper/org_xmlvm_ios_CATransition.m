
//XMLVM_BEGIN_IMPLEMENTATION
@interface CATransition (CATransitionWrapperCategory)
+ (void) initialize_class;
@end

@implementation CATransition (CATransitionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CATransition.classInitialized)
        __INIT_org_xmlvm_ios_CATransition();
}
@end

void org_xmlvm_ios_CATransition_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CAAnimation_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CATransition class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CATransition();
        org_xmlvm_ios_CATransition_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CATransition]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CATransition]
__DELETE_org_xmlvm_ios_CAAnimation(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransition___INIT___]
    CATransition* var0 = [[CATransition alloc ] init];
    org_xmlvm_ios_CATransition_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransition___INIT___]
    CATransition* var0 = [[CATransition alloc ] init];
    org_xmlvm_ios_CATransition_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransition___INIT___]

    CATransition* var0 = [[CATransition alloc]init];

    org_xmlvm_ios_CATransition_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransition_getType__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz type];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransition_setType___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setType:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransition_getSubtype__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz subtype];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransition_setSubtype___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setSubtype:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransition_getEndProgress__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz endProgress];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransition_setEndProgress___float]

    XMLVM_VAR_THIZ;
    [thiz setEndProgress:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransition_getStartProgress__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz startProgress];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransition_setStartProgress___float]

    XMLVM_VAR_THIZ;
    [thiz setStartProgress:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransition_getFilter__]

    XMLVM_VAR_THIZ;
    NSObject* var0 = [thiz filter];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CATransition_setFilter___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz setFilter:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER
