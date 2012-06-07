package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDISysexSendRequest {

	/*
	 * Variables
	 */
	 public MIDIEndpoint destination;
	 public byte[] data;
	 public int bytesToSend;
	 public byte complete;
	 public Object completionProc;
	 public byte[] completionRefCon;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MIDISysexSendRequest() {}
}
