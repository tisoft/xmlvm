package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface UITextViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)textViewShouldBeginEditing:(UITextView *)textView;
	 */
	public abstract boolean textViewShouldBeginEditing(UITextView textView);

	/**
	 * - (BOOL)textViewShouldEndEditing:(UITextView *)textView;
	 */
	public abstract boolean textViewShouldEndEditing(UITextView textView);

	/**
	 * - (void)textViewDidBeginEditing:(UITextView *)textView;
	 */
	public abstract void textViewDidBeginEditing(UITextView textView);

	/**
	 * - (void)textViewDidEndEditing:(UITextView *)textView;
	 */
	public abstract void textViewDidEndEditing(UITextView textView);

	/**
	 * - (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text;
	 */
	public abstract boolean textView(UITextView textView, NSRange range, String text);

	/**
	 * - (void)textViewDidChange:(UITextView *)textView;
	 */
	public abstract void textViewDidChange(UITextView textView);

	/**
	 * - (void)textViewDidChangeSelection:(UITextView *)textView;
	 */
	public abstract void textViewDidChangeSelection(UITextView textView);
}
