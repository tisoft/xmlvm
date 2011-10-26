package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVAssetImageGenerator extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (AVAssetImageGenerator *)assetImageGeneratorWithAsset:(AVAsset *)asset;
	 */
	public static AVAssetImageGenerator assetImageGeneratorWithAsset(AVAsset asset){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithAsset:(AVAsset *)asset;
	 */
	public AVAssetImageGenerator(AVAsset asset) {}

	/** Default constructor */
	AVAssetImageGenerator() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic) BOOL appliesPreferredTrackTransform;
	 */
	public boolean getAppliesPreferredTrackTransform(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL appliesPreferredTrackTransform;
	 */
	public void setAppliesPreferredTrackTransform(boolean appliesPreferredTrackTransform){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGSize maximumSize;
	 */
	public CGSize getMaximumSize(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGSize maximumSize;
	 */
	public void setMaximumSize(CGSize maximumSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *apertureMode;
	 */
	public String getApertureMode(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *apertureMode;
	 */
	public void setApertureMode(String apertureMode){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) AVVideoComposition *videoComposition;
	 */
	public AVVideoComposition getVideoComposition(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) AVVideoComposition *videoComposition;
	 */
	public void setVideoComposition(AVVideoComposition videoComposition){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (CGImageRef)copyCGImageAtTime:(CMTime)requestedTime actualTime:(CMTime *)actualTime error:(NSError **)outError;
	 */
	public CGImage copyCGImageAtTime(CMTime requestedTime, Reference<CMTime> actualTime, Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)generateCGImagesAsynchronouslyForTimes:(NSArray *)requestedTimes completionHandler:(AVAssetImageGeneratorCompletionHandler)handler;
	 */
	public void generateCGImagesAsynchronouslyForTimes(List requestedTimes, Object handler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancelAllCGImageGeneration;
	 */
	public void cancelAllCGImageGeneration(){
		throw new RuntimeException("Stub");
	}
}
