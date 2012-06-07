package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AudioUnitMeterClipping {

	/*
	 * Variables
	 */
	 public float peakValueSinceLastCall;
	 public byte sawInfinity;
	 public byte sawNotANumber;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AudioUnitMeterClipping() {}
}
