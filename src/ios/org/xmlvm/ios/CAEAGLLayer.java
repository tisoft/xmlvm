package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CAEAGLLayer extends CALayer {

	/*
	 * Constructors
	 */
	public CAEAGLLayer(Object layer) {
		super(layer);
	}

	/** Default constructor */
	public CAEAGLLayer() {
		super();
	}

	/*
	 * Interface Properties
	 */

	/**
	 * @property(copy) NSDictionary* drawableProperties;
	 */
	public Map getDrawableProperties(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(copy) NSDictionary* drawableProperties;
	 */
	public void setDrawableProperties(Map drawableProperties){
		throw new RuntimeException("Stub");
	}
}
