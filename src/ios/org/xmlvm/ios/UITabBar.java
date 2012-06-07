package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UITabBar extends UIView {

	/*
	 * Constructors
	 */
	public UITabBar(CGRect frame) {
		super(frame);
	}

	/** Default constructor */
	public UITabBar() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id<UITabBarDelegate> delegate;
	 */
	public UITabBarDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UITabBarDelegate> delegate;
	 */
	public void setDelegate(UITabBarDelegate arg0){
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
	 * @property(nonatomic,assign) UITabBarItem *selectedItem;
	 */
	public UITabBarItem getSelectedItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) UITabBarItem *selectedItem;
	 */
	public void setSelectedItem(UITabBarItem selectedItem){
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

	/**
	 * - (void)beginCustomizingItems:(NSArray *)items;
	 */
	public void beginCustomizingItems(List items){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)endCustomizingAnimated:(BOOL)animated;
	 */
	public boolean endCustomizingAnimated(boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)isCustomizing;
	 */
	public boolean isCustomizing(){
		throw new RuntimeException("Stub");
	}
}
