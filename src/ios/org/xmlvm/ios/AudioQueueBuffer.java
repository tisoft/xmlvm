package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AudioQueueBuffer {

	/*
	 * Variables
	 */
	 public int mAudioDataBytesCapacity;
	 public byte[] mAudioData;
	 public int mAudioDataByteSize;
	 public byte[] mUserData;
	 public int mPacketDescriptionCapacity;
	 public Reference<AudioStreamPacketDescription> mPacketDescriptions;
	 public int mPacketDescriptionCount;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AudioQueueBuffer() {}
}
