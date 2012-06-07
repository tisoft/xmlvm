
//XMLVM_BEGIN_IMPLEMENTATION
@interface UISegmentedControl (UISegmentedControlWrapperCategory)
+ (void) initialize_class;
@end

@implementation UISegmentedControl (UISegmentedControlWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UISegmentedControl.classInitialized)
        __INIT_org_xmlvm_ios_UISegmentedControl();
}
@end

void org_xmlvm_ios_UISegmentedControl_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIControl_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UISegmentedControl class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UISegmentedControl();
        org_xmlvm_ios_UISegmentedControl_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UISegmentedControl]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UISegmentedControl]
__DELETE_org_xmlvm_ios_UIControl(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl___INIT____java_util_List]
NSArray * ObjCVar1 = toNSArray(n1);
    
    UISegmentedControl* var0 = [[UISegmentedControl alloc] initWithItems:ObjCVar1];
    [ObjCVar1 release];

    org_xmlvm_ios_UISegmentedControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl___INIT___]
    UISegmentedControl* var0 = [[UISegmentedControl alloc ] init];
    org_xmlvm_ios_UISegmentedControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl___INIT___]
    UISegmentedControl* var0 = [[UISegmentedControl alloc ] init];
    org_xmlvm_ios_UISegmentedControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl___INIT____org_xmlvm_ios_CGRect]

    UISegmentedControl* var0 = [[UISegmentedControl alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UISegmentedControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl___INIT___]
    UISegmentedControl* var0 = [[UISegmentedControl alloc ] init];
    org_xmlvm_ios_UISegmentedControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl___INIT___]
    UISegmentedControl* var0 = [[UISegmentedControl alloc ] init];
    org_xmlvm_ios_UISegmentedControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl___INIT___]

    UISegmentedControl* var0 = [[UISegmentedControl alloc]init];

    org_xmlvm_ios_UISegmentedControl_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_getSegmentedControlStyle__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz segmentedControlStyle];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_setSegmentedControlStyle___int]

    XMLVM_VAR_THIZ;
    [thiz setSegmentedControlStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_isMomentary__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isMomentary];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_setMomentary___boolean]

    XMLVM_VAR_THIZ;
    [thiz setMomentary:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_getTintColor__]

    XMLVM_VAR_THIZ;
    UIColor* var0 = [thiz tintColor];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_setTintColor___org_xmlvm_ios_UIColor]

    XMLVM_VAR_THIZ;
    [thiz setTintColor:(UIColor*) (((org_xmlvm_ios_UIColor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_getNumberOfSegments__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfSegments];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_insertSegmentWithTitle___java_lang_String_int_boolean]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  insertSegmentWithTitle:ObjCVar1 atIndex:n2 animated:n3];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_insertSegmentWithImage___org_xmlvm_ios_UIImage_int_boolean]

    XMLVM_VAR_THIZ;
    [thiz  insertSegmentWithImage:(UIImage*) (((org_xmlvm_ios_UIImage*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) atIndex:n2 animated:n3];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_removeSegmentAtIndex___int_boolean]

    XMLVM_VAR_THIZ;
    [thiz  removeSegmentAtIndex:n1 animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_removeAllSegments__]

    XMLVM_VAR_THIZ;
    [thiz removeAllSegments];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_setTitle___java_lang_String_int]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  setTitle:ObjCVar1 forSegmentAtIndex:n2];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_titleForSegmentAtIndex___int]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz  titleForSegmentAtIndex:n1];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_setImage___org_xmlvm_ios_UIImage_int]

    XMLVM_VAR_THIZ;
    [thiz  setImage:(UIImage*) (((org_xmlvm_ios_UIImage*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forSegmentAtIndex:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_imageForSegmentAtIndex___int]

    XMLVM_VAR_THIZ;
    
    UIImage* var0 = [thiz  imageForSegmentAtIndex:n1];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_setWidth___float_int]

    XMLVM_VAR_THIZ;
    [thiz  setWidth:n1 forSegmentAtIndex:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_widthForSegmentAtIndex___int]

    XMLVM_VAR_THIZ;
    
    float var0 = [thiz  widthForSegmentAtIndex:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_setContentOffset___org_xmlvm_ios_CGSize_int]

    XMLVM_VAR_THIZ;
    [thiz  setContentOffset:toCGSize(n1) forSegmentAtIndex:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_contentOffsetForSegmentAtIndex___int]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz  contentOffsetForSegmentAtIndex:n1];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_setEnabled___boolean_int]

    XMLVM_VAR_THIZ;
    [thiz  setEnabled:n1 forSegmentAtIndex:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_isEnabledForSegmentAtIndex___int]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  isEnabledForSegmentAtIndex:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_getSelectedSegmentIndex__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz selectedSegmentIndex];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISegmentedControl_setSelectedSegmentIndex___int]

    XMLVM_VAR_THIZ;
    [thiz setSelectedSegmentIndex:n1];

    
//XMLVM_END_WRAPPER
