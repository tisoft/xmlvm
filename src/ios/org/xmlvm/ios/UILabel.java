package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UILabel extends UIView {

	/*
	 * Constructors
	 */
	public UILabel(CGRect frame) {
		super(frame);
	}

	/** Default constructor */
	public UILabel() {
		super();
	}

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
	 * @property(nonatomic,retain) UIColor *shadowColor;
	 */
	public UIColor getShadowColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *shadowColor;
	 */
	public void setShadowColor(UIColor shadowColor){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGSize shadowOffset;
	 */
	public CGSize getShadowOffset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGSize shadowOffset;
	 */
	public void setShadowOffset(CGSize shadowOffset){
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
	 * @property(nonatomic) UILineBreakMode lineBreakMode;
	 */
	public int getLineBreakMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UILineBreakMode lineBreakMode;
	 */
	public void setLineBreakMode(int lineBreakMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *highlightedTextColor;
	 */
	public UIColor getHighlightedTextColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *highlightedTextColor;
	 */
	public void setHighlightedTextColor(UIColor highlightedTextColor){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isHighlighted) BOOL highlighted;
	 */
	public boolean isHighlighted(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isHighlighted) BOOL highlighted;
	 */
	public void setHighlighted(boolean highlighted){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isUserInteractionEnabled) BOOL userInteractionEnabled;
	 */
	public boolean isUserInteractionEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isUserInteractionEnabled) BOOL userInteractionEnabled;
	 */
	public void setUserInteractionEnabled(boolean userInteractionEnabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isEnabled) BOOL enabled;
	 */
	public boolean isEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isEnabled) BOOL enabled;
	 */
	public void setEnabled(boolean enabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger numberOfLines;
	 */
	public int getNumberOfLines(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger numberOfLines;
	 */
	public void setNumberOfLines(int numberOfLines){
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
	 * @property(nonatomic) UIBaselineAdjustment baselineAdjustment;
	 */
	public int getBaselineAdjustment(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIBaselineAdjustment baselineAdjustment;
	 */
	public void setBaselineAdjustment(int baselineAdjustment){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines;
	 */
	public CGRect textRectForBounds(CGRect bounds, int numberOfLines){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)drawTextInRect:(CGRect)rect;
	 */
	public void drawTextInRect(CGRect rect){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
