package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVCaptureInputPort extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AVCaptureInputPort() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) AVCaptureInput *input;
	 */
	public AVCaptureInput getInput(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *mediaType;
	 */
	public String getMediaType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) CMFormatDescriptionRef formatDescription;
	 */
	public CMFormatDescription getFormatDescription(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isEnabled) BOOL enabled;
	 */
	public boolean isEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, getter=isEnabled) BOOL enabled;
	 */
	public void setEnabled(boolean enabled){
		throw new RuntimeException("Stub");
	}
}
