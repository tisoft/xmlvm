package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDIObjectAddRemoveNotification {

	/*
	 * Variables
	 */
	 public int messageID;
	 public int messageSize;
	 public byte[] parent;
	 public int parentType;
	 public byte[] child;
	 public int childType;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MIDIObjectAddRemoveNotification() {}
}
