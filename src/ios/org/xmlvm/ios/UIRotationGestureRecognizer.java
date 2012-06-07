package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIRotationGestureRecognizer extends UIGestureRecognizer {

	/*
	 * Constructors
	 */
	public UIRotationGestureRecognizer(Object target, SEL action) {
		super(target, action);
	}

	/** Default constructor */
	public UIRotationGestureRecognizer() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) CGFloat rotation;
	 */
	public float getRotation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat rotation;
	 */
	public void setRotation(float rotation){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGFloat velocity;
	 */
	public float getVelocity(){
		throw new RuntimeException("Stub");
	}
}
