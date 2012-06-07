package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIWindow extends UIView {

	/*
	 * Constructors
	 */
	public UIWindow(CGRect frame) {
		super(frame);
	}

	/** Default constructor */
	public UIWindow() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,retain) UIScreen *screen ;
	 */
	public UIScreen getScreen(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIScreen *screen ;
	 */
	public void setScreen(UIScreen screen){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIWindowLevel windowLevel;
	 */
	public float getWindowLevel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) UIWindowLevel windowLevel;
	 */
	public void setWindowLevel(float windowLevel){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,getter=isKeyWindow) BOOL keyWindow;
	 */
	public boolean isKeyWindow(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIViewController *rootViewController ;
	 */
	public UIViewController getRootViewController(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIViewController *rootViewController ;
	 */
	public void setRootViewController(UIViewController rootViewController){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)becomeKeyWindow;
	 */
	public void becomeKeyWindow(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)resignKeyWindow;
	 */
	public void resignKeyWindow(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)makeKeyWindow;
	 */
	public void makeKeyWindow(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)makeKeyAndVisible;
	 */
	public void makeKeyAndVisible(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)sendEvent:(UIEvent *)event;
	 */
	public void sendEvent(UIEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGPoint)convertPoint:(CGPoint)point toWindow:(UIWindow *)window;
	 */
	public CGPoint convertPointToWindow(CGPoint point, UIWindow window){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGPoint)convertPoint:(CGPoint)point fromWindow:(UIWindow *)window;
	 */
	public CGPoint convertPointFromWindow(CGPoint point, UIWindow window){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)convertRect:(CGRect)rect toWindow:(UIWindow *)window;
	 */
	public CGRect convertRectToWindow(CGRect rect, UIWindow window){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGRect)convertRect:(CGRect)rect fromWindow:(UIWindow *)window;
	 */
	public CGRect convertRectFromWindow(CGRect rect, UIWindow window){
		throw new RuntimeException("Stub");
	}
}
