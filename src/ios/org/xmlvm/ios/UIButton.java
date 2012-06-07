package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIButton extends UIControl {

	/*
	 * Static methods
	 */

	/**
	 * + (id)buttonWithType:(UIButtonType)buttonType;
	 */
	public static UIButton buttonWithType(int buttonType){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */
	public UIButton(CGRect frame) {
		super(frame);
	}

	/** Default constructor */
	public UIButton() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) UIEdgeInsets contentEdgeInsets;
	 */
	public UIEdgeInsets getContentEdgeInsets(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIEdgeInsets contentEdgeInsets;
	 */
	public void setContentEdgeInsets(UIEdgeInsets contentEdgeInsets){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIEdgeInsets titleEdgeInsets;
	 */
	public UIEdgeInsets getTitleEdgeInsets(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIEdgeInsets titleEdgeInsets;
	 */
	public void setTitleEdgeInsets(UIEdgeInsets titleEdgeInsets){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL reversesTitleShadowWhenHighlighted;
	 */
	public boolean getReversesTitleShadowWhenHighlighted(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL reversesTitleShadowWhenHighlighted;
	 */
	public void setReversesTitleShadowWhenHighlighted(boolean reversesTitleShadowWhenHighlighted){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIEdgeInsets imageEdgeInsets;
	 */
	public UIEdgeInsets getImageEdgeInsets(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIEdgeInsets imageEdgeInsets;
	 */
	public void setImageEdgeInsets(UIEdgeInsets imageEdgeInsets){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL adjustsImageWhenHighlighted;
	 */
	public boolean getAdjustsImageWhenHighlighted(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL adjustsImageWhenHighlighted;
	 */
	public void setAdjustsImageWhenHighlighted(boolean adjustsImageWhenHighlighted){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL adjustsImageWhenDisabled;
	 */
	public boolean getAdjustsImageWhenDisabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL adjustsImageWhenDisabled;
	 */
	public void setAdjustsImageWhenDisabled(boolean adjustsImageWhenDisabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsTouchWhenHighlighted;
	 */
	public boolean getShowsTouchWhenHighlighted(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL showsTouchWhenHighlighted;
	 */
	public void setShowsTouchWhenHighlighted(boolean showsTouchWhenHighlighted){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIButtonType buttonType;
	 */
	public int getButtonType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) NSString *currentTitle;
	 */
	public String getCurrentTitle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UIColor *currentTitleColor;
	 */
	public UIColor getCurrentTitleColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UIColor *currentTitleShadowColor;
	 */
	public UIColor getCurrentTitleShadowColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UIImage *currentImage;
	 */
	public UIImage getCurrentImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UIImage *currentBackgroundImage;
	 */
	public UIImage getCurrentBackgroundImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UILabel *titleLabel ;
	 */
	public UILabel getTitleLabel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UIImageView *imageView ;
	 */
	public UIImageView getImageView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIFont *font ;
	 */
	public UIFont getFont(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIFont *font ;
	 */
	public void setFont(UIFont font){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UILineBreakMode lineBreakMode ;
	 */
	public int getLineBreakMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UILineBreakMode lineBreakMode ;
	 */
	public void setLineBreakMode(int lineBreakMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGSize titleShadowOffset ;
	 */
	public CGSize getTitleShadowOffset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGSize titleShadowOffset ;
	 */
	public void setTitleShadowOffset(CGSize titleShadowOffset){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setTitle:(NSString *)title forState:(UIControlState)state;
	 */
	public void setTitle(String title, int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTitleColor:(UIColor *)color forState:(UIControlState)state;
	 */
	public void setTitleColor(UIColor color, int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTitleShadowColor:(UIColor *)color forState:(UIControlState)state;
	 */
	public void setTitleShadowColor(UIColor color, int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setImage:(UIImage *)image forState:(UIControlState)state;
	 */
	public void setImage(UIImage image, int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setBackgroundImage:(UIImage *)image forState:(UIControlState)state;
	 */
	public void setBackgroundImage(UIImage image, int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)titleForState:(UIControlState)state;
	 */
	public String titleForState(int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIColor *)titleColorForState:(UIControlState)state;
	 */
	public UIColor titleColorForState(int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIColor *)titleShadowColorForState:(UIControlState)state;
	 */
	public UIColor titleShadowColorForState(int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIImage *)imageForState:(UIControlState)state;
	 */
	public UIImage imageForState(int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIImage *)backgroundImageForState:(UIControlState)state;
	 */
	public UIImage backgroundImageForState(int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)backgroundRectForBounds:(CGRect)bounds;
	 */
	public CGRect backgroundRectForBounds(CGRect bounds){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)contentRectForBounds:(CGRect)bounds;
	 */
	public CGRect contentRectForBounds(CGRect bounds){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)titleRectForContentRect:(CGRect)contentRect;
	 */
	public CGRect titleRectForContentRect(CGRect contentRect){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)imageRectForContentRect:(CGRect)contentRect;
	 */
	public CGRect imageRectForContentRect(CGRect contentRect){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
