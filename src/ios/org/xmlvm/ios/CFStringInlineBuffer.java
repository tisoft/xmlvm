package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFStringInlineBuffer {

	/*
	 * Variables
	 */
	 public String theString;
	 public short[] directBuffer;
	 public CFRange rangeToBuffer;
	 public long bufferedRangeStart;
	 public long bufferedRangeEnd;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CFStringInlineBuffer() {}
}
