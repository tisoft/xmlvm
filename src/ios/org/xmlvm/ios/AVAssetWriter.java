package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVAssetWriter extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (AVAssetWriter *)assetWriterWithURL:(NSURL *)outputURL fileType:(NSString *)outputFileType error:(NSError **)outError;
	 */
	public static AVAssetWriter assetWriterWithURL(NSURL outputURL, String outputFileType, Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithURL:(NSURL *)outputURL fileType:(NSString *)outputFileType error:(NSError **)outError;
	 */
	public AVAssetWriter(NSURL outputURL, String outputFileType, Reference<NSError> outError) {}

	/** Default constructor */
	public AVAssetWriter() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, copy, readonly) NSURL *outputURL;
	 */
	public NSURL getOutputURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy, readonly) NSString *outputFileType;
	 */
	public String getOutputFileType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *availableMediaTypes;
	 */
	public List getAvailableMediaTypes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) AVAssetWriterStatus status;
	 */
	public int getStatus(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSError *error;
	 */
	public NSError getError(){
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
	 * @property(nonatomic) BOOL shouldOptimizeForNetworkUse;
	 */
	public boolean getShouldOptimizeForNetworkUse(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) BOOL shouldOptimizeForNetworkUse;
	 */
	public void setShouldOptimizeForNetworkUse(boolean shouldOptimizeForNetworkUse){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *inputs;
	 */
	public List getInputs(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTime movieFragmentInterval;
	 */
	public CMTime getMovieFragmentInterval(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTime movieFragmentInterval;
	 */
	public void setMovieFragmentInterval(CMTime movieFragmentInterval){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTimeScale movieTimeScale;
	 */
	public int getMovieTimeScale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTimeScale movieTimeScale;
	 */
	public void setMovieTimeScale(int movieTimeScale){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)canApplyOutputSettings:(NSDictionary *)outputSettings forMediaType:(NSString *)mediaType;
	 */
	public boolean canApplyOutputSettings(Map outputSettings, String mediaType){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)canAddInput:(AVAssetWriterInput *)input;
	 */
	public boolean canAddInput(AVAssetWriterInput input){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addInput:(AVAssetWriterInput *)input;
	 */
	public void addInput(AVAssetWriterInput input){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)startWriting;
	 */
	public boolean startWriting(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)startSessionAtSourceTime:(CMTime)startTime;
	 */
	public void startSessionAtSourceTime(CMTime startTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)endSessionAtSourceTime:(CMTime)endTime;
	 */
	public void endSessionAtSourceTime(CMTime endTime){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancelWriting;
	 */
	public void cancelWriting(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)finishWriting;
	 */
	public boolean finishWriting(){
		throw new RuntimeException("Stub");
	}
}
