package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDIEntity extends MIDIObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MIDIEntity() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * ItemCount MIDIEntityGetNumberOfSources( MIDIEntityRef entity ) ;
	 */
	public int getNumberOfSources(){
		throw new RuntimeException("Stub");
	}

	/**
	 * MIDIEndpointRef MIDIEntityGetSource( MIDIEntityRef entity, ItemCount sourceIndex0 ) ;
	 */
	public MIDIEndpoint getSource(int sourceIndex0){
		throw new RuntimeException("Stub");
	}

	/**
	 * ItemCount MIDIEntityGetNumberOfDestinations( MIDIEntityRef entity ) ;
	 */
	public int getNumberOfDestinations(){
		throw new RuntimeException("Stub");
	}

	/**
	 * MIDIEndpointRef MIDIEntityGetDestination( MIDIEntityRef entity, ItemCount destIndex0 ) ;
	 */
	public MIDIEndpoint getDestination(int destIndex0){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIEntityGetDevice( MIDIEntityRef inEntity, MIDIDeviceRef * outDevice) ;
	 */
	public int getDevice(MIDIDevice outDevice){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIEntityAddOrRemoveEndpoints(MIDIEntityRef entity, ItemCount numSourceEndpoints, ItemCount numDestinationEndpoints) ;
	 */
	public int addOrRemoveEndpoints(int numSourceEndpoints, int numDestinationEndpoints){
		throw new RuntimeException("Stub");
	}
}
