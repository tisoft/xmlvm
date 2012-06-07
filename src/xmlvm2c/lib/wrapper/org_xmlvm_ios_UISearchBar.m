
//XMLVM_BEGIN_IMPLEMENTATION
@interface UISearchBar (UISearchBarWrapperCategory)
+ (void) initialize_class;
@end

@implementation UISearchBar (UISearchBarWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_UISearchBar.classInitialized)
        __INIT_org_xmlvm_ios_UISearchBar();
}
@end

void org_xmlvm_ios_UISearchBar_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_UIView_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [UISearchBar class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_UISearchBar();
        org_xmlvm_ios_UISearchBar_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_UISearchBar]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_UISearchBar]
__DELETE_org_xmlvm_ios_UIView(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar___INIT___]
    UISearchBar* var0 = [[UISearchBar alloc ] init];
    org_xmlvm_ios_UISearchBar_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar___INIT____org_xmlvm_ios_CGRect]

    UISearchBar* var0 = [[UISearchBar alloc] initWithFrame:toCGRect(n1)];
    org_xmlvm_ios_UISearchBar_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar___INIT___]
    UISearchBar* var0 = [[UISearchBar alloc ] init];
    org_xmlvm_ios_UISearchBar_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar___INIT___]
    UISearchBar* var0 = [[UISearchBar alloc ] init];
    org_xmlvm_ios_UISearchBar_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar___INIT___]

    UISearchBar* var0 = [[UISearchBar alloc]init];

    org_xmlvm_ios_UISearchBar_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_getBarStyle__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz barStyle];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setBarStyle___int]

    XMLVM_VAR_THIZ;
    [thiz setBarStyle:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_getDelegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setDelegate___org_xmlvm_ios_UISearchBarDelegate]

    XMLVM_VAR_THIZ;
    if(thiz.delegate!= nil) [thiz.delegate release];
    org_xmlvm_ios_UISearchBarDelegate_Wrapper* jwrapper = __ALLOC_INIT_DELEGATE_WRAPPER_org_xmlvm_ios_UISearchBarDelegate(n1);
    [jwrapper->nativeDelegateWrapper_ addSource: jthiz: thiz];
    [thiz setDelegate:jwrapper->nativeDelegateWrapper_];
    XMLVMUtil_ArrayList_add(reference_array, n1);objc_setAssociatedObject(thiz, &key, jwrapper->nativeDelegateWrapper_, OBJC_ASSOCIATION_RETAIN);
    [jwrapper->nativeDelegateWrapper_ release];
    

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_getText__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz text];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setText___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setText:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_getPrompt__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz prompt];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setPrompt___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setPrompt:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_getPlaceholder__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz placeholder];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setPlaceholder___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setPlaceholder:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_getShowsBookmarkButton__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz showsBookmarkButton];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setShowsBookmarkButton___boolean]

    XMLVM_VAR_THIZ;
    [thiz setShowsBookmarkButton:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_getShowsCancelButton__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz showsCancelButton];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setShowsCancelButton___boolean]

    XMLVM_VAR_THIZ;
    [thiz setShowsCancelButton:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_getShowsSearchResultsButton__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz showsSearchResultsButton];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setShowsSearchResultsButton___boolean]

    XMLVM_VAR_THIZ;
    [thiz setShowsSearchResultsButton:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_isSearchResultsButtonSelected__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isSearchResultsButtonSelected];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setSearchResultsButtonSelected___boolean]

    XMLVM_VAR_THIZ;
    [thiz setSearchResultsButtonSelected:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setShowsCancelButton___boolean_boolean]

    XMLVM_VAR_THIZ;
    [thiz  setShowsCancelButton:n1 animated:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_getTintColor__]

    XMLVM_VAR_THIZ;
    UIColor* var0 = [thiz tintColor];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setTintColor___org_xmlvm_ios_UIColor]

    XMLVM_VAR_THIZ;
    [thiz setTintColor:(UIColor*) (((org_xmlvm_ios_UIColor*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_isTranslucent__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isTranslucent];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setTranslucent___boolean]

    XMLVM_VAR_THIZ;
    [thiz setTranslucent:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_getAutocapitalizationType__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz autocapitalizationType];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setAutocapitalizationType___int]

    XMLVM_VAR_THIZ;
    [thiz setAutocapitalizationType:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_getAutocorrectionType__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz autocorrectionType];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setAutocorrectionType___int]

    XMLVM_VAR_THIZ;
    [thiz setAutocorrectionType:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_getKeyboardType__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz keyboardType];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setKeyboardType___int]

    XMLVM_VAR_THIZ;
    [thiz setKeyboardType:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_getScopeButtonTitles__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz scopeButtonTitles];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setScopeButtonTitles___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setScopeButtonTitles:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_getSelectedScopeButtonIndex__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz selectedScopeButtonIndex];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setSelectedScopeButtonIndex___int]

    XMLVM_VAR_THIZ;
    [thiz setSelectedScopeButtonIndex:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_getShowsScopeBar__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz showsScopeBar];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_UISearchBar_setShowsScopeBar___boolean]

    XMLVM_VAR_THIZ;
    [thiz setShowsScopeBar:n1];

    
//XMLVM_END_WRAPPER
