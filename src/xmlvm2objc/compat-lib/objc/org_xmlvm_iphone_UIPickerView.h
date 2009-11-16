
/** @author teras */

#import "xmlvm.h"

#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "org_xmlvm_iphone_UIView.h"
@class org_xmlvm_iphone_UIPickerViewDataSource;
@class org_xmlvm_iphone_UIPickerViewDelegate;

	
typedef UIPickerView org_xmlvm_iphone_UIPickerView;

@interface UIPickerView (cat_org_xmlvm_iphone_UIPickerView)

- (void) __init_org_xmlvm_iphone_UIPickerView__;
- (void) __init_org_xmlvm_iphone_UIPickerView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1;
- (int) getNumberOfComponents__;
- (int) numberOfRowsInComponent___int :(int)n1;
- (org_xmlvm_iphone_CGSize*) rowSizeForComponent___int :(int)n1;
- (void) reloadAllComponents__;
- (void) reloadComponent___int :(int)n1;
- (int) selectedRowInComponent___int :(int)n1;
- (void) selectRow___int_int_boolean :(int)n1 :(int)n2 :(int)n3;
- (org_xmlvm_iphone_UIView*) viewForRow___int_int :(int)n1 :(int)n2;
- (org_xmlvm_iphone_UIPickerViewDataSource*) getDataSource__;
- (void) setDataSource___org_xmlvm_iphone_UIPickerViewDataSource :(org_xmlvm_iphone_UIPickerViewDataSource*)n1;
- (org_xmlvm_iphone_UIPickerViewDelegate*) getDelegate__;
- (void) setDelegate___org_xmlvm_iphone_UIPickerViewDelegate :(org_xmlvm_iphone_UIPickerViewDelegate*)n1;
- (int) showsSelectionIndicator__;
- (void) setShowsSelectionIndicator___boolean :(int)n1;

@end

