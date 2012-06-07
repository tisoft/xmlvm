package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVAssetWriterInputPixelBufferAdaptor extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (AVAssetWriterInputPixelBufferAdaptor *)assetWriterInputPixelBufferAdaptorWithAssetWriterInput:(AVAssetWriterInput *)input sourcePixelBufferAttributes:(NSDictionary *)sourcePixelBufferAttributes;
	 */
	public static AVAssetWriterInputPixelBufferAdaptor assetWriterInputPixelBufferAdaptorWithAssetWriterInput(AVAssetWriterInput input, Map sourcePixelBufferAttributes){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithAssetWriterInput:(AVAssetWriterInput *)input sourcePixelBufferAttributes:(NSDictionary *)sourcePixelBufferAttributes;
	 */
	public AVAssetWriterInputPixelBufferAdaptor(AVAssetWriterInput input, Map sourcePixelBufferAttributes) {}

	/** Default constructor */
	public AVAssetWriterInputPixelBufferAdaptor() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) AVAssetWriterInput *assetWriterInput;
	 */
	public AVAssetWriterInput getAssetWriterInput(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSDictionary *sourcePixelBufferAttributes;
	 */
	public Map getSourcePixelBufferAttributes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CVPixelBufferPoolRef pixelBufferPool;
	 */
	public CVPixelBufferPool getPixelBufferPool(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)appendPixelBuffer:(CVPixelBufferRef)pixelBuffer withPresentationTime:(CMTime)presentationTime;
	 */
	public boolean appendPixelBuffer(CVPixelBuffer pixelBuffer, CMTime presentationTime){
		throw new RuntimeException("Stub");
	}
}
