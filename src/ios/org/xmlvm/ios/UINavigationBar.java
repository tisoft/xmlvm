package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UINavigationBar extends UIView {

	/*
	 * Constructors
	 */

	/** Default constructor */
	UINavigationBar() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) UIBarStyle barStyle;
	 */
	public int getBarStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) UIBarStyle barStyle;
	 */
	public void setBarStyle(int barStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id delegate;
	 */
	public Object getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id delegate;
	 */
	public void setDelegate(Object delegate){
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

	/**
	 * @property(nonatomic,readonly,retain) UINavigationItem *topItem;
	 */
	public UINavigationItem getTopItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UINavigationItem *backItem;
	 */
	public UINavigationItem getBackItem(){
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

	/*
	 * Instance methods
	 */

	/**
	 * - (void)pushNavigationItem:(UINavigationItem *)item animated:(BOOL)animated;
	 */
	public void pushNavigationItem(UINavigationItem item, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (UINavigationItem *)popNavigationItemAnimated:(BOOL)animated;
	 */
	public UINavigationItem popNavigationItemAnimated(boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setItems:(NSArray *)items animated:(BOOL)animated;
	 */
	public void setItems(List items, boolean animated){
		throw new RuntimeException("Stub");
	}
}
