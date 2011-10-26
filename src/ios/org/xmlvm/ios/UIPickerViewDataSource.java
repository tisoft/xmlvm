package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UIPickerViewDataSource {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
	 */
	public abstract int numberOfComponentsInPickerView(UIPickerView pickerView);

	/**
	 * - (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
	 */
	public abstract int pickerView(UIPickerView pickerView, int component);
}
