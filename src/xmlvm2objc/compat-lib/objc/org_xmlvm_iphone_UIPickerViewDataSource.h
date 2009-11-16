
/** @author teras */

#import "xmlvm.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_UIPickerView.h"
	
@interface org_xmlvm_iphone_UIPickerViewDataSource : java_lang_Object <UIPickerViewDataSource>

- (int) numberOfComponentsInPickerView___org_xmlvm_iphone_UIPickerView :(org_xmlvm_iphone_UIPickerView*)pview;
- (int) numberOfRowsInComponent___org_xmlvm_iphone_UIPickerView_int :(org_xmlvm_iphone_UIPickerView*)pview :(int)comp;

@end

