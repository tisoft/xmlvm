package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVMutableVideoCompositionLayerInstruction extends AVVideoCompositionLayerInstruction {

	/*
	 * Static methods
	 */

	/**
	 * + (AVMutableVideoCompositionLayerInstruction *)videoCompositionLayerInstructionWithAssetTrack:(AVAssetTrack *)track;
	 */
	public static AVMutableVideoCompositionLayerInstruction videoCompositionLayerInstructionWithAssetTrack(AVAssetTrack track){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (AVMutableVideoCompositionLayerInstruction *)videoCompositionLayerInstruction;
	 */
	public static AVMutableVideoCompositionLayerInstruction videoCompositionLayerInstruction(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	AVMutableVideoCompositionLayerInstruction() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, assign) CMPersistentTrackID trackID;
	 */
	public int getTrackID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, assign) CMPersistentTrackID trackID;
	 */
	public void setTrackID(int trackID){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)setTransformRampFromStartTransform:(CGAffineTransform)startTransform toEndTransform:(CGAffineTransform)endTransform timeRange:(CMTimeRange)timeRange;
	 */
	public void setTransformRampFromStartTransform(CGAffineTransform startTransform, CGAffineTransform endTransform, CMTimeRange timeRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setTransform:(CGAffineTransform)transform atTime:(CMTime)time;
	 */
	public void setTransform(CGAffineTransform transform, CMTime time){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setOpacityRampFromStartOpacity:(float)startOpacity toEndOpacity:(float)endOpacity timeRange:(CMTimeRange)timeRange;
	 */
	public void setOpacityRampFromStartOpacity(float startOpacity, float endOpacity, CMTimeRange timeRange){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setOpacity:(float)opacity atTime:(CMTime)time;
	 */
	public void setOpacity(float opacity, CMTime time){
		throw new RuntimeException("Stub");
	}
}
