
//XMLVM_BEGIN_IMPLEMENTATION
@interface UITextPosition (UITextPositionWrapperCategory)
+ (void) initialize_class;
@end

@implementation UITextPosition (UITextPositionWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UITextPosition.classInitialized)
        __INIT_org_xmlvm_ios_UITextPosition();
}
@end

void org_xmlvm_ios_UITextPosition_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UITextPosition class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UITextPosition();
        org_xmlvm_ios_UITextPosition_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UITextPosition]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UITextPosition]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextPosition___INIT___]
    UITextPosition* var0 = [[UITextPosition alloc ] init];
    org_xmlvm_ios_UITextPosition_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITextPosition___INIT___]

    UITextPosition* var0 = [[UITextPosition alloc]init];

    org_xmlvm_ios_UITextPosition_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER
