package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIScreen extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSArray *)screens ;
	 */
	public static List screens(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (UIScreen *)mainScreen;
	 */
	public static UIScreen mainScreen(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	UIScreen() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly) CGRect bounds;
	 */
	public CGRect getBounds(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGRect applicationFrame;
	 */
	public CGRect getApplicationFrame(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGFloat scale ;
	 */
	public float getScale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,copy) NSArray *availableModes ;
	 */
	public List getAvailableModes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UIScreenMode *preferredMode ;
	 */
	public UIScreenMode getPreferredMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIScreenMode *currentMode ;
	 */
	public UIScreenMode getCurrentMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,retain) UIScreenMode *currentMode ;
	 */
	public void setCurrentMode(UIScreenMode currentMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) UIScreen *mirroredScreen ;
	 */
	public UIScreen getMirroredScreen(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (CADisplayLink *)displayLinkWithTarget:(id)target selector:(SEL)sel ;
	 */
	public CADisplayLink displayLinkWithTarget(Object target, SEL sel){
		throw new RuntimeException("Stub");
	}
}
