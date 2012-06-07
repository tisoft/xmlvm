package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CFPlugInInstance {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CFPlugInInstanceGetTypeID(void);
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFPlugInInstanceRef CFPlugInInstanceCreateWithInstanceDataSize(CFAllocatorRef allocator, CFIndex instanceDataSize, CFPlugInInstanceDeallocateInstanceDataFunction deallocateInstanceFunction, CFStringRef factoryName, CFPlugInInstanceGetInterfaceFunction getInterfaceFunction);
	 */
	public static CFPlugInInstance createWithInstanceDataSize(CFAllocator allocator, long instanceDataSize, Object deallocateInstanceFunction, String factoryName, Object getInterfaceFunction){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * void *CFPlugInInstanceCreate(CFAllocatorRef allocator, CFUUIDRef factoryUUID, CFUUIDRef typeUUID);
	 */
	public CFPlugInInstance(CFAllocator allocator, CFUUID factoryUUID, CFUUID typeUUID) {}

	/** Default constructor */
	public CFPlugInInstance() {}

	/*
	 * Instance methods
	 */

	/**
	 * Boolean CFPlugInInstanceGetInterfaceFunctionTable(CFPlugInInstanceRef instance, CFStringRef interfaceName, void **ftbl);
	 */
	public byte getInterfaceFunctionTable(String interfaceName, byte[][] ftbl){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFStringRef CFPlugInInstanceGetFactoryName(CFPlugInInstanceRef instance);
	 */
	public String getFactoryName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void *CFPlugInInstanceGetInstanceData(CFPlugInInstanceRef instance);
	 */
	public byte[] getInstanceData(){
		throw new RuntimeException("Stub");
	}
}
