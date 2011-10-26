package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SMPTETime {

	/*
	 * Variables
	 */
	 public short mSubframes;
	 public short mSubframeDivisor;
	 public int mCounter;
	 public int mType;
	 public int mFlags;
	 public short mHours;
	 public short mMinutes;
	 public short mSeconds;
	 public short mFrames;

	/*
	 * Constructors
	 */

	/** Default constructor */
	SMPTETime() {}
}
