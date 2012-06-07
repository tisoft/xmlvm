package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVVideoCompositionLayerInstruction extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AVVideoCompositionLayerInstruction() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly, assign) CMPersistentTrackID trackID;
	 */
	public int getTrackID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)getTransformRampForTime:(CMTime)time startTransform:(CGAffineTransform *)startTransform endTransform:(CGAffineTransform *)endTransform timeRange:(CMTimeRange *)timeRange;
	 */
	public boolean getTransformRampForTime(CMTime time, Reference<CGAffineTransform> startTransform, Reference<CGAffineTransform> endTransform, Reference<CMTimeRange> timeRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)getOpacityRampForTime:(CMTime)time startOpacity:(float *)startOpacity endOpacity:(float *)endOpacity timeRange:(CMTimeRange *)timeRange;
	 */
	public boolean getOpacityRampForTime(CMTime time, float[] startOpacity, float[] endOpacity, Reference<CMTimeRange> timeRange){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
