package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class EKEventEditViewController extends UINavigationController {

	/*
	 * Constructors
	 */

	/** Default constructor */
	EKEventEditViewController() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) id<EKEventEditViewDelegate> editViewDelegate;
	 */
	public EKEventEditViewDelegate getEditViewDelegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) id<EKEventEditViewDelegate> editViewDelegate;
	 */
	public void setEditViewDelegate(EKEventEditViewDelegate editViewDelegate){
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
