
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

static void retainWrapper(JAVA_OBJECT me, JAVA_OBJECT delegate, org_xmlvm_ios_UIBarButtonItemDelegate_Wrapper* jwrapper)
{
    XMLVM_VAR_THIZ;
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    objc_setAssociatedObject(thiz, &key, jwrapper->nativeDelegateWrapper_, OBJC_ASSOCIATION_RETAIN);
    [jwrapper->nativeDelegateWrapper_ release];
    XMLVMUtil_ArrayList_add(reference_array,delegate);
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIBarButtonItem]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIBarButtonItem]
__DELETE_org_xmlvm_ios_UIBarItem(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem___INIT____org_xmlvm_ios_UIImage_int_org_xmlvm_ios_UIBarButtonItemDelegate]

    org_xmlvm_ios_UIBarButtonItemDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UIBarButtonItemDelegate(n3);
    UIBarButtonItem* var0 = [[UIBarButtonItem alloc] initWithImage:(UIImage*) (((org_xmlvm_ios_UIImage*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)
                                                             style:n2
                                                            target:jwrapper->nativeDelegateWrapper_
                                                            action:@selector(action)];
    org_xmlvm_ios_UIBarButtonItem_INTERNAL_CONSTRUCTOR(me, var0);
    retainWrapper(me, n3, jwrapper);

//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem___INIT____java_lang_String_int_org_xmlvm_ios_UIBarButtonItemDelegate]

    NSString * ObjCVar1 = toNSString(n1);
    org_xmlvm_ios_UIBarButtonItemDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UIBarButtonItemDelegate(n3);
    UIBarButtonItem* var0 = [[UIBarButtonItem alloc] initWithTitle:ObjCVar1
                                                             style:n2
                                                            target:jwrapper->nativeDelegateWrapper_
                                                            action:@selector(action)];
    org_xmlvm_ios_UIBarButtonItem_INTERNAL_CONSTRUCTOR(me, var0);
    retainWrapper(me, n3, jwrapper);

//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIBarButtonItem___INIT____int_org_xmlvm_ios_UIBarButtonItemDelegate]

    org_xmlvm_ios_UIBarButtonItemDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UIBarButtonItemDelegate(n2);
    UIBarButtonItem* var0 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:n1
                                                                          target:jwrapper->nativeDelegateWrapper_
                                                                          action:@selector(action)];
    org_xmlvm_ios_UIBarButtonItem_INTERNAL_CONSTRUCTOR(me, var0);
    retainWrapper(me, n2, jwrapper);

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
