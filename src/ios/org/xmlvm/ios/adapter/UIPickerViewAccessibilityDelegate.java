package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UIPickerViewAccessibilityDelegate implements org.xmlvm.ios.UIPickerViewAccessibilityDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)pickerView:(UIPickerView *)pickerView accessibilityLabelForComponent:(NSInteger)component;
	 */
	public String accessibilityLabelForComponent(UIPickerView pickerView, int component){
		return null;
	}
	/**
	 * - (NSString *)pickerView:(UIPickerView *)pickerView accessibilityHintForComponent:(NSInteger)component;
	 */
	public String accessibilityHintForComponent(UIPickerView pickerView, int component){
		return null;
	}
	/*
	 * Interface Properties
	 */
}
