package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIEvent extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public UIEvent() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly) UIEventType type ;
	 */
	public int getType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) UIEventSubtype subtype ;
	 */
	public int getSubtype(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSTimeInterval timestamp;
	 */
	public double getTimestamp(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSSet *)allTouches;
	 */
	public Set allTouches(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)touchesForWindow:(UIWindow *)window;
	 */
	public Set touchesForWindow(UIWindow window){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)touchesForView:(UIView *)view;
	 */
	public Set touchesForView(UIView view){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)touchesForGestureRecognizer:(UIGestureRecognizer *)gesture ;
	 */
	public Set touchesForGestureRecognizer(UIGestureRecognizer gesture){
		throw new RuntimeException("Stub");
	}
}
