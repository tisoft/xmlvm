package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class EKEventViewController extends UIViewController {

	/*
	 * Constructors
	 */
	public EKEventViewController(String nibNameOrNil, NSBundle nibBundleOrNil) {
		super(nibNameOrNil, nibBundleOrNil);
	}

	/** Default constructor */
	public EKEventViewController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) id<EKEventViewDelegate> delegate ;
	 */
	public org.xmlvm.ios.EKEventViewDelegate getDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<EKEventViewDelegate> delegate ;
	 */
	public void setDelegate(org.xmlvm.ios.EKEventViewDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) EKEvent *event;
	 */
	public EKEvent getEvent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) EKEvent *event;
	 */
	public void setEvent(EKEvent event){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsEditing;
	 */
	public boolean getAllowsEditing(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsEditing;
	 */
	public void setAllowsEditing(boolean allowsEditing){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsCalendarPreview;
	 */
	public boolean getAllowsCalendarPreview(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL allowsCalendarPreview;
	 */
	public void setAllowsCalendarPreview(boolean allowsCalendarPreview){
		throw new RuntimeException("Stub");
	}
}
