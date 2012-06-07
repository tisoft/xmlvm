package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AudioFileMarker {

	/*
	 * Variables
	 */
	 public double mFramePosition;
	 public String mName;
	 public int mMarkerID;
	 public AudioFile_SMPTE_Time mSMPTETime;
	 public int mType;
	 public short mReserved;
	 public short mChannel;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AudioFileMarker() {}
}
