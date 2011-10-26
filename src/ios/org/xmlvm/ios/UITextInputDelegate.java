package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UITextInputDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)selectionWillChange:(id <UITextInput>)textInput;
	 */
	public abstract void selectionWillChange(UITextInput textInput);

	/**
	 * - (void)selectionDidChange:(id <UITextInput>)textInput;
	 */
	public abstract void selectionDidChange(UITextInput textInput);

	/**
	 * - (void)textWillChange:(id <UITextInput>)textInput;
	 */
	public abstract void textWillChange(UITextInput textInput);

	/**
	 * - (void)textDidChange:(id <UITextInput>)textInput;
	 */
	public abstract void textDidChange(UITextInput textInput);
}
