package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UISlider extends UIControl {

	/*
	 * Constructors
	 */

	/** Default constructor */
	UISlider() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) float value;
	 */
	public float getValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float value;
	 */
	public void setValue(float value){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float minimumValue;
	 */
	public float getMinimumValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float minimumValue;
	 */
	public void setMinimumValue(float minimumValue){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float maximumValue;
	 */
	public float getMaximumValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) float maximumValue;
	 */
	public void setMaximumValue(float maximumValue){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIImage *minimumValueImage;
	 */
	public UIImage getMinimumValueImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIImage *minimumValueImage;
	 */
	public void setMinimumValueImage(UIImage minimumValueImage){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIImage *maximumValueImage;
	 */
	public UIImage getMaximumValueImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIImage *maximumValueImage;
	 */
	public void setMaximumValueImage(UIImage maximumValueImage){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isContinuous) BOOL continuous;
	 */
	public boolean isContinuous(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isContinuous) BOOL continuous;
	 */
	public void setContinuous(boolean continuous){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIImage* currentThumbImage;
	 */
	public UIImage getCurrentThumbImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIImage* currentMinimumTrackImage;
	 */
	public UIImage getCurrentMinimumTrackImage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIImage* currentMaximumTrackImage;
	 */
	public UIImage getCurrentMaximumTrackImage(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setValue:(float)value animated:(BOOL)animated;
	 */
	public void setValue(float value, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setThumbImage:(UIImage *)image forState:(UIControlState)state;
	 */
	public void setThumbImage(UIImage image, int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMinimumTrackImage:(UIImage *)image forState:(UIControlState)state;
	 */
	public void setMinimumTrackImage(UIImage image, int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setMaximumTrackImage:(UIImage *)image forState:(UIControlState)state;
	 */
	public void setMaximumTrackImage(UIImage image, int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIImage *)thumbImageForState:(UIControlState)state;
	 */
	public UIImage thumbImageForState(int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIImage *)minimumTrackImageForState:(UIControlState)state;
	 */
	public UIImage minimumTrackImageForState(int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIImage *)maximumTrackImageForState:(UIControlState)state;
	 */
	public UIImage maximumTrackImageForState(int state){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)minimumValueImageRectForBounds:(CGRect)bounds;
	 */
	public CGRect minimumValueImageRectForBounds(CGRect bounds){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)maximumValueImageRectForBounds:(CGRect)bounds;
	 */
	public CGRect maximumValueImageRectForBounds(CGRect bounds){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)trackRectForBounds:(CGRect)bounds;
	 */
	public CGRect trackRectForBounds(CGRect bounds){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value;
	 */
	public CGRect thumbRectForBounds(CGRect bounds, CGRect rect, float value){
		throw new RuntimeException("Stub");
	}
}
