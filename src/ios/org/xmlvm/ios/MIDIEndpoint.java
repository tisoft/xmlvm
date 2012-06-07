package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDIEndpoint extends MIDIObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MIDIEndpoint() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus MIDIEndpointSetRefCons(MIDIEndpointRef endpt, void *ref1, void *ref2) ;
	 */
	public int setRefCons(byte[] ref1, byte[] ref2){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIEndpointGetRefCons(MIDIEndpointRef endpt, void **ref1, void **ref2) ;
	 */
	public int getRefCons(byte[][] ref1, byte[][] ref2){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIEndpointGetEntity( MIDIEndpointRef inEndpoint, MIDIEntityRef * outEntity) ;
	 */
	public int getEntity(MIDIEntity outEntity){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIEndpointDispose( MIDIEndpointRef endpt ) ;
	 */
	public int dispose(){
		throw new RuntimeException("Stub");
	}
}
