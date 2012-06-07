package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDIControlTransform {

	/*
	 * Variables
	 */
	 public byte controlType;
	 public byte remappedControlType;
	 public short controlNumber;
	 public short transform;
	 public short param;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MIDIControlTransform() {}
}
