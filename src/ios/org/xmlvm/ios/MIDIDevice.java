package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDIDevice extends MIDIObject {

	/*
	 * Constructors
	 */

	/**
	 * OSStatus MIDIDeviceCreate(MIDIDriverRef owner, CFStringRef name, CFStringRef manufacturer, CFStringRef model, MIDIDeviceRef *outDevice) ;
	 */
	public MIDIDevice(Reference<MIDIDriverInterface>[] owner, String name, String manufacturer, String model, MIDIDevice outDevice) {}

	/** Default constructor */
	MIDIDevice() {}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus MIDIDeviceDispose(MIDIDeviceRef device) ;
	 */
	public int dispose(){
		throw new RuntimeException("Stub");
	}

	/**
	 * ItemCount MIDIDeviceGetNumberOfEntities( MIDIDeviceRef device ) ;
	 */
	public int getNumberOfEntities(){
		throw new RuntimeException("Stub");
	}

	/**
	 * MIDIEntityRef MIDIDeviceGetEntity( MIDIDeviceRef device, ItemCount entityIndex0 ) ;
	 */
	public MIDIEntity getEntity(int entityIndex0){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIDeviceAddEntity(MIDIDeviceRef device, CFStringRef name, Boolean embedded, ItemCount numSourceEndpoints, ItemCount numDestinationEndpoints, MIDIEntityRef *newEntity) ;
	 */
	public int addEntity(String name, byte embedded, int numSourceEndpoints, int numDestinationEndpoints, MIDIEntity newEntity){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIDeviceRemoveEntity(MIDIDeviceRef device, MIDIEntityRef entity) ;
	 */
	public int removeEntity(MIDIEntity entity){
		throw new RuntimeException("Stub");
	}
}
