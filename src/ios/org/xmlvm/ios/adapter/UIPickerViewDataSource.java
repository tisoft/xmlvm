package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public abstract class UIPickerViewDataSource implements org.xmlvm.ios.UIPickerViewDataSource {

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
	 */
	public int numberOfComponentsInPickerView(UIPickerView pickerView){
		return 0;
	}
	/**
	 * - (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
	 */
	public int pickerView(UIPickerView pickerView, int component){
		return 0;
	}}
