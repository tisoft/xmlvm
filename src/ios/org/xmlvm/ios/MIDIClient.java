package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDIClient extends MIDIObject {

	/*
	 * Constructors
	 */

	/**
	 * OSStatus MIDIClientCreate( CFStringRef name, MIDINotifyProc notifyProc, void * notifyRefCon, MIDIClientRef * outClient ) ;
	 */
	public MIDIClient(String name, Object notifyProc, byte[] notifyRefCon, MIDIClient outClient) {}

	/** Default constructor */
	public MIDIClient() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus MIDIClientDispose( MIDIClientRef client ) ;
	 */
	public int dispose(){
		throw new RuntimeException("Stub");
	}
}
