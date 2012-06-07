package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UIPickerViewDataSource")
public interface UIPickerViewDataSource {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "numberOfComponentsInPickerView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPickerView")
	})
	public abstract int numberOfComponentsInPickerView(UIPickerView pickerView);

	/**
	 * - (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "pickerView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UIPickerView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "int", isStruct = true, name = "numberOfRowsInComponent")
	})
	public abstract int pickerView(UIPickerView pickerView, int component);
}
