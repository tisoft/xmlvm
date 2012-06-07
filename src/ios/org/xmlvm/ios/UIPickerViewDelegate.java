package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UIPickerViewDelegate")
public interface UIPickerViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "pickerView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPickerView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "widthForComponent")
	})
	public abstract float widthForComponent(UIPickerView pickerView, int component);

	/**
	 * - (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "pickerView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPickerView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "rowHeightForComponent")
	})
	public abstract float rowHeightForComponent(UIPickerView pickerView, int component);

	/**
	 * - (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "pickerView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPickerView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "titleForRow"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "forComponent")
	})
	public abstract String titleForRow(UIPickerView pickerView, int row, int component);

	/**
	 * - (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "pickerView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPickerView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "viewForRow"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "forComponent"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIView", name = "reusingView")
	})
	public abstract UIView viewForRow(UIPickerView pickerView, int row, int component, UIView view);

	/**
	 * - (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "pickerView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPickerView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "didSelectRow"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "inComponent")
	})
	public abstract void didSelectRow(UIPickerView pickerView, int row, int component);
}
