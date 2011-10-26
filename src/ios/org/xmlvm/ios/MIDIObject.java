package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDIObject {

	/*
	 * Static methods
	 */

	/**
	 * OSStatus MIDIObjectFindByUniqueID( MIDIUniqueID inUniqueID, MIDIObjectRef * outObject, MIDIObjectType * outObjectType) ;
	 */
	public static int findByUniqueID(int inUniqueID, byte[][] outObject, int[] outObjectType){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	MIDIObject() {}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus MIDIObjectGetIntegerProperty( MIDIObjectRef obj, CFStringRef propertyID, SInt32 * outValue ) ;
	 */
	public int getIntegerProperty(String propertyID, int[] outValue){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIObjectSetIntegerProperty( MIDIObjectRef obj, CFStringRef propertyID, SInt32 value ) ;
	 */
	public int setIntegerProperty(String propertyID, int value){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIObjectGetStringProperty( MIDIObjectRef obj, CFStringRef propertyID, CFStringRef * str ) ;
	 */
	public int getStringProperty(String propertyID, String str){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIObjectSetStringProperty( MIDIObjectRef obj, CFStringRef propertyID, CFStringRef str ) ;
	 */
	public int setStringProperty(String propertyID, String str){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIObjectGetDataProperty( MIDIObjectRef obj, CFStringRef propertyID, CFDataRef * outData ) ;
	 */
	public int getDataProperty(String propertyID, Reference<CFData> outData){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIObjectSetDataProperty( MIDIObjectRef obj, CFStringRef propertyID, CFDataRef data ) ;
	 */
	public int setDataProperty(String propertyID, CFData data){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIObjectGetDictionaryProperty( MIDIObjectRef obj, CFStringRef propertyID, CFDictionaryRef * outDict ) ;
	 */
	public int getDictionaryProperty(String propertyID, Reference<CFDictionary> outDict){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIObjectSetDictionaryProperty(MIDIObjectRef obj, CFStringRef propertyID, CFDictionaryRef data ) ;
	 */
	public int setDictionaryProperty(String propertyID, CFDictionary data){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIObjectGetProperties( MIDIObjectRef obj, CFPropertyListRef * outProperties, Boolean deep ) ;
	 */
	public int getProperties(CFPropertyList outProperties, byte deep){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus MIDIObjectRemoveProperty( MIDIObjectRef obj, CFStringRef propertyID ) ;
	 */
	public int removeProperty(String propertyID){
		throw new RuntimeException("Stub");
	}
}
