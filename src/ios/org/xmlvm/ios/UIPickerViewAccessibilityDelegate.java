package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIPickerViewAccessibilityDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)pickerView:(UIPickerView *)pickerView accessibilityLabelForComponent:(NSInteger)component;
	 */
	public abstract String accessibilityLabelForComponent(UIPickerView pickerView, int component);

	/**
	 * - (NSString *)pickerView:(UIPickerView *)pickerView accessibilityHintForComponent:(NSInteger)component;
	 */
	public abstract String accessibilityHintForComponent(UIPickerView pickerView, int component);
}
