package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIColor extends NSObject {

	/*
	 * Initialization enumerations
	 */

	public static enum Colorspace {
		RGBA, HSBA;
	}

	/*
	 * Static methods
	 */

	/**
	 * + (UIColor *)colorWithWhite:(CGFloat)white alpha:(CGFloat)alpha;
	 */
	public static UIColor colorWithWhite(float white, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)colorWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha;
	 */
	public static UIColor colorWithHue(float hue, float saturation, float brightness, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
	 */
	public static UIColor colorWithRed(float red, float green, float blue, float alpha){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)colorWithCGColor:(CGColorRef)cgColor;
	 */
	public static UIColor colorWithCGColor(CGColor cgColor){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)colorWithPatternImage:(UIImage *)image;
	 */
	public static UIColor colorWithPatternImage(UIImage image){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)blackColor;
	 */
	public static UIColor blackColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)darkGrayColor;
	 */
	public static UIColor darkGrayColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)lightGrayColor;
	 */
	public static UIColor lightGrayColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)whiteColor;
	 */
	public static UIColor whiteColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)grayColor;
	 */
	public static UIColor grayColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)redColor;
	 */
	public static UIColor redColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)greenColor;
	 */
	public static UIColor greenColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)blueColor;
	 */
	public static UIColor blueColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)cyanColor;
	 */
	public static UIColor cyanColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)yellowColor;
	 */
	public static UIColor yellowColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)magentaColor;
	 */
	public static UIColor magentaColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)orangeColor;
	 */
	public static UIColor orangeColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)purpleColor;
	 */
	public static UIColor purpleColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)brownColor;
	 */
	public static UIColor brownColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)clearColor;
	 */
	public static UIColor clearColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)lightTextColor;
	 */
	public static UIColor lightTextColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)darkTextColor;
	 */
	public static UIColor darkTextColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)groupTableViewBackgroundColor;
	 */
	public static UIColor groupTableViewBackgroundColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)viewFlipsideBackgroundColor;
	 */
	public static UIColor viewFlipsideBackgroundColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIColor *)scrollViewTexturedBackgroundColor ;
	 */
	public static UIColor scrollViewTexturedBackgroundColor(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (UIColor *)initWithWhite:(CGFloat)white alpha:(CGFloat)alpha;
	 */
	public UIColor(float white, float alpha) {}

	/**
	 * - (UIColor *)initWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha;
	 * - (UIColor *)initWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
	 */
	public UIColor(float arg1, float arg2, float arg3, float arg4, UIColor.Colorspace colorspace) {}

	/**
	 * - (UIColor *)initWithCGColor:(CGColorRef)cgColor;
	 */
	public UIColor(CGColor cgColor) {}

	/**
	 * - (UIColor *)initWithPatternImage:(UIImage*)image;
	 */
	public UIColor(UIImage image) {}

	/** Default constructor */
	public UIColor() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly) CGColorRef CGColor;
	 */
	public CGColor getCGColor(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)set;
	 */
	public void set(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setFill;
	 */
	public void setFill(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setStroke;
	 */
	public void setStroke(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UIColor *)colorWithAlphaComponent:(CGFloat)alpha;
	 */
	public UIColor colorWithAlphaComponent(float alpha){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
