
//XMLVM_BEGIN_IMPLEMENTATION
@interface UIPickerView (UIPickerViewWrapperCategory)
+ (void) initialize_class;
@end

@implementation UIPickerView (UIPickerViewWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UIPickerView.classInitialized)
        __INIT_org_xmlvm_ios_UIPickerView();
}
@end

void org_xmlvm_ios_UIPickerView_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UIPickerView class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UIPickerView();
        org_xmlvm_ios_UIPickerView_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UIPickerView]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UIPickerView]
__DELETE_org_xmlvm_ios_UIView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView___INIT___]
    UIPickerView* var0 = [[UIPickerView alloc ] init];
    org_xmlvm_ios_UIPickerView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView___INIT____org_xmlvm_ios_CGRect]

    UIPickerView* var0 = [[UIPickerView alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UIPickerView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView___INIT___]
    UIPickerView* var0 = [[UIPickerView alloc ] init];
    org_xmlvm_ios_UIPickerView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView___INIT___]
    UIPickerView* var0 = [[UIPickerView alloc ] init];
    org_xmlvm_ios_UIPickerView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView___INIT___]

    UIPickerView* var0 = [[UIPickerView alloc]init];

    org_xmlvm_ios_UIPickerView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView_getDataSource__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView_setDataSource___org_xmlvm_ios_UIPickerViewDataSource]

    XMLVM_VAR_THIZ;
    if(thiz.dataSource!= nil) [thiz.dataSource release];
    org_xmlvm_ios_UIPickerViewDataSource_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UIPickerViewDataSource(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDataSource:jwrapper->nativeDelegateWrapper_];
    XMLVMUtil_ArrayList_add(reference_array, n1);objc_setAssociatedObject(thiz, &key, jwrapper->nativeDelegateWrapper_, OBJC_ASSOCIATION_RETAIN);
    [jwrapper->nativeDelegateWrapper_ release];
    

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView_setDelegate___org_xmlvm_ios_UIPickerViewDelegate]

    XMLVM_VAR_THIZ;
    if(thiz.delegate!= nil) [thiz.delegate release];
    org_xmlvm_ios_UIPickerViewDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UIPickerViewDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];
    XMLVMUtil_ArrayList_add(reference_array, n1);objc_setAssociatedObject(thiz, &key, jwrapper->nativeDelegateWrapper_, OBJC_ASSOCIATION_RETAIN);
    [jwrapper->nativeDelegateWrapper_ release];
    

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView_getShowsSelectionIndicator__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz showsSelectionIndicator];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView_setShowsSelectionIndicator___boolean]

    XMLVM_VAR_THIZ;
    [thiz setShowsSelectionIndicator:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView_getNumberOfComponents__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz numberOfComponents];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView_numberOfRowsInComponent___int]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  numberOfRowsInComponent:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView_rowSizeForComponent___int]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz  rowSizeForComponent:n1];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView_viewForRow___int_int]

    XMLVM_VAR_THIZ;
    
    UIView* var0 = [thiz  viewForRow:n1 forComponent:n2];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView_reloadAllComponents__]

    XMLVM_VAR_THIZ;
    [thiz reloadAllComponents];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView_reloadComponent___int]

    XMLVM_VAR_THIZ;
    [thiz  reloadComponent:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView_selectRow___int_int_boolean]

    XMLVM_VAR_THIZ;
    [thiz  selectRow:n1 inComponent:n2 animated:n3];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UIPickerView_selectedRowInComponent___int]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  selectedRowInComponent:n1];

    return var0;
//XMLVM_END_WRAPPER
