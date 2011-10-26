package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVVideoComposition extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	AVVideoComposition() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) CMTime frameDuration;
	 */
	public CMTime getFrameDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CGSize renderSize;
	 */
	public CGSize getRenderSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) float renderScale;
	 */
	public float getRenderScale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, copy) NSArray *instructions;
	 */
	public List getInstructions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, retain) AVVideoCompositionCoreAnimationTool *animationTool;
	 */
	public AVVideoCompositionCoreAnimationTool getAnimationTool(){
		throw new RuntimeException("Stub");
	}
}
