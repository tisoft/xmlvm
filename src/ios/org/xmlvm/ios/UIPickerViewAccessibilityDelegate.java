package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UIPickerViewAccessibilityDelegate")
public interface UIPickerViewAccessibilityDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)pickerView:(UIPickerView *)pickerView accessibilityLabelForComponent:(NSInteger)component;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "pickerView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPickerView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "accessibilityLabelForComponent")
	})
	public abstract String accessibilityLabelForComponent(UIPickerView pickerView, int component);

	/**
	 * - (NSString *)pickerView:(UIPickerView *)pickerView accessibilityHintForComponent:(NSInteger)component;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "pickerView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPickerView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "accessibilityHintForComponent")
	})
	public abstract String accessibilityHintForComponent(UIPickerView pickerView, int component);

	/*
	 * Interface Properties
	 */
}
