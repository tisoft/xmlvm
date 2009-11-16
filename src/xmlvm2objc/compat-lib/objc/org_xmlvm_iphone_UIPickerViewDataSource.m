
/** @author teras */

#import "org_xmlvm_iphone_UIPickerViewDataSource.h"

@implementation org_xmlvm_iphone_UIPickerViewDataSource

- (int) numberOfComponentsInPickerView___org_xmlvm_iphone_UIPickerView :(org_xmlvm_iphone_UIPickerView*)pview {
	return [self numberOfComponentsInPickerView:pview];
}



- (int) numberOfRowsInComponent___org_xmlvm_iphone_UIPickerView_int :(org_xmlvm_iphone_UIPickerView*)pview :(int)comp {
	return [self pickerView:pview numberOfRowsInComponent:comp];
}

@end