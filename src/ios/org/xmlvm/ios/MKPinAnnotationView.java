package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MKPinAnnotationView extends MKAnnotationView {

	/*
	 * Constructors
	 */
	public MKPinAnnotationView(org.xmlvm.ios.MKAnnotation annotation, String reuseIdentifier) {
		super(annotation, reuseIdentifier);
	}
	public MKPinAnnotationView(CGRect frame) {
		super(frame);
	}

	/** Default constructor */
	public MKPinAnnotationView() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) MKPinAnnotationColor pinColor;
	 */
	public int getPinColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MKPinAnnotationColor pinColor;
	 */
	public void setPinColor(int pinColor){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL animatesDrop;
	 */
	public boolean getAnimatesDrop(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL animatesDrop;
	 */
	public void setAnimatesDrop(boolean animatesDrop){
		throw new RuntimeException("Stub");
	}
}
