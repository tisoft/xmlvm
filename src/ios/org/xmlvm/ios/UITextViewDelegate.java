package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UITextViewDelegate")
public interface UITextViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)textViewShouldBeginEditing:(UITextView *)textView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textViewShouldBeginEditing", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextView")
	})
	public abstract boolean textViewShouldBeginEditing(UITextView textView);

	/**
	 * - (BOOL)textViewShouldEndEditing:(UITextView *)textView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textViewShouldEndEditing", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextView")
	})
	public abstract boolean textViewShouldEndEditing(UITextView textView);

	/**
	 * - (void)textViewDidBeginEditing:(UITextView *)textView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textViewDidBeginEditing", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextView")
	})
	public abstract void textViewDidBeginEditing(UITextView textView);

	/**
	 * - (void)textViewDidEndEditing:(UITextView *)textView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textViewDidEndEditing", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextView")
	})
	public abstract void textViewDidEndEditing(UITextView textView);

	/**
	 * - (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textView", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextView"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSRange", isStruct = true, name = "shouldChangeTextInRange"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true, name = "replacementText")
	})
	public abstract boolean textView(UITextView textView, NSRange range, String text);

	/**
	 * - (void)textViewDidChange:(UITextView *)textView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textViewDidChange", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextView")
	})
	public abstract void textViewDidChange(UITextView textView);

	/**
	 * - (void)textViewDidChangeSelection:(UITextView *)textView;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "textViewDidChangeSelection", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "UITextView")
	})
	public abstract void textViewDidChangeSelection(UITextView textView);

	/*
	 * Interface Properties
	 */
}
