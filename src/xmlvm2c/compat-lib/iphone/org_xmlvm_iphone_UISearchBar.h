#ifndef __ORG_XMLVM_IPHONE_UISEARCHBAR__
#define __ORG_XMLVM_IPHONE_UISEARCHBAR__

#include "xmlvm.h"

// Preprocessor constants for interfaces:
// Implemented interfaces:
// Super Class:
#include "org_xmlvm_iphone_UIControl.h"

// Circular references:
#ifndef XMLVM_FORWARD_DECL_java_lang_String
#define XMLVM_FORWARD_DECL_java_lang_String
XMLVM_FORWARD_DECL(java_lang_String)
#endif
#ifndef XMLVM_FORWARD_DECL_java_util_ArrayList
#define XMLVM_FORWARD_DECL_java_util_ArrayList
XMLVM_FORWARD_DECL(java_util_ArrayList)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_CGRect
XMLVM_FORWARD_DECL(org_xmlvm_iphone_CGRect)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UIColor
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UIColor)
#endif
#ifndef XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISearchBarDelegate
#define XMLVM_FORWARD_DECL_org_xmlvm_iphone_UISearchBarDelegate
XMLVM_FORWARD_DECL(org_xmlvm_iphone_UISearchBarDelegate)
#endif
// Class declarations for org.xmlvm.iphone.UISearchBar
XMLVM_DEFINE_CLASS(org_xmlvm_iphone_UISearchBar, 13, XMLVM_ITABLE_SIZE_org_xmlvm_iphone_UISearchBar)

extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBar;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBar_1ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBar_2ARRAY;
extern JAVA_OBJECT __CLASS_org_xmlvm_iphone_UISearchBar_3ARRAY;
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

#define XMLVM_VTABLE_SIZE_org_xmlvm_iphone_UISearchBar 13

void __INIT_org_xmlvm_iphone_UISearchBar();
void __INIT_IMPL_org_xmlvm_iphone_UISearchBar();
void __DELETE_org_xmlvm_iphone_UISearchBar(void* me, void* client_data);
void __INIT_INSTANCE_MEMBERS_org_xmlvm_iphone_UISearchBar(JAVA_OBJECT me, int derivedClassWillRegisterFinalizer);
JAVA_OBJECT __NEW_org_xmlvm_iphone_UISearchBar();
JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_UISearchBar();
void org_xmlvm_iphone_UISearchBar___INIT___(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar___INIT____org_xmlvm_iphone_CGRect(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_INT org_xmlvm_iphone_UISearchBar_getAutocapitalizationType__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar_setAutocapitalizationType___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_INT org_xmlvm_iphone_UISearchBar_getAutocorrectionType__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar_setAutocorrectionType___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_INT org_xmlvm_iphone_UISearchBar_getBarStyle__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar_setBarStyle___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getDelegate__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar_setDelegate___org_xmlvm_iphone_UISearchBarDelegate(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_INT org_xmlvm_iphone_UISearchBar_getKeyboardType__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar_setKeyboardType___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getPlaceholder__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar_setPlaceholder___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getPrompt__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar_setPrompt___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isShowsBookmarkButton__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar_setShowsBookmarkButton___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isShowsCancelButton__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar_setShowsCancelButton___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getText__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar_setText___java_lang_String(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getTintColor__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar_setTintColor___org_xmlvm_iphone_UIColor(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isTranslucent__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar_setTranslucent___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);
JAVA_OBJECT org_xmlvm_iphone_UISearchBar_getScopeButtonTitles__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar_setScopeButtonTitles___java_util_ArrayList(JAVA_OBJECT me, JAVA_OBJECT n1);
JAVA_INT org_xmlvm_iphone_UISearchBar_getSelectedScopeButtonIndex__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar_setSelectedScopeButtonIndex___int(JAVA_OBJECT me, JAVA_INT n1);
JAVA_BOOLEAN org_xmlvm_iphone_UISearchBar_isShowsScopeBar__(JAVA_OBJECT me);
void org_xmlvm_iphone_UISearchBar_setShowsScopeBar___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1);

// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too
#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UISearchBar \
XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_org_xmlvm_iphone_UIControl \

// Define a Macro for the entire contents of the Obj-C wrapper class
#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UISearchBar \
XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_org_xmlvm_iphone_UIControl \


#endif
