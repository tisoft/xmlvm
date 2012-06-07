package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
(references={UILabel.class})
public class UIAlertView extends UIView {

	/*
	 * Constructors
	 */
	public UIAlertView(CGRect frame) {
		super(frame);
	}

	/**
	 * - (id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id )delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... ;
	 */
	public UIAlertView(String title, String message, Object delegate, String cancelButtonTitle, String... otherButtonTitles) {}

	/** Default constructor */
	public UIAlertView() {
		super();
	}

	/*
	 * Properties
	 */

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
	 * @property(nonatomic,copy) NSString *message;
	 */
	public String getMessage(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSString *message;
	 */
	public void setMessage(String message){
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
	 * - (void)show;
	 */
	public void show(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)dismissWithClickedButtonIndex:(NSInteger)buttonIndex animated:(BOOL)animated;
	 */
	public void dismissWithClickedButtonIndex(int buttonIndex, boolean animated){
		throw new RuntimeException("Stub");
	}
}
