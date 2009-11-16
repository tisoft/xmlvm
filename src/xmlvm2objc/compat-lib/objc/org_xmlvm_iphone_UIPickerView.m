
/** @author teras */

#import "org_xmlvm_iphone_UIPickerView.h"
#import "org_xmlvm_iphone_UIPickerViewDataSource.h"
#import "org_xmlvm_iphone_UIPickerViewDelegate.h"


@implementation UIPickerView (cat_org_xmlvm_iphone_UIPickerView)


- (void) __init_org_xmlvm_iphone_UIPickerView__ {
	[self init];
}

- (void) __init_org_xmlvm_iphone_UIPickerView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)n1 {
	[self initWithFrame:[n1 getCGRect]];
}

- (int) getNumberOfComponents__ {
	return self.numberOfComponents;
}

- (int) numberOfRowsInComponent___int :(int)n1 {
	return [self numberOfRowsInComponent:n1];
}

- (org_xmlvm_iphone_CGSize*) rowSizeForComponent___int :(int)n1 {
	CGSize size = [self rowSizeForComponent:n1];
	org_xmlvm_iphone_CGSize *s = [[org_xmlvm_iphone_CGSize alloc] init];
	s->height = size.height;
	s->width = size.width;
	return s;
}

- (void) reloadAllComponents__ {
	[self reloadAllComponents];
}

- (void) reloadComponent___int :(int)n1 {
	[self reloadComponent:n1];
}

- (int) selectedRowInComponent___int :(int)n1 {
	return [self selectedRowInComponent:n1];
}

- (void) selectRow___int_int_boolean :(int)n1 :(int)n2 :(int)n3 {
	[self selectRow:n1 inComponent:n2 animated:n3];
}

- (org_xmlvm_iphone_UIView*) viewForRow___int_int :(int)n1 :(int)n2 {
	return [[self viewForRow:n1 forComponent:n2] retain];
}

- (org_xmlvm_iphone_UIPickerViewDataSource*) getDataSource__ {
	return [self.dataSource retain];
}

- (void) setDataSource___org_xmlvm_iphone_UIPickerViewDataSource :(org_xmlvm_iphone_UIPickerViewDataSource*)n1 {
	self.dataSource = n1;
}

- (org_xmlvm_iphone_UIPickerViewDelegate*) getDelegate__ {
	return [self.delegate retain];
}

- (void) setDelegate___org_xmlvm_iphone_UIPickerViewDelegate :(org_xmlvm_iphone_UIPickerViewDelegate*)n1 {
	self.delegate = n1;
}

- (int) showsSelectionIndicator__ {
	return self.showsSelectionIndicator;
}

- (void) setShowsSelectionIndicator___boolean :(int)n1 {
	self.showsSelectionIndicator = n1;
}



@end

