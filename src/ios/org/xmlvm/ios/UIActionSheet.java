package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIActionSheet extends UIView {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithTitle:(NSString *)title delegate:(id<UIActionSheetDelegate>)delegate cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... ;
	 */
	public UIActionSheet(String title, UIActionSheetDelegate delegate, String cancelButtonTitle, String destructiveButtonTitle, String... otherButtonTitles) {}

	/** Default constructor */
	UIActionSheet() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,assign) id<UIActionSheetDelegate> delegate;
	 */
	public UIActionSheetDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) id<UIActionSheetDelegate> delegate;
	 */
	public void setDelegate(UIActionSheetDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *title;
	 */
	public String getTitle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *title;
	 */
	public void setTitle(String title){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIActionSheetStyle actionSheetStyle;
	 */
	public int getActionSheetStyle(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIActionSheetStyle actionSheetStyle;
	 */
	public void setActionSheetStyle(int actionSheetStyle){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSInteger numberOfButtons;
	 */
	public int getNumberOfButtons(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger cancelButtonIndex;
	 */
	public int getCancelButtonIndex(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger cancelButtonIndex;
	 */
	public void setCancelButtonIndex(int cancelButtonIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger destructiveButtonIndex;
	 */
	public int getDestructiveButtonIndex(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) NSInteger destructiveButtonIndex;
	 */
	public void setDestructiveButtonIndex(int destructiveButtonIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSInteger firstOtherButtonIndex;
	 */
	public int getFirstOtherButtonIndex(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=isVisible) BOOL visible;
	 */
	public boolean isVisible(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSInteger)addButtonWithTitle:(NSString *)title;
	 */
	public int addButtonWithTitle(String title){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)buttonTitleAtIndex:(NSInteger)buttonIndex;
	 */
	public String buttonTitleAtIndex(int buttonIndex){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)showFromToolbar:(UIToolbar *)view;
	 */
	public void showFromToolbar(UIToolbar view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)showFromTabBar:(UITabBar *)view;
	 */
	public void showFromTabBar(UITabBar view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)showFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated ;
	 */
	public void showFromBarButtonItem(UIBarButtonItem item, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)showFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated ;
	 */
	public void showFromRect(CGRect rect, UIView view, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)showInView:(UIView *)view;
	 */
	public void showInView(UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)dismissWithClickedButtonIndex:(NSInteger)buttonIndex animated:(BOOL)animated;
	 */
	public void dismissWithClickedButtonIndex(int buttonIndex, boolean animated){
		throw new RuntimeException("Stub");
	}
}
