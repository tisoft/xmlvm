package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UITextField extends UIControl {

	/*
	 * Constructors
	 */

	/** Default constructor */
	UITextField() {}

	/*
	 * Properties
	 */

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
	 * @property(nonatomic) UITextBorderStyle borderStyle;
	 */
	public int getBorderStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITextBorderStyle borderStyle;
	 */
	public void setBorderStyle(int borderStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *placeholder;
	 */
	public String getPlaceholder(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *placeholder;
	 */
	public void setPlaceholder(String placeholder){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL clearsOnBeginEditing;
	 */
	public boolean getClearsOnBeginEditing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL clearsOnBeginEditing;
	 */
	public void setClearsOnBeginEditing(boolean clearsOnBeginEditing){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL adjustsFontSizeToFitWidth;
	 */
	public boolean getAdjustsFontSizeToFitWidth(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL adjustsFontSizeToFitWidth;
	 */
	public void setAdjustsFontSizeToFitWidth(boolean adjustsFontSizeToFitWidth){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat minimumFontSize;
	 */
	public float getMinimumFontSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat minimumFontSize;
	 */
	public void setMinimumFontSize(float minimumFontSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UITextFieldDelegate> delegate;
	 */
	public UITextFieldDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UITextFieldDelegate> delegate;
	 */
	public void setDelegate(UITextFieldDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIImage *background;
	 */
	public UIImage getBackground(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIImage *background;
	 */
	public void setBackground(UIImage background){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIImage *disabledBackground;
	 */
	public UIImage getDisabledBackground(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIImage *disabledBackground;
	 */
	public void setDisabledBackground(UIImage disabledBackground){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=isEditing) BOOL editing;
	 */
	public boolean isEditing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITextFieldViewMode clearButtonMode;
	 */
	public int getClearButtonMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITextFieldViewMode clearButtonMode;
	 */
	public void setClearButtonMode(int clearButtonMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *leftView;
	 */
	public UIView getLeftView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *leftView;
	 */
	public void setLeftView(UIView leftView){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITextFieldViewMode leftViewMode;
	 */
	public int getLeftViewMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITextFieldViewMode leftViewMode;
	 */
	public void setLeftViewMode(int leftViewMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *rightView;
	 */
	public UIView getRightView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *rightView;
	 */
	public void setRightView(UIView rightView){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITextFieldViewMode rightViewMode;
	 */
	public int getRightViewMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UITextFieldViewMode rightViewMode;
	 */
	public void setRightViewMode(int rightViewMode){
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
	 * - (CGRect)borderRectForBounds:(CGRect)bounds;
	 */
	public CGRect borderRectForBounds(CGRect bounds){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)textRectForBounds:(CGRect)bounds;
	 */
	public CGRect textRectForBounds(CGRect bounds){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)placeholderRectForBounds:(CGRect)bounds;
	 */
	public CGRect placeholderRectForBounds(CGRect bounds){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)editingRectForBounds:(CGRect)bounds;
	 */
	public CGRect editingRectForBounds(CGRect bounds){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)clearButtonRectForBounds:(CGRect)bounds;
	 */
	public CGRect clearButtonRectForBounds(CGRect bounds){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)leftViewRectForBounds:(CGRect)bounds;
	 */
	public CGRect leftViewRectForBounds(CGRect bounds){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)rightViewRectForBounds:(CGRect)bounds;
	 */
	public CGRect rightViewRectForBounds(CGRect bounds){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawTextInRect:(CGRect)rect;
	 */
	public void drawTextInRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawPlaceholderInRect:(CGRect)rect;
	 */
	public void drawPlaceholderInRect(CGRect rect){
		throw new RuntimeException("Stub");
	}
}
