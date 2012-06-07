package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDIObjectPropertyChangeNotification {

	/*
	 * Variables
	 */
	 public int messageID;
	 public int messageSize;
	 public byte[] object;
	 public int objectType;
	 public String propertyName;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MIDIObjectPropertyChangeNotification() {}
}
