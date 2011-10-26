package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIFont extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (UIFont *)fontWithName:(NSString *)fontName size:(CGFloat)fontSize;
	 */
	public static UIFont fontWithName(String fontName, float fontSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)familyNames;
	 */
	public static List familyNames(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)fontNamesForFamilyName:(NSString *)familyName;
	 */
	public static List fontNamesForFamilyName(String familyName){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIFont *)systemFontOfSize:(CGFloat)fontSize;
	 */
	public static UIFont systemFontOfSize(float fontSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIFont *)boldSystemFontOfSize:(CGFloat)fontSize;
	 */
	public static UIFont boldSystemFontOfSize(float fontSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIFont *)italicSystemFontOfSize:(CGFloat)fontSize;
	 */
	public static UIFont italicSystemFontOfSize(float fontSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (CGFloat)labelFontSize;
	 */
	public static float labelFontSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (CGFloat)buttonFontSize;
	 */
	public static float buttonFontSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (CGFloat)smallSystemFontSize;
	 */
	public static float smallSystemFontSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (CGFloat)systemFontSize;
	 */
	public static float systemFontSize(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	UIFont() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly,retain) NSString *familyName;
	 */
	public String getFamilyName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) NSString *fontName;
	 */
	public String getFontName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGFloat pointSize;
	 */
	public float getPointSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGFloat ascender;
	 */
	public float getAscender(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGFloat descender;
	 */
	public float getDescender(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGFloat capHeight;
	 */
	public float getCapHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGFloat xHeight;
	 */
	public float getXHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGFloat lineHeight ;
	 */
	public float getLineHeight(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGFloat leading;
	 */
	public float getLeading(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (UIFont *)fontWithSize:(CGFloat)fontSize;
	 */
	public UIFont fontWithSize(float fontSize){
		throw new RuntimeException("Stub");
	}
}
