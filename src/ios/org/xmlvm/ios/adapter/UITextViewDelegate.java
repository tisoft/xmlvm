package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UITextViewDelegate implements org.xmlvm.ios.UITextViewDelegate {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)textViewShouldBeginEditing:(UITextView *)textView;
	 */
	public boolean textViewShouldBeginEditing(UITextView textView){
		return false;
	}
	/**
	 * - (BOOL)textViewShouldEndEditing:(UITextView *)textView;
	 */
	public boolean textViewShouldEndEditing(UITextView textView){
		return false;
	}
	/**
	 * - (void)textViewDidBeginEditing:(UITextView *)textView;
	 */
	public void textViewDidBeginEditing(UITextView textView){};
	/**
	 * - (void)textViewDidEndEditing:(UITextView *)textView;
	 */
	public void textViewDidEndEditing(UITextView textView){};
	/**
	 * - (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text;
	 */
	public boolean textView(UITextView textView, NSRange range, String text){
		return false;
	}
	/**
	 * - (void)textViewDidChange:(UITextView *)textView;
	 */
	public void textViewDidChange(UITextView textView){};
	/**
	 * - (void)textViewDidChangeSelection:(UITextView *)textView;
	 */
	public void textViewDidChangeSelection(UITextView textView){};
	/*
	 * Interface Properties
	 */
}
