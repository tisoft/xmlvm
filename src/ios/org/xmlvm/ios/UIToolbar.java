package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIToolbar extends UIView {

	/*
	 * Constructors
	 */
	public UIToolbar(CGRect frame) {
		super(frame);
	}

	/** Default constructor */
	public UIToolbar() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) UIBarStyle barStyle;
	 */
	public int getBarStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIBarStyle barStyle;
	 */
	public void setBarStyle(int barStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *items;
	 */
	public List getItems(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *items;
	 */
	public void setItems(List items){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *tintColor;
	 */
	public UIColor getTintColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIColor *tintColor;
	 */
	public void setTintColor(UIColor tintColor){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign,getter=isTranslucent) BOOL translucent ;
	 */
	public boolean isTranslucent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign,getter=isTranslucent) BOOL translucent ;
	 */
	public void setTranslucent(boolean translucent){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setItems:(NSArray *)items animated:(BOOL)animated;
	 */
	public void setItems(List items, boolean animated){
		throw new RuntimeException("Stub");
	}
}
