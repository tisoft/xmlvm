package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIMenuItem extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithTitle:(NSString *)title action:(SEL)action;
	 */
	public UIMenuItem(String title, SEL action) {}

	/** Default constructor */
	public UIMenuItem() {
		super();
	}

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
	 * @property(nonatomic) SEL action;
	 */
	public SEL getAction(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) SEL action;
	 */
	public void setAction(SEL action){
		throw new RuntimeException("Stub");
	}
}
