package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVAssetReader extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (AVAssetReader *)assetReaderWithAsset:(AVAsset *)asset error:(NSError **)outError;
	 */
	public static AVAssetReader assetReaderWithAsset(AVAsset asset, Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithAsset:(AVAsset *)asset error:(NSError **)outError;
	 */
	public AVAssetReader(AVAsset asset, Reference<NSError> outError) {}

	/** Default constructor */
	public AVAssetReader() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, retain, readonly) AVAsset *asset;
	 */
	public AVAsset getAsset(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) AVAssetReaderStatus status;
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
	 * @property(nonatomic, readonly) NSArray *outputs;
	 */
	public List getOutputs(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)canAddOutput:(AVAssetReaderOutput *)output;
	 */
	public boolean canAddOutput(AVAssetReaderOutput output){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addOutput:(AVAssetReaderOutput *)output;
	 */
	public void addOutput(AVAssetReaderOutput output){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)startReading;
	 */
	public boolean startReading(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)cancelReading;
	 */
	public void cancelReading(){
		throw new RuntimeException("Stub");
	}
}
