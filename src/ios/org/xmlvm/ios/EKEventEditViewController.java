package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class EKEventEditViewController extends UINavigationController {

	/*
	 * Constructors
	 */
	public EKEventEditViewController(UIViewController rootViewController) {
		super(rootViewController);
	}
	public EKEventEditViewController(String nibNameOrNil, NSBundle nibBundleOrNil) {
		super(nibNameOrNil, nibBundleOrNil);
	}

	/** Default constructor */
	public EKEventEditViewController() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) id<EKEventEditViewDelegate> editViewDelegate;
	 */
	public org.xmlvm.ios.EKEventEditViewDelegate getEditViewDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<EKEventEditViewDelegate> editViewDelegate;
	 */
	public void setEditViewDelegate(org.xmlvm.ios.EKEventEditViewDelegate editViewDelegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) EKEventStore *eventStore;
	 */
	public EKEventStore getEventStore(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) EKEventStore *eventStore;
	 */
	public void setEventStore(EKEventStore eventStore){
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
}
