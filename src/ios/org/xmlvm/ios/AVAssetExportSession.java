package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVAssetExportSession extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSArray *)allExportPresets;
	 */
	public static List allExportPresets(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)exportPresetsCompatibleWithAsset:(AVAsset *)asset;
	 */
	public static List exportPresetsCompatibleWithAsset(AVAsset asset){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)exportSessionWithAsset:(AVAsset *)asset presetName:(NSString *)presetName ;
	 */
	public static Object exportSessionWithAsset(AVAsset asset, String presetName){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithAsset:(AVAsset *)asset presetName:(NSString *)presetName;
	 */
	public AVAssetExportSession(AVAsset asset, String presetName) {}

	/** Default constructor */
	AVAssetExportSession() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSString *presetName;
	 */
	public String getPresetName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSArray *supportedFileTypes;
	 */
	public List getSupportedFileTypes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *outputFileType;
	 */
	public String getOutputFileType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSString *outputFileType;
	 */
	public void setOutputFileType(String outputFileType){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSURL *outputURL;
	 */
	public NSURL getOutputURL(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) NSURL *outputURL;
	 */
	public void setOutputURL(NSURL outputURL){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) AVAssetExportSessionStatus status;
	 */
	public int getStatus(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSError *error;
	 */
	public NSError getError(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) float progress;
	 */
	public float getProgress(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CMTime maxDuration;
	 */
	public CMTime getMaxDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTimeRange timeRange;
	 */
	public CMTimeRange getTimeRange(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) CMTimeRange timeRange;
	 */
	public void setTimeRange(CMTimeRange timeRange){
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
	 * @property(nonatomic) long long fileLengthLimit;
	 */
	public long getFileLengthLimit(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) long long fileLengthLimit;
	 */
	public void setFileLengthLimit(long fileLengthLimit){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) AVAudioMix *audioMix;
	 */
	public AVAudioMix getAudioMix(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy) AVAudioMix *audioMix;
	 */
	public void setAudioMix(AVAudioMix audioMix){
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

	/*
	 * Instance methods
	 */

	/**
	 * - (void)exportAsynchronouslyWithCompletionHandler:(void (^)(void))handler;
	 */
	public void exportAsynchronouslyWithCompletionHandler(Object handler){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancelExport;
	 */
	public void cancelExport(){
		throw new RuntimeException("Stub");
	}
}
