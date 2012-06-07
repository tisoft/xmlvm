package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDIIOErrorNotification {

	/*
	 * Variables
	 */
	 public int messageID;
	 public int messageSize;
	 public MIDIDevice driverDevice;
	 public int errorCode;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MIDIIOErrorNotification() {}
}
