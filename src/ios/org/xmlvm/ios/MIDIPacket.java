package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDIPacket {

	/*
	 * Variables
	 */
	 public long timeStamp;
	 public short length;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MIDIPacket() {}

	/*
	 * Instance methods
	 */

	/**
	 * MIDIPacket * MIDIPacketNext( MIDIPacket *pkt );
	 */
	public Reference<MIDIPacket> next(){
		throw new RuntimeException("Stub");
	}
}
