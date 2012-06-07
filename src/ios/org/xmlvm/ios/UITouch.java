package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UITouch extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public UITouch() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly) NSTimeInterval timestamp;
	 */
	public double getTimestamp(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UITouchPhase phase;
	 */
	public int getPhase(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSUInteger tapCount;
	 */
	public int getTapCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UIWindow *window;
	 */
	public UIWindow getWindow(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UIView *view;
	 */
	public UIView getView(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,copy) NSArray *gestureRecognizers ;
	 */
	public List getGestureRecognizers(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (CGPoint)locationInView:(UIView *)view;
	 */
	public CGPoint locationInView(UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (CGPoint)previousLocationInView:(UIView *)view;
	 */
	public CGPoint previousLocationInView(UIView view){
		throw new RuntimeException("Stub");
	}
}
