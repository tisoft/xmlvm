package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIEdgeInsets {

	/*
	 * Variables
	 */
	 public float right;
	 public float bottom;
	 public float left;
	 public float top;

	/*
	 * Static methods
	 */

	/**
	 * CGRect UIEdgeInsetsInsetRect(CGRect rect, UIEdgeInsets insets);
	 */
	public static CGRect insetRect(CGRect rect, UIEdgeInsets insets){
		throw new RuntimeException("Stub");
	}

	/**
	 * UIEdgeInsets UIEdgeInsetsFromString(NSString *string);
	 */
	public static UIEdgeInsets fromString(String string){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * UIEdgeInsets UIEdgeInsetsMake(CGFloat top, CGFloat left, CGFloat bottom, CGFloat right);
	 */
	public UIEdgeInsets(float top, float left, float bottom, float right) {}

	/** Default constructor */
	UIEdgeInsets() {}

	/*
	 * Instance methods
	 */

	/**
	 * BOOL UIEdgeInsetsEqualToEdgeInsets(UIEdgeInsets insets1, UIEdgeInsets insets2);
	 */
	public boolean equalToEdgeInsets(UIEdgeInsets insets2){
		throw new RuntimeException("Stub");
	}
}
