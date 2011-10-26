package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UITextFieldDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;
	 */
	public abstract boolean textFieldShouldBeginEditing(UITextField textField);

	/**
	 * - (void)textFieldDidBeginEditing:(UITextField *)textField;
	 */
	public abstract void textFieldDidBeginEditing(UITextField textField);

	/**
	 * - (BOOL)textFieldShouldEndEditing:(UITextField *)textField;
	 */
	public abstract boolean textFieldShouldEndEditing(UITextField textField);

	/**
	 * - (void)textFieldDidEndEditing:(UITextField *)textField;
	 */
	public abstract void textFieldDidEndEditing(UITextField textField);

	/**
	 * - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;
	 */
	public abstract boolean textField(UITextField textField, NSRange range, String string);

	/**
	 * - (BOOL)textFieldShouldClear:(UITextField *)textField;
	 */
	public abstract boolean textFieldShouldClear(UITextField textField);

	/**
	 * - (BOOL)textFieldShouldReturn:(UITextField *)textField;
	 */
	public abstract boolean textFieldShouldReturn(UITextField textField);
}
