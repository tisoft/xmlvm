package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CMBufferCallbacks {

	/*
	 * Variables
	 */
	 public int version;
	 public byte[] refcon;
	 public Object getDecodeTimeStamp;
	 public Object getPresentationTimeStamp;
	 public Object getDuration;
	 public Object isDataReady;
	 public Object compare;
	 public String dataBecameReadyNotification;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public CMBufferCallbacks() {}
}
