package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AUParameterMIDIMapping {

	/*
	 * Variables
	 */
	 public int mScope;
	 public int mElement;
	 public int mParameterID;
	 public int mFlags;
	 public float mSubRangeMin;
	 public float mSubRangeMax;
	 public byte mStatus;
	 public byte mData1;
	 public byte reserved1;
	 public byte reserved2;
	 public int reserved3;

	/*
	 * Constructors
	 */

	/** Default constructor */
	AUParameterMIDIMapping() {}
}
