package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "UIKeyInput")
public interface UIKeyInput {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)hasText;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "hasText", params = {
	})
	public abstract boolean hasText();

	/**
	 * - (void)insertText:(NSString *)text;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "insertText", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSString", convert = true)
	})
	public abstract void insertText(String text);

	/**
	 * - (void)deleteBackward;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "deleteBackward", params = {
	})
	public abstract void deleteBackward();

	/*
	 * Interface Properties
	 */

	/**
	 * @property(nonatomic) UITextAutocapitalizationType autocapitalizationType;
	 */
	public abstract int getAutocapitalizationType();

	/**
	 * @property(nonatomic) UITextAutocapitalizationType autocapitalizationType;
	 */
	public abstract void setAutocapitalizationType(int autocapitalizationType);

	/**
	 * @property(nonatomic) UITextAutocorrectionType autocorrectionType;
	 */
	public abstract int getAutocorrectionType();

	/**
	 * @property(nonatomic) UITextAutocorrectionType autocorrectionType;
	 */
	public abstract void setAutocorrectionType(int autocorrectionType);

	/**
	 * @property(nonatomic) UIKeyboardType keyboardType;
	 */
	public abstract int getKeyboardType();

	/**
	 * @property(nonatomic) UIKeyboardType keyboardType;
	 */
	public abstract void setKeyboardType(int keyboardType);

	/**
	 * @property(nonatomic) UIKeyboardAppearance keyboardAppearance;
	 */
	public abstract int getKeyboardAppearance();

	/**
	 * @property(nonatomic) UIKeyboardAppearance keyboardAppearance;
	 */
	public abstract void setKeyboardAppearance(int keyboardAppearance);

	/**
	 * @property(nonatomic) UIReturnKeyType returnKeyType;
	 */
	public abstract int getReturnKeyType();

	/**
	 * @property(nonatomic) UIReturnKeyType returnKeyType;
	 */
	public abstract void setReturnKeyType(int returnKeyType);

	/**
	 * @property(nonatomic) BOOL enablesReturnKeyAutomatically;
	 */
	public abstract boolean getEnablesReturnKeyAutomatically();

	/**
	 * @property(nonatomic) BOOL enablesReturnKeyAutomatically;
	 */
	public abstract void setEnablesReturnKeyAutomatically(boolean enablesReturnKeyAutomatically);

	/**
	 * @property(nonatomic,getter=isSecureTextEntry) BOOL secureTextEntry;
	 */
	public abstract boolean isSecureTextEntry();

	/**
	 * @property(nonatomic,getter=isSecureTextEntry) BOOL secureTextEntry;
	 */
	public abstract void setSecureTextEntry(boolean secureTextEntry);
}
