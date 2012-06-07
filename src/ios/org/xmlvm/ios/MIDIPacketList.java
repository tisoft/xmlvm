package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDIPacketList {

	/*
	 * Variables
	 */
	 public int numPackets;

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MIDIPacketList() {}

	/*
	 * Instance methods
	 */

	/**
	 * MIDIPacket * MIDIPacketListInit( MIDIPacketList *pktlist ) ;
	 */
	public Reference<MIDIPacket> init(){
		throw new RuntimeException("Stub");
	}

	/**
	 * MIDIPacket * MIDIPacketListAdd( MIDIPacketList * pktlist, ByteCount listSize, MIDIPacket * curPacket, MIDITimeStamp time, ByteCount nData, const Byte * data) ;
	 */
	public Reference<MIDIPacket> add(int listSize, Reference<MIDIPacket> curPacket, long time, int nData, byte[] data){
		throw new RuntimeException("Stub");
	}
}
