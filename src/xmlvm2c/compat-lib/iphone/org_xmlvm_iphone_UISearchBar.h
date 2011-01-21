#ifndef __ORG_XMLVM_IPHONE_UISEARCHBAR__
#define __ORG_XMLVM_IPHONE_UISEARCHBAR__

#include "xmlvm.h"
#include "org_xmlvm_iphone_UIControl.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControl
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIControl
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIControl)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_ArrayList
#define XMLVM_FORWARD_DECL_java_util_ArrayList
XMLVM_FORWARD_DECL(java_util_ArrayList)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISearchBarDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISearchBarDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UISearchBarDelegate)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIColor)
#endif
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
// Class declarations for org.xmlvm.iphone.UISearchBar
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UISearchBar, 102)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBar;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBar_ARRAYTYPE;

//XMLVM_BEGIN_DECLARATIONS
#define __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UISearchBar
//XMLVM_END_DECLARATIONS

#define __INSTANCE_FIELDS_org_xmlvm_iphone_UISearchBar \
    __INSTANCE_FIELDS_org_xmlvm_iphone_UIControl; \
    struct { \
        __ADDITIONAL_INSTANCE_FIELDS_org_xmlvm_iphone_UISearchBar \
    } org_xmlvm_iphone_UISearchBar

struct org_xmlvm_iphone_UISearchBar {
    __TIB_DEFINITION_org_xmlvm_iphone_UISearchBar* tib;
    struct {
        __INSTANCE_FIELDS_org_xmlvm_iphone_UISearchBar;
    } fields;
};
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISearchBar
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISearchBar
typedef struct org_xmlvm_iphone_UISearchBar org_xmlvm_iphone_UISearchBar;
#endif

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UISearchBar 102
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_getAutocapitalizationType__ 72
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_setAutocapitalizationType___int 73
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_getAutocorrectionType__ 74
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_setAutocorrectionType___int 75
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_getBarStyle__ 76
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_setBarStyle___int 77
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_getDelegate__ 78
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_setDelegate___org_xmlvm_iphone_UISearchBarDelegate 79
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_getKeyboardType__ 80
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_setKeyboardType___int 81
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_getPlaceholder__ 82
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_setPlaceholder___java_lang_String 83
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_getPrompt__ 84
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_setPrompt___java_lang_String 85
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_isShowsBookmarkButton__ 86
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_setShowsBookmarkButton___boolean 87
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_isShowsCancelButton__ 88
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_setShowsCancelButton___boolean 89
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_getText__ 90
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_setText___java_lang_String 91
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_getTintColor__ 92
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_setTintColor___org_xmlvm_iphone_UIColor 93
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_isTranslucent__ 94
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_setTranslucent___boolean 95
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_getScopeButtonTitles__ 96
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_setScopeButtonTitles___java_util_ArrayList 97
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_getSelectedScopeButtonIndex__ 98
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_setSelectedScopeButtonIndex___int 99
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_isShowsScopeBar__ 100
#define XMLVM_VTABLE_IDX_org_xmlvm_iphone_UISearchBar_setShowsScopeBar___boolean 101

void __INIT_org_xmlvm_iphone_UISearchBar();
void __DELETE_org_xmlvm_iphone_UISearchBar(void* me, void* client_data);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UISearchBar();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISearchBar();
void org_xmlvm_iphone_UISearchBar___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 72
JAVA_INT org_xmlvm_iphone_UISearchBar_getAutocapitalizationType__(JAVA_OBJECT me);
// Vtable index: 73
void org_xmlvm_iphone_UISearchBar_setAutocapitalizationType___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 74
JAVA_INT org_xmlvm_iphone_UISearchBar_getAutocorrectionType__(JAVA_OBJECT me);
// Vtable index: 75
void org_xmlvm_iphone_UISearchBar_setAutocorrectionType___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 76
JAVA_INT org_xmlvm_iphone_UISearchBar_getBarStyle__(JAVA_OBJECT me);
// Vtable index: 77
void org_xmlvm_iphone_UISearchBar_setBarStyle___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 78
JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getDelegate__(JAVA_OBJECT me);
// Vtable index: 79
void org_xmlvm_iphone_UISearchBar_setDelegate___org_xmlvm_iphone_UISearchBarDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 80
JAVA_INT org_xmlvm_iphone_UISearchBar_getKeyboardType__(JAVA_OBJECT me);
// Vtable index: 81
void org_xmlvm_iphone_UISearchBar_setKeyboardType___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 82
JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getPlaceholder__(JAVA_OBJECT me);
// Vtable index: 83
void org_xmlvm_iphone_UISearchBar_setPlaceholder___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 84
JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getPrompt__(JAVA_OBJECT me);
// Vtable index: 85
void org_xmlvm_iphone_UISearchBar_setPrompt___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 86
JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isShowsBookmarkButton__(JAVA_OBJECT me);
// Vtable index: 87
void org_xmlvm_iphone_UISearchBar_setShowsBookmarkButton___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 88
JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isShowsCancelButton__(JAVA_OBJECT me);
// Vtable index: 89
void org_xmlvm_iphone_UISearchBar_setShowsCancelButton___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 90
JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getText__(JAVA_OBJECT me);
// Vtable index: 91
void org_xmlvm_iphone_UISearchBar_setText___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 92
JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getTintColor__(JAVA_OBJECT me);
// Vtable index: 93
void org_xmlvm_iphone_UISearchBar_setTintColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 94
JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isTranslucent__(JAVA_OBJECT me);
// Vtable index: 95
void org_xmlvm_iphone_UISearchBar_setTranslucent___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
// Vtable index: 96
JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getScopeButtonTitles__(JAVA_OBJECT me);
// Vtable index: 97
void org_xmlvm_iphone_UISearchBar_setScopeButtonTitles___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1);
// Vtable index: 98
JAVA_INT org_xmlvm_iphone_UISearchBar_getSelectedScopeButtonIndex__(JAVA_OBJECT me);
// Vtable index: 99
void org_xmlvm_iphone_UISearchBar_setSelectedScopeButtonIndex___int(JAVA_OBJECT me, JAVA_INT n1);
// Vtable index: 100
JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isShowsScopeBar__(JAVA_OBJECT me);
// Vtable index: 101
void org_xmlvm_iphone_UISearchBar_setShowsScopeBar___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);

#endif
