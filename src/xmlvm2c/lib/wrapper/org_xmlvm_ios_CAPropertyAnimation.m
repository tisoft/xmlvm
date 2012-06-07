
//XMLVM_BEGIN_IMPLEMENTATION
@interface CAPropertyAnimation (CAPropertyAnimationWrapperCategory)
+ (void) initialize_class;
@end

@implementation CAPropertyAnimation (CAPropertyAnimationWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CAPropertyAnimation.classInitialized)
        __INIT_org_xmlvm_ios_CAPropertyAnimation();
}
@end

void org_xmlvm_ios_CAPropertyAnimation_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CAAnimation_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CAPropertyAnimation class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CAPropertyAnimation();
        org_xmlvm_ios_CAPropertyAnimation_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CAPropertyAnimation]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CAPropertyAnimation]
__DELETE_org_xmlvm_ios_CAAnimation(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAPropertyAnimation___INIT___]
    CAPropertyAnimation* var0 = [[CAPropertyAnimation alloc ] init];
    org_xmlvm_ios_CAPropertyAnimation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAPropertyAnimation___INIT___]
    CAPropertyAnimation* var0 = [[CAPropertyAnimation alloc ] init];
    org_xmlvm_ios_CAPropertyAnimation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAPropertyAnimation___INIT___]

    CAPropertyAnimation* var0 = [[CAPropertyAnimation alloc]init];

    org_xmlvm_ios_CAPropertyAnimation_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAPropertyAnimation_animationWithKeyPath___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 =  [CAPropertyAnimation  animationWithKeyPath:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAPropertyAnimation_getKeyPath__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz keyPath];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAPropertyAnimation_setKeyPath___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setKeyPath:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAPropertyAnimation_isAdditive__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isAdditive];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAPropertyAnimation_setAdditive___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAdditive:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAPropertyAnimation_isCumulative__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isCumulative];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAPropertyAnimation_setCumulative___boolean]

    XMLVM_VAR_THIZ;
    [thiz setCumulative:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAPropertyAnimation_getValueFunction__]

    XMLVM_VAR_THIZ;
    CAValueFunction* var0 = [thiz valueFunction];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAPropertyAnimation_setValueFunction___org_xmlvm_ios_CAValueFunction]

    XMLVM_VAR_THIZ;
    [thiz setValueFunction:(CAValueFunction*) (((org_xmlvm_ios_CAValueFunction*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER
