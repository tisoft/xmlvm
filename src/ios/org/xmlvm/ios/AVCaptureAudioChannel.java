package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVCaptureAudioChannel extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AVCaptureAudioChannel() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) float averagePowerLevel;
	 */
	public float getAveragePowerLevel(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) float peakHoldLevel;
	 */
	public float getPeakHoldLevel(){
		throw new RuntimeException("Stub");
	}
}
