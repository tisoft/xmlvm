
/** @author teras */

#import "org_xmlvm_iphone_UIPickerViewDelegate.h"

@implementation org_xmlvm_iphone_UIPickerViewDelegate

- (void) __init_org_xmlvm_iphone_UIPickerViewDelegate__ {
	//[self init];
}

- (float) rowHeightForComponent___org_xmlvm_iphone_UIPickerView_int :(org_xmlvm_iphone_UIPickerView*)pview :(int)comp {
	return [self pickerView:pview rowHeightForComponent:comp];
}

- (float) widthForComponent___org_xmlvm_iphone_UIPickerView_int :(org_xmlvm_iphone_UIPickerView*)pview :(int)comp {
	return [self pickerView:pview widthForComponent:comp];
}

- (org_xmlvm_iphone_UIView*) viewForRow___org_xmlvm_iphone_UIPickerView_int_int_org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIPickerView*)pview :(int)row :(int)comp :(org_xmlvm_iphone_UIView*)view {
	return [[self pickerView:pview viewForRow:row forComponent:comp reusingView:view] retain];
}

- (void) didSelectRow___org_xmlvm_iphone_UIPickerView_int_int :(org_xmlvm_iphone_UIPickerView*)pview :(int)row :(int)comp {
	[self pickerView:pview didSelectRow:row inComponent:comp];
}

- (java_lang_String*) titleForRow___org_xmlvm_iphone_UIPickerView_int_int :(org_xmlvm_iphone_UIPickerView*)pview :(int)row :(int)comp {
	return [[self pickerView:pview titleForRow:row forComponent:comp] retain];
}


@end

