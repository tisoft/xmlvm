package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CoreMIDI {

	/*
	 * Static methods
	 */

	/**
	 * MIDIDeviceListRef MIDIGetDriverDeviceList(MIDIDriverRef driver) ;
	 */
	public static MIDIDeviceList MIDIGetDriverDeviceList(Reference<MIDIDriverInterface>[] driver){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIDriverEnableMonitoring(MIDIDriverRef driver, Boolean enabled) ;
	 */
	public static int MIDIDriverEnableMonitoring(Reference<MIDIDriverInterface>[] driver, byte enabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * ItemCount MIDIGetNumberOfDevices() ;
	 */
	public static int MIDIGetNumberOfDevices(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFRunLoopRef MIDIGetDriverIORunLoop() ;
	 */
	public static CFRunLoop MIDIGetDriverIORunLoop(){
		throw new RuntimeException("Stub");
	}

	/**
	 * MIDIDeviceRef MIDIGetExternalDevice( ItemCount deviceIndex0 ) ;
	 */
	public static MIDIDevice MIDIGetExternalDevice(int deviceIndex0){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIGetSerialPortDrivers( CFArrayRef *outDriverNames ) ;
	 */
	public static int MIDIGetSerialPortDrivers(Reference<CFArray> outDriverNames){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDISendSysex( MIDISysexSendRequest *request ) ;
	 */
	public static int MIDISendSysex(Reference<MIDISysexSendRequest> request){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIDestinationCreate( MIDIClientRef client, CFStringRef name, MIDIReadProc readProc, void * refCon, MIDIEndpointRef * outDest ) ;
	 */
	public static int MIDIDestinationCreate(MIDIClient client, String name, Object readProc, byte[] refCon, MIDIEndpoint outDest){
		throw new RuntimeException("Stub");
	}

	/**
	 * ItemCount MIDIGetNumberOfDestinations() ;
	 */
	public static int MIDIGetNumberOfDestinations(){
		throw new RuntimeException("Stub");
	}

	/**
	 * MIDIEndpointRef MIDIGetSource( ItemCount sourceIndex0 ) ;
	 */
	public static MIDIEndpoint MIDIGetSource(int sourceIndex0){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIRestart() ;
	 */
	public static int MIDIRestart(){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIFlushOutput( MIDIEndpointRef dest ) ;
	 */
	public static int MIDIFlushOutput(MIDIEndpoint dest){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDISourceCreate( MIDIClientRef client, CFStringRef name, MIDIEndpointRef * outSrc ) ;
	 */
	public static int MIDISourceCreate(MIDIClient client, String name, MIDIEndpoint outSrc){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIReceived( MIDIEndpointRef src, const MIDIPacketList * pktlist ) ;
	 */
	public static int MIDIReceived(MIDIEndpoint src, Reference<MIDIPacketList> pktlist){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDISend( MIDIPortRef port, MIDIEndpointRef dest, const MIDIPacketList * pktlist ) ;
	 */
	public static int MIDISend(MIDIPort port, MIDIEndpoint dest, Reference<MIDIPacketList> pktlist){
		throw new RuntimeException("Stub");
	}

	/**
	 * ItemCount MIDIGetNumberOfExternalDevices() ;
	 */
	public static int MIDIGetNumberOfExternalDevices(){
		throw new RuntimeException("Stub");
	}

	/**
	 * MIDIEndpointRef MIDIGetDestination( ItemCount destIndex0 ) ;
	 */
	public static MIDIEndpoint MIDIGetDestination(int destIndex0){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIOutputPortCreate( MIDIClientRef client, CFStringRef portName, MIDIPortRef * outPort ) ;
	 */
	public static int MIDIOutputPortCreate(MIDIClient client, String portName, MIDIPort outPort){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIGetSerialPortOwner( CFStringRef portName, CFStringRef * outDriverName ) ;
	 */
	public static int MIDIGetSerialPortOwner(String portName, String outDriverName){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIExternalDeviceCreate(CFStringRef name, CFStringRef manufacturer, CFStringRef model, MIDIDeviceRef *outDevice) ;
	 */
	public static int MIDIExternalDeviceCreate(String name, String manufacturer, String model, MIDIDevice outDevice){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIInputPortCreate( MIDIClientRef client, CFStringRef portName, MIDIReadProc readProc, void * refCon, MIDIPortRef * outPort ) ;
	 */
	public static int MIDIInputPortCreate(MIDIClient client, String portName, Object readProc, byte[] refCon, MIDIPort outPort){
		throw new RuntimeException("Stub");
	}

	/**
	 * ItemCount MIDIGetNumberOfSources() ;
	 */
	public static int MIDIGetNumberOfSources(){
		throw new RuntimeException("Stub");
	}

	/**
	 * MIDIDeviceRef MIDIGetDevice( ItemCount deviceIndex0 ) ;
	 */
	public static MIDIDevice MIDIGetDevice(int deviceIndex0){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDISetSerialPortOwner( CFStringRef portName, CFStringRef driverName ) ;
	 */
	public static int MIDISetSerialPortOwner(String portName, String driverName){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	CoreMIDI() {}
}
