package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CVSMPTETime {

	/*
	 * Variables
	 */
	 public short subframes;
	 public short subframeDivisor;
	 public int counter;
	 public int type;
	 public int flags;
	 public short hours;
	 public short minutes;
	 public short seconds;
	 public short frames;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CVSMPTETime() {}
}
