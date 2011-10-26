package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSZone {

	/*
	 * Static methods
	 */

	/**
	 * NSZone *NSZoneFromPointer(void *ptr);
	 */
	public static NSZone fromPointer(byte[] ptr){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	NSZone() {}

	/*
	 * Instance methods
	 */

	/**
	 * NSString *NSZoneName(NSZone *zone);
	 */
	public String name(){
		throw new RuntimeException("Stub");
	}

	/**
	 * void *NSZoneMalloc(NSZone *zone, NSUInteger size);
	 */
	public byte[] malloc(int size){
		throw new RuntimeException("Stub");
	}

	/**
	 * void *NSZoneCalloc(NSZone *zone, NSUInteger numElems, NSUInteger byteSize);
	 */
	public byte[] calloc(int numElems, int byteSize){
		throw new RuntimeException("Stub");
	}

	/**
	 * void *NSZoneRealloc(NSZone *zone, void *ptr, NSUInteger size);
	 */
	public byte[] realloc(byte[] ptr, int size){
		throw new RuntimeException("Stub");
	}

	/**
	 * void NSZoneFree(NSZone *zone, void *ptr);
	 */
	public void free(byte[] ptr){
		throw new RuntimeException("Stub");
	}
}
