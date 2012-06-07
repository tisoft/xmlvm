
//XMLVM_BEGIN_IMPLEMENTATION
@interface UITableView (UITableViewWrapperCategory)
+ (void) initialize_class;
@end

@implementation UITableView (UITableViewWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UITableView.classInitialized)
        __INIT_org_xmlvm_ios_UITableView();
}
@end

void org_xmlvm_ios_UITableView_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIScrollView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UITableView class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UITableView();
        org_xmlvm_ios_UITableView_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UITableView]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UITableView]
__DELETE_org_xmlvm_ios_UIScrollView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView___INIT____org_xmlvm_ios_CGRect_int]

    UITableView* var0 = [[UITableView alloc] initWithFrame:toCGRect(n1) style:n2];
    org_xmlvm_ios_UITableView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView___INIT___]
    UITableView* var0 = [[UITableView alloc ] init];
    org_xmlvm_ios_UITableView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView___INIT___]
    UITableView* var0 = [[UITableView alloc ] init];
    org_xmlvm_ios_UITableView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView___INIT____org_xmlvm_ios_CGRect]

    UITableView* var0 = [[UITableView alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UITableView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView___INIT___]
    UITableView* var0 = [[UITableView alloc ] init];
    org_xmlvm_ios_UITableView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView___INIT___]
    UITableView* var0 = [[UITableView alloc ] init];
    org_xmlvm_ios_UITableView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView___INIT___]

    UITableView* var0 = [[UITableView alloc]init];

    org_xmlvm_ios_UITableView_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_getStyle__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz style];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_getDataSource__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_setDataSource___org_xmlvm_ios_UITableViewDataSource]

    XMLVM_VAR_THIZ;
    if(thiz.dataSource!= nil) [thiz.dataSource release];
    org_xmlvm_ios_UITableViewDataSource_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UITableViewDataSource(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDataSource:jwrapper->nativeDelegateWrapper_];
    XMLVMUtil_ArrayList_add(reference_array, n1);objc_setAssociatedObject(thiz, &key, jwrapper->nativeDelegateWrapper_, OBJC_ASSOCIATION_RETAIN);
    [jwrapper->nativeDelegateWrapper_ release];
    

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_setDelegate___org_xmlvm_ios_UITableViewDelegate]

    XMLVM_VAR_THIZ;
    if(thiz.delegate!= nil) [thiz.delegate release];
    org_xmlvm_ios_UITableViewDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UITableViewDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];
    XMLVMUtil_ArrayList_add(reference_array, n1);objc_setAssociatedObject(thiz, &key, jwrapper->nativeDelegateWrapper_, OBJC_ASSOCIATION_RETAIN);
    [jwrapper->nativeDelegateWrapper_ release];
    

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_getRowHeight__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz rowHeight];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_setRowHeight___float]

    XMLVM_VAR_THIZ;
    [thiz setRowHeight:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_getSectionHeaderHeight__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz sectionHeaderHeight];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_setSectionHeaderHeight___float]

    XMLVM_VAR_THIZ;
    [thiz setSectionHeaderHeight:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_getSectionFooterHeight__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz sectionFooterHeight];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_setSectionFooterHeight___float]

    XMLVM_VAR_THIZ;
    [thiz setSectionFooterHeight:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_getBackgroundView__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz backgroundView];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_setBackgroundView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz setBackgroundView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_reloadData__]

    XMLVM_VAR_THIZ;
    [thiz reloadData];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_reloadSectionIndexTitles__]

    XMLVM_VAR_THIZ;
    [thiz reloadSectionIndexTitles];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_numberOfSections__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz numberOfSections];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_numberOfRowsInSection___int]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz  numberOfRowsInSection:n1];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_rectForSection___int]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  rectForSection:n1];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_rectForHeaderInSection___int]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  rectForHeaderInSection:n1];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_rectForFooterInSection___int]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  rectForFooterInSection:n1];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_rectForRowAtIndexPath___org_xmlvm_ios_NSIndexPath]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  rectForRowAtIndexPath:(NSIndexPath*) (((org_xmlvm_ios_NSIndexPath*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_indexPathForRowAtPoint___org_xmlvm_ios_CGPoint]

    XMLVM_VAR_THIZ;
    
    NSIndexPath* var0 = [thiz  indexPathForRowAtPoint:toCGPoint(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_indexPathForCell___org_xmlvm_ios_UITableViewCell]

    XMLVM_VAR_THIZ;
    
    NSIndexPath* var0 = [thiz  indexPathForCell:(UITableViewCell*) (((org_xmlvm_ios_UITableViewCell*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_indexPathsForRowsInRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz  indexPathsForRowsInRect:toCGRect(n1)];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_cellForRowAtIndexPath___org_xmlvm_ios_NSIndexPath]

    XMLVM_VAR_THIZ;
    
    UITableViewCell* var0 = [thiz  cellForRowAtIndexPath:(NSIndexPath*) (((org_xmlvm_ios_NSIndexPath*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_visibleCells__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz visibleCells];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_indexPathsForVisibleRows__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz indexPathsForVisibleRows];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_scrollToRowAtIndexPath___org_xmlvm_ios_NSIndexPath_int_boolean]

    XMLVM_VAR_THIZ;
    [thiz  scrollToRowAtIndexPath:(NSIndexPath*) (((org_xmlvm_ios_NSIndexPath*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) atScrollPosition:n2 animated:n3];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_scrollToNearestSelectedRowAtScrollPosition___int_boolean]

    XMLVM_VAR_THIZ;
    [thiz  scrollToNearestSelectedRowAtScrollPosition:n1 animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_beginUpdates__]

    XMLVM_VAR_THIZ;
    [thiz beginUpdates];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_endUpdates__]

    XMLVM_VAR_THIZ;
    [thiz endUpdates];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_insertSections___org_xmlvm_ios_NSIndexSet_int]

    XMLVM_VAR_THIZ;
    [thiz  insertSections:(NSIndexSet*) (((org_xmlvm_ios_NSIndexSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) withRowAnimation:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_deleteSections___org_xmlvm_ios_NSIndexSet_int]

    XMLVM_VAR_THIZ;
    [thiz  deleteSections:(NSIndexSet*) (((org_xmlvm_ios_NSIndexSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) withRowAnimation:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_reloadSections___org_xmlvm_ios_NSIndexSet_int]

    XMLVM_VAR_THIZ;
    [thiz  reloadSections:(NSIndexSet*) (((org_xmlvm_ios_NSIndexSet*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) withRowAnimation:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_insertRowsAtIndexPaths___java_util_List_int]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  insertRowsAtIndexPaths:ObjCVar1 withRowAnimation:n2];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_deleteRowsAtIndexPaths___java_util_List_int]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  deleteRowsAtIndexPaths:ObjCVar1 withRowAnimation:n2];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_reloadRowsAtIndexPaths___java_util_List_int]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz  reloadRowsAtIndexPaths:ObjCVar1 withRowAnimation:n2];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_isEditing__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isEditing];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_setEditing___boolean]

    XMLVM_VAR_THIZ;
    [thiz setEditing:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_setEditing___boolean_boolean]

    XMLVM_VAR_THIZ;
    [thiz  setEditing:n1 animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_getAllowsSelection__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz allowsSelection];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_setAllowsSelection___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAllowsSelection:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_getAllowsSelectionDuringEditing__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz allowsSelectionDuringEditing];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_setAllowsSelectionDuringEditing___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAllowsSelectionDuringEditing:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_indexPathForSelectedRow__]

    XMLVM_VAR_THIZ;
    
    NSIndexPath* var0 = [thiz indexPathForSelectedRow];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_selectRowAtIndexPath___org_xmlvm_ios_NSIndexPath_boolean_int]

    XMLVM_VAR_THIZ;
    [thiz  selectRowAtIndexPath:(NSIndexPath*) (((org_xmlvm_ios_NSIndexPath*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) animated:n2 scrollPosition:n3];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_deselectRowAtIndexPath___org_xmlvm_ios_NSIndexPath_boolean]

    XMLVM_VAR_THIZ;
    [thiz  deselectRowAtIndexPath:(NSIndexPath*) (((org_xmlvm_ios_NSIndexPath*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_getSectionIndexMinimumDisplayRowCount__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz sectionIndexMinimumDisplayRowCount];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_setSectionIndexMinimumDisplayRowCount___int]

    XMLVM_VAR_THIZ;
    [thiz setSectionIndexMinimumDisplayRowCount:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_getSeparatorStyle__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz separatorStyle];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_setSeparatorStyle___int]

    XMLVM_VAR_THIZ;
    [thiz setSeparatorStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_getSeparatorColor__]

    XMLVM_VAR_THIZ;
    UIColor* var0 = [thiz separatorColor];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_setSeparatorColor___org_xmlvm_ios_UIColor]

    XMLVM_VAR_THIZ;
    [thiz setSeparatorColor:(UIColor*) (((org_xmlvm_ios_UIColor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_getTableHeaderView__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz tableHeaderView];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_setTableHeaderView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz setTableHeaderView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_getTableFooterView__]

    XMLVM_VAR_THIZ;
    UIView* var0 = [thiz tableFooterView];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_setTableFooterView___org_xmlvm_ios_UIView]

    XMLVM_VAR_THIZ;
    [thiz setTableFooterView:(UIView*) (((org_xmlvm_ios_UIView*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UITableView_dequeueReusableCellWithIdentifier___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    UITableViewCell* var0 = [thiz  dequeueReusableCellWithIdentifier:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER
