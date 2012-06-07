package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UITextFieldDelegate implements org.xmlvm.ios.UITextFieldDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;
	 */
	public boolean textFieldShouldBeginEditing(UITextField textField){
		return true;
	}
	/**
	 * - (void)textFieldDidBeginEditing:(UITextField *)textField;
	 */
	public void textFieldDidBeginEditing(UITextField textField){};
	/**
	 * - (BOOL)textFieldShouldEndEditing:(UITextField *)textField;
	 */
	public boolean textFieldShouldEndEditing(UITextField textField){
		return true;
	}
	/**
	 * - (void)textFieldDidEndEditing:(UITextField *)textField;
	 */
	public void textFieldDidEndEditing(UITextField textField){};
	/**
	 * - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;
	 */
	public boolean textField(UITextField textField, NSRange range, String string){
		return true;
	}
	/**
	 * - (BOOL)textFieldShouldClear:(UITextField *)textField;
	 */
	public boolean textFieldShouldClear(UITextField textField){
		return true;
	}
	/**
	 * - (BOOL)textFieldShouldReturn:(UITextField *)textField;
	 */
	public boolean textFieldShouldReturn(UITextField textField){
		return false;
	}}
