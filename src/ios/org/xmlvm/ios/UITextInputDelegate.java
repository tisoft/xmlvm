package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UITextInputDelegate")
public interface UITextInputDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)selectionWillChange:(id <UITextInput>)textInput;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "selectionWillChange", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true)
	})
	public abstract void selectionWillChange(org.xmlvm.ios.UITextInput textInput);

	/**
	 * - (void)selectionDidChange:(id <UITextInput>)textInput;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "selectionDidChange", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true)
	})
	public abstract void selectionDidChange(org.xmlvm.ios.UITextInput textInput);

	/**
	 * - (void)textWillChange:(id <UITextInput>)textInput;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textWillChange", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true)
	})
	public abstract void textWillChange(org.xmlvm.ios.UITextInput textInput);

	/**
	 * - (void)textDidChange:(id <UITextInput>)textInput;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textDidChange", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "id", isStruct = true)
	})
	public abstract void textDidChange(org.xmlvm.ios.UITextInput textInput);
}
