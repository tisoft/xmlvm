
//XMLVM_BEGIN_IMPLEMENTATION
@interface CAAnimationGroup (CAAnimationGroupWrapperCategory)
+ (void) initialize_class;
@end

@implementation CAAnimationGroup (CAAnimationGroupWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CAAnimationGroup.classInitialized)
        __INIT_org_xmlvm_ios_CAAnimationGroup();
}
@end

void org_xmlvm_ios_CAAnimationGroup_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_CAAnimation_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CAAnimationGroup class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CAAnimationGroup();
        org_xmlvm_ios_CAAnimationGroup_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CAAnimationGroup]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CAAnimationGroup]
__DELETE_org_xmlvm_ios_CAAnimation(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAAnimationGroup___INIT___]
    CAAnimationGroup* var0 = [[CAAnimationGroup alloc ] init];
    org_xmlvm_ios_CAAnimationGroup_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAAnimationGroup___INIT___]
    CAAnimationGroup* var0 = [[CAAnimationGroup alloc ] init];
    org_xmlvm_ios_CAAnimationGroup_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAAnimationGroup___INIT___]

    CAAnimationGroup* var0 = [[CAAnimationGroup alloc]init];

    org_xmlvm_ios_CAAnimationGroup_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAAnimationGroup_getAnimations__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz animations];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CAAnimationGroup_setAnimations___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setAnimations:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
