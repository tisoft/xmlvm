package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIMenuController extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (UIMenuController *)sharedMenuController;
	 */
	public static UIMenuController sharedMenuController(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public UIMenuController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,getter=isMenuVisible) BOOL menuVisible;
	 */
	public boolean isMenuVisible(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isMenuVisible) BOOL menuVisible;
	 */
	public void setMenuVisible(boolean menuVisible){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIMenuControllerArrowDirection arrowDirection ;
	 */
	public int getArrowDirection(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIMenuControllerArrowDirection arrowDirection ;
	 */
	public void setArrowDirection(int arrowDirection){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *menuItems ;
	 */
	public List getMenuItems(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,copy) NSArray *menuItems ;
	 */
	public void setMenuItems(List menuItems){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGRect menuFrame;
	 */
	public CGRect getMenuFrame(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setMenuVisible:(BOOL)menuVisible animated:(BOOL)animated;
	 */
	public void setMenuVisible(boolean menuVisible, boolean animated){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTargetRect:(CGRect)targetRect inView:(UIView *)targetView;
	 */
	public void setTargetRect(CGRect targetRect, UIView targetView){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)update;
	 */
	public void update(){
		throw new RuntimeException("Stub");
	}
}
