package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class ScheduledAudioSlice {

	/*
	 * Variables
	 */
	 public AudioTimeStamp mTimeStamp;
	 public Object mCompletionProc;
	 public byte[] mCompletionProcUserData;
	 public int mFlags;
	 public int mReserved;
	 public byte[] mReserved2;
	 public int mNumberFrames;
	 public Reference<AudioBufferList> mBufferList;

	/*
	 * Constructors
	 */

	/** Default constructor */
	ScheduledAudioSlice() {}
}
