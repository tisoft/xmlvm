package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AudioTimeStamp {

	/*
	 * Variables
	 */
	 public double mSampleTime;
	 public long mHostTime;
	 public double mRateScalar;
	 public long mWordClockTime;
	 public SMPTETime mSMPTETime;
	 public int mFlags;
	 public int mReserved;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AudioTimeStamp() {}
}
