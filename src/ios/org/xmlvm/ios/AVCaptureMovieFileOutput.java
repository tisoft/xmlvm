package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVCaptureMovieFileOutput extends AVCaptureFileOutput {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AVCaptureMovieFileOutput() {
		super();
	}

	/*
	 * Properties
	 */

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
}
