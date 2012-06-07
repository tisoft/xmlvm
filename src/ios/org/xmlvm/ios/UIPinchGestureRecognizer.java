package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class UIPinchGestureRecognizer extends UIGestureRecognizer {

	/*
	 * Constructors
	 */
	public UIPinchGestureRecognizer(Object target, SEL action) {
		super(target, action);
	}

	/** Default constructor */
	public UIPinchGestureRecognizer() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) CGFloat scale;
	 */
	public float getScale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGFloat scale;
	 */
	public void setScale(float scale){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) CGFloat velocity;
	 */
	public float getVelocity(){
		throw new RuntimeException("Stub");
	}
}
