package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UITextView extends UIScrollView {

	/*
	 * Constructors
	 */

	/** Default constructor */
	UITextView() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id<UITextViewDelegate> delegate;
	 */
	public UITextViewDelegate getTextDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UITextViewDelegate> delegate;
	 */
	public void setDelegate(UITextViewDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *text;
	 */
	public String getText(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *text;
	 */
	public void setText(String text){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIFont *font;
	 */
	public UIFont getFont(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIFont *font;
	 */
	public void setFont(UIFont font){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *textColor;
	 */
	public UIColor getTextColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *textColor;
	 */
	public void setTextColor(UIColor textColor){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITextAlignment textAlignment;
	 */
	public int getTextAlignment(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITextAlignment textAlignment;
	 */
	public void setTextAlignment(int textAlignment){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSRange selectedRange;
	 */
	public NSRange getSelectedRange(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSRange selectedRange;
	 */
	public void setSelectedRange(NSRange selectedRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isEditable) BOOL editable;
	 */
	public boolean isEditable(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isEditable) BOOL editable;
	 */
	public void setEditable(boolean editable){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIDataDetectorTypes dataDetectorTypes ;
	 */
	public int getDataDetectorTypes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIDataDetectorTypes dataDetectorTypes ;
	 */
	public void setDataDetectorTypes(int dataDetectorTypes){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readwrite, retain) UIView *inputView;
	 */
	public UIView getInputView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readwrite, retain) UIView *inputView;
	 */
	public void setInputView(UIView inputView){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readwrite, retain) UIView *inputAccessoryView;
	 */
	public UIView getInputAccessoryView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readwrite, retain) UIView *inputAccessoryView;
	 */
	public void setInputAccessoryView(UIView inputAccessoryView){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)hasText;
	 */
	public boolean hasText(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)scrollRangeToVisible:(NSRange)range;
	 */
	public void scrollRangeToVisible(NSRange range){
		throw new RuntimeException("Stub");
	}
}
