package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AudioPanningInfo {

	/*
	 * Variables
	 */
	 public int mPanningMode;
	 public int mCoordinateFlags;
	 public float mGainScale;
	 public Reference<AudioChannelLayout> mOutputChannelMap;

	/*
	 * Constructors
	 */

	/** Default constructor */
	AudioPanningInfo() {}
}
