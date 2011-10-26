package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UISimpleTextPrintFormatter extends UIPrintFormatter {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithText:(NSString *)text;
	 */
	public UISimpleTextPrintFormatter(String text) {}

	/** Default constructor */
	UISimpleTextPrintFormatter() {}

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
	 * @property(nonatomic,retain) UIColor *color;
	 */
	public UIColor getColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *color;
	 */
	public void setColor(UIColor color){
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
}
