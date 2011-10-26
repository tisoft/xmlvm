package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AudioBalanceFade {

	/*
	 * Variables
	 */
	 public float mLeftRightBalance;
	 public float mBackFrontFade;
	 public int mType;
	 public Reference<AudioChannelLayout> mChannelLayout;

	/*
	 * Constructors
	 */

	/** Default constructor */
	AudioBalanceFade() {}
}
