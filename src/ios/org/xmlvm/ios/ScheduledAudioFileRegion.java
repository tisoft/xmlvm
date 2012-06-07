package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ScheduledAudioFileRegion {

	/*
	 * Variables
	 */
	 public AudioTimeStamp mTimeStamp;
	 public Object mCompletionProc;
	 public byte[] mCompletionProcUserData;
	 public int mLoopCount;
	 public long mStartFrame;
	 public int mFramesToPlay;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public ScheduledAudioFileRegion() {}
}
