package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AudioStreamBasicDescription {

	/*
	 * Variables
	 */
	 public double mSampleRate;
	 public int mFormatID;
	 public int mFormatFlags;
	 public int mBytesPerPacket;
	 public int mFramesPerPacket;
	 public int mBytesPerFrame;
	 public int mChannelsPerFrame;
	 public int mBitsPerChannel;
	 public int mReserved;

	/*
	 * Constructors
	 */

	/** Default constructor */
	AudioStreamBasicDescription() {}
}
