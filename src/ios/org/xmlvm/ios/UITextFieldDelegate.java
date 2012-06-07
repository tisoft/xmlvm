package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UITextFieldDelegate")
public interface UITextFieldDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textFieldShouldBeginEditing", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextField")
	})
	public abstract boolean textFieldShouldBeginEditing(UITextField textField);

	/**
	 * - (void)textFieldDidBeginEditing:(UITextField *)textField;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textFieldDidBeginEditing", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextField")
	})
	public abstract void textFieldDidBeginEditing(UITextField textField);

	/**
	 * - (BOOL)textFieldShouldEndEditing:(UITextField *)textField;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textFieldShouldEndEditing", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextField")
	})
	public abstract boolean textFieldShouldEndEditing(UITextField textField);

	/**
	 * - (void)textFieldDidEndEditing:(UITextField *)textField;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textFieldDidEndEditing", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextField")
	})
	public abstract void textFieldDidEndEditing(UITextField textField);

	/**
	 * - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textField", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextField"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSRange", isStruct = true, name = "shouldChangeCharactersInRange"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "replacementString")
	})
	public abstract boolean textField(UITextField textField, NSRange range, String string);

	/**
	 * - (BOOL)textFieldShouldClear:(UITextField *)textField;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textFieldShouldClear", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextField")
	})
	public abstract boolean textFieldShouldClear(UITextField textField);

	/**
	 * - (BOOL)textFieldShouldReturn:(UITextField *)textField;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textFieldShouldReturn", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextField")
	})
	public abstract boolean textFieldShouldReturn(UITextField textField);
}
