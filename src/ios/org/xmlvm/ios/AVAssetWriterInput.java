package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVAssetWriterInput extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (AVAssetWriterInput *)assetWriterInputWithMediaType:(NSString *)mediaType outputSettings:(NSDictionary *)outputSettings;
	 */
	public static AVAssetWriterInput assetWriterInputWithMediaType(String mediaType, Map outputSettings){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithMediaType:(NSString *)mediaType outputSettings:(NSDictionary *)outputSettings;
	 */
	public AVAssetWriterInput(String mediaType, Map outputSettings) {}

	/** Default constructor */
	public AVAssetWriterInput() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSString *mediaType;
	 */
	public String getMediaType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSDictionary *outputSettings;
	 */
	public Map getOutputSettings(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSArray *metadata;
	 */
	public List getMetadata(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSArray *metadata;
	 */
	public void setMetadata(List metadata){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly, getter=isReadyForMoreMediaData) BOOL readyForMoreMediaData;
	 */
	public boolean isReadyForMoreMediaData(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL expectsMediaDataInRealTime;
	 */
	public boolean getExpectsMediaDataInRealTime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL expectsMediaDataInRealTime;
	 */
	public void setExpectsMediaDataInRealTime(boolean expectsMediaDataInRealTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGAffineTransform transform;
	 */
	public CGAffineTransform getTransform(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CGAffineTransform transform;
	 */
	public void setTransform(CGAffineTransform transform){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTimeScale mediaTimeScale;
	 */
	public int getMediaTimeScale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTimeScale mediaTimeScale;
	 */
	public void setMediaTimeScale(int mediaTimeScale){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)requestMediaDataWhenReadyOnQueue:(dispatch_queue_t)queue usingBlock:(void (^)(void))block;
	 */
	public void requestMediaDataWhenReadyOnQueue(Object queue, Object block){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)appendSampleBuffer:(CMSampleBufferRef)sampleBuffer;
	 */
	public boolean appendSampleBuffer(CMSampleBuffer sampleBuffer){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)markAsFinished;
	 */
	public void markAsFinished(){
		throw new RuntimeException("Stub");
	}
}
