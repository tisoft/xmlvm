package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVVideoCompositionInstruction extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	AVVideoCompositionInstruction() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) CMTimeRange timeRange;
	 */
	public CMTimeRange getTimeRange(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) CGColorRef backgroundColor;
	 */
	public CGColor getBackgroundColor(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, retain) CGColorRef backgroundColor;
	 */
	public void setBackgroundColor(CGColor backgroundColor){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, copy) NSArray *layerInstructions;
	 */
	public List getLayerInstructions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) BOOL enablePostProcessing;
	 */
	public boolean getEnablePostProcessing(){
		throw new RuntimeException("Stub");
	}
}
