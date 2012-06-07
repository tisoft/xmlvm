package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CTTextTab {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CTTextTabGetTypeID( void ) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CTTextTabRef CTTextTabCreate( CTTextAlignment alignment, double location, CFDictionaryRef options ) ;
	 */
	public CTTextTab(byte alignment, double location, CFDictionary options) {}

	/** Default constructor */
	public CTTextTab() {}

	/*
	 * Instance methods
	 */

	/**
	 * CTTextAlignment CTTextTabGetAlignment( CTTextTabRef tab ) ;
	 */
	public byte getAlignment(){
		throw new RuntimeException("Stub");
	}

	/**
	 * double CTTextTabGetLocation( CTTextTabRef tab ) ;
	 */
	public double getLocation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * CFDictionaryRef CTTextTabGetOptions( CTTextTabRef tab ) ;
	 */
	public CFDictionary getOptions(){
		throw new RuntimeException("Stub");
	}
}
