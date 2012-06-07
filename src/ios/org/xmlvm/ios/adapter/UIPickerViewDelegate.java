package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UIPickerViewDelegate implements org.xmlvm.ios.UIPickerViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component;
	 */
	public float widthForComponent(UIPickerView pickerView, int component){
		return 0;
	}
	/**
	 * - (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component;
	 */
	public float rowHeightForComponent(UIPickerView pickerView, int component){
		return 0;
	}
	/**
	 * - (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
	 */
	public String titleForRow(UIPickerView pickerView, int row, int component){
		return null;
	}
	/**
	 * - (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view;
	 */
	public UIView viewForRow(UIPickerView pickerView, int row, int component, UIView view){
		return null;
	}
	/**
	 * - (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component;
	 */
	public void didSelectRow(UIPickerView pickerView, int row, int component){};}
