package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDIThruConnection extends MIDIObject {

	/*
	 * Static methods
	 */

	/**
	 * OSStatus MIDIThruConnectionFind( CFStringRef inPersistentOwnerID, CFDataRef * outConnectionList ) ;
	 */
	public static int find(String inPersistentOwnerID, Reference<CFData> outConnectionList){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * OSStatus MIDIThruConnectionCreate( CFStringRef inPersistentOwnerID, CFDataRef inConnectionParams, MIDIThruConnectionRef * outConnection ) ;
	 */
	public MIDIThruConnection(String inPersistentOwnerID, CFData inConnectionParams, MIDIThruConnection outConnection) {}

	/** Default constructor */
	public MIDIThruConnection() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus MIDIThruConnectionDispose( MIDIThruConnectionRef connection ) ;
	 */
	public int dispose(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIThruConnectionGetParams(MIDIThruConnectionRef connection, CFDataRef * outConnectionParams ) ;
	 */
	public int getParams(Reference<CFData> outConnectionParams){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIThruConnectionSetParams(MIDIThruConnectionRef connection, CFDataRef inConnectionParams ) ;
	 */
	public int setParams(CFData inConnectionParams){
		throw new RuntimeException("Stub");
	}
}
