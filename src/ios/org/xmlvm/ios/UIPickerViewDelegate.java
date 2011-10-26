package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIPickerViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component;
	 */
	public abstract float widthForComponent(UIPickerView pickerView, int component);

	/**
	 * - (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component;
	 */
	public abstract float rowHeightForComponent(UIPickerView pickerView, int component);

	/**
	 * - (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
	 */
	public abstract String titleForRow(UIPickerView pickerView, int row, int component);

	/**
	 * - (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view;
	 */
	public abstract UIView viewForRow(UIPickerView pickerView, int row, int component, UIView view);

	/**
	 * - (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component;
	 */
	public abstract void didSelectRow(UIPickerView pickerView, int row, int component);
}
