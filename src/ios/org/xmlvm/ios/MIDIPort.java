package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDIPort extends MIDIObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	MIDIPort() {}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus MIDIPortDispose( MIDIPortRef port ) ;
	 */
	public int dispose(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIPortConnectSource( MIDIPortRef port, MIDIEndpointRef source, void * connRefCon ) ;
	 */
	public int connectSource(MIDIEndpoint source, byte[] connRefCon){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIPortDisconnectSource( MIDIPortRef port, MIDIEndpointRef source ) ;
	 */
	public int disconnectSource(MIDIEndpoint source){
		throw new RuntimeException("Stub");
	}
}
