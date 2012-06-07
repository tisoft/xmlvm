
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIBarButtonItem (UIBarButtonItemWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIBarButtonItem (UIBarButtonItemWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIBarButtonItem.classInitialized)
        __INIT_org_xmlvm_ios_UIBarButtonItem();
}
@end

void org_xmlvm_ios_UIBarButtonItem_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIBarItem_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIBarButtonItem class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIBarButtonItem();
        org_xmlvm_ios_UIBarButtonItem_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIBarButtonItem]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIBarButtonItem]
__DELETE_org_xmlvm_ios_UIBarItem(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem___INIT____org_xmlvm_ios_UIImage_int_java_lang_Object_org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem___INIT____java_lang_String_int_java_lang_Object_org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem___INIT____int_java_lang_Object_org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem___INIT____org_xmlvm_ios_UIView]

    UIBarButtonItem* var0 = [[UIBarButtonItem alloc] initWithCustomView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_UIBarButtonItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem___INIT___]
    UIBarButtonItem* var0 = [[UIBarButtonItem alloc ] init];
    org_xmlvm_ios_UIBarButtonItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem___INIT___]
    UIBarButtonItem* var0 = [[UIBarButtonItem alloc ] init];
    org_xmlvm_ios_UIBarButtonItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem___INIT___]

    UIBarButtonItem* var0 = [[UIBarButtonItem alloc]init];

    org_xmlvm_ios_UIBarButtonItem_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem_getStyle__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz style];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem_setStyle___int]

    XMLVM_VAR_THIZ;
    [thiz setStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem_getWidth__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz width];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem_setWidth___float]

    XMLVM_VAR_THIZ;
    [thiz setWidth:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem_getPossibleTitles__]

    XMLVM_VAR_THIZ;
    NSSet* var0 = [thiz possibleTitles];
    
    return fromNSSet(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem_setPossibleTitles___java_util_Set]

    XMLVM_VAR_THIZ;
    NSSet * ObjCVar1 = toNSSet(n1);
    [thiz setPossibleTitles:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem_getCustomView__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz customView];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem_setCustomView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz setCustomView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem_getAction__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem_setAction___org_xmlvm_ios_SEL]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem_getTarget__]

    XMLVM_VAR_THIZ;
    NSObject* var0 = [thiz target];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem_setTarget___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz setTarget:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER
