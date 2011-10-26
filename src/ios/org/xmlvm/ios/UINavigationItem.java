package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UINavigationItem extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithTitle:(NSString *)title;
	 */
	public UINavigationItem(String title) {}

	/** Default constructor */
	UINavigationItem() {}

	/*
	 * Properties
	 */

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
	 * @property(nonatomic,retain) UIBarButtonItem *backBarButtonItem;
	 */
	public UIBarButtonItem getBackBarButtonItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIBarButtonItem *backBarButtonItem;
	 */
	public void setBackBarButtonItem(UIBarButtonItem backBarButtonItem){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *titleView;
	 */
	public UIView getTitleView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIView *titleView;
	 */
	public void setTitleView(UIView titleView){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *prompt;
	 */
	public String getPrompt(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *prompt;
	 */
	public void setPrompt(String prompt){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) BOOL hidesBackButton;
	 */
	public boolean getHidesBackButton(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,assign) BOOL hidesBackButton;
	 */
	public void setHidesBackButton(boolean hidesBackButton){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIBarButtonItem *leftBarButtonItem;
	 */
	public UIBarButtonItem getLeftBarButtonItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIBarButtonItem *leftBarButtonItem;
	 */
	public void setLeftBarButtonItem(UIBarButtonItem leftBarButtonItem){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIBarButtonItem *rightBarButtonItem;
	 */
	public UIBarButtonItem getRightBarButtonItem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIBarButtonItem *rightBarButtonItem;
	 */
	public void setRightBarButtonItem(UIBarButtonItem rightBarButtonItem){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setHidesBackButton:(BOOL)hidesBackButton animated:(BOOL)animated;
	 */
	public void setHidesBackButton(boolean hidesBackButton, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setLeftBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated;
	 */
	public void setLeftBarButtonItem(UIBarButtonItem item, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setRightBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated;
	 */
	public void setRightBarButtonItem(UIBarButtonItem item, boolean animated){
		throw new RuntimeException("Stub");
	}
}
