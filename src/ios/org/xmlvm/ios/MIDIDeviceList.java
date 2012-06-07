package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDIDeviceList extends MIDIObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MIDIDeviceList() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * ItemCount MIDIDeviceListGetNumberOfDevices(MIDIDeviceListRef devList) ;
	 */
	public int getNumberOfDevices(){
		throw new RuntimeException("Stub");
	}

	/**
	 * MIDIDeviceRef MIDIDeviceListGetDevice(MIDIDeviceListRef devList, ItemCount index0) ;
	 */
	public MIDIDevice getDevice(int index0){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIDeviceListAddDevice(MIDIDeviceListRef devList, MIDIDeviceRef dev) ;
	 */
	public int addDevice(MIDIDevice dev){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIDeviceListDispose(MIDIDeviceListRef devList) ;
	 */
	public int dispose(){
		throw new RuntimeException("Stub");
	}
}
