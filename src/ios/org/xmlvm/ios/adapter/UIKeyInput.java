package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class UIKeyInput implements org.xmlvm.ios.UIKeyInput {

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)hasText;
	 */
	public boolean hasText(){
		return false;
	}
	/**
	 * - (void)insertText:(NSString *)text;
	 */
	public void insertText(String text){};
	/**
	 * - (void)deleteBackward;
	 */
	public void deleteBackward(){};
	/*
	 * Interface Properties
	 */

	/**
	 * @property(nonatomic) UITextAutocapitalizationType autocapitalizationType;
	 */
	public int getAutocapitalizationType(){
		return 0;
	}
	/**
	 * @property(nonatomic) UITextAutocapitalizationType autocapitalizationType;
	 */
	public void setAutocapitalizationType(int autocapitalizationType){};
	/**
	 * @property(nonatomic) UITextAutocorrectionType autocorrectionType;
	 */
	public int getAutocorrectionType(){
		return 0;
	}
	/**
	 * @property(nonatomic) UITextAutocorrectionType autocorrectionType;
	 */
	public void setAutocorrectionType(int autocorrectionType){};
	/**
	 * @property(nonatomic) UIKeyboardType keyboardType;
	 */
	public int getKeyboardType(){
		return 0;
	}
	/**
	 * @property(nonatomic) UIKeyboardType keyboardType;
	 */
	public void setKeyboardType(int keyboardType){};
	/**
	 * @property(nonatomic) UIKeyboardAppearance keyboardAppearance;
	 */
	public int getKeyboardAppearance(){
		return 0;
	}
	/**
	 * @property(nonatomic) UIKeyboardAppearance keyboardAppearance;
	 */
	public void setKeyboardAppearance(int keyboardAppearance){};
	/**
	 * @property(nonatomic) UIReturnKeyType returnKeyType;
	 */
	public int getReturnKeyType(){
		return 0;
	}
	/**
	 * @property(nonatomic) UIReturnKeyType returnKeyType;
	 */
	public void setReturnKeyType(int returnKeyType){};
	/**
	 * @property(nonatomic) BOOL enablesReturnKeyAutomatically;
	 */
	public boolean getEnablesReturnKeyAutomatically(){
		return false;
	}
	/**
	 * @property(nonatomic) BOOL enablesReturnKeyAutomatically;
	 */
	public void setEnablesReturnKeyAutomatically(boolean enablesReturnKeyAutomatically){};
	/**
	 * @property(nonatomic,getter=isSecureTextEntry) BOOL secureTextEntry;
	 */
	public boolean isSecureTextEntry(){
		return false;
	}
	/**
	 * @property(nonatomic,getter=isSecureTextEntry) BOOL secureTextEntry;
	 */
	public void setSecureTextEntry(boolean secureTextEntry){};}
