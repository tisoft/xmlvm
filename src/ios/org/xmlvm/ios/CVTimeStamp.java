package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CVTimeStamp {

	/*
	 * Variables
	 */
	 public int version;
	 public int videoTimeScale;
	 public long videoTime;
	 public long hostTime;
	 public double rateScalar;
	 public long videoRefreshPeriod;
	 public CVSMPTETime smpteTime;
	 public long flags;
	 public long reserved;

	/*
	 * Constructors
	 */

	/** Default constructor */
	CVTimeStamp() {}
}
