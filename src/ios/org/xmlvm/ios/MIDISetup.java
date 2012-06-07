package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDISetup extends MIDIObject {

	/*
	 * Static methods
	 */

	/**
	 * OSStatus MIDISetupFromData( CFDataRef data, MIDISetupRef * outSetup) ;
	 */
	public static int fromData(CFData data, MIDISetup outSetup){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDISetupAddDevice( MIDIDeviceRef device ) ;
	 */
	public static int addDevice(MIDIDevice device){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDISetupRemoveDevice( MIDIDeviceRef device ) ;
	 */
	public static int removeDevice(MIDIDevice device){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDISetupAddExternalDevice( MIDIDeviceRef device ) ;
	 */
	public static int addExternalDevice(MIDIDevice device){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDISetupRemoveExternalDevice( MIDIDeviceRef device ) ;
	 */
	public static int removeExternalDevice(MIDIDevice device){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * OSStatus MIDISetupCreate( MIDISetupRef *outSetup ) ;
	 */
	public MIDISetup(MIDISetup outSetup) {}

	/** Default constructor */
	public MIDISetup() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus MIDISetupDispose( MIDISetupRef setup ) ;
	 */
	public int dispose(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDISetupInstall( MIDISetupRef setup ) ;
	 */
	public int install(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDISetupGetCurrent( MIDISetupRef *outSetup ) ;
	 */
	public int getCurrent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDISetupToData( MIDISetupRef setup, CFDataRef * outData ) ;
	 */
	public int toData(Reference<CFData> outData){
		throw new RuntimeException("Stub");
	}
}
