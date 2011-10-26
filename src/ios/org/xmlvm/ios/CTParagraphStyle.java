package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class CTParagraphStyle {

	/*
	 * Static methods
	 */

	/**
	 * CFTypeID CTParagraphStyleGetTypeID( void ) ;
	 */
	public static long getTypeID(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * CTParagraphStyleRef CTParagraphStyleCreate( const CTParagraphStyleSetting* settings, CFIndex settingCount ) ;
	 */
	public CTParagraphStyle(Reference<CTParagraphStyleSetting> settings, long settingCount) {}

	/** Default constructor */
	CTParagraphStyle() {}

	/*
	 * Instance methods
	 */

	/**
	 * CTParagraphStyleRef CTParagraphStyleCreateCopy( CTParagraphStyleRef paragraphStyle ) ;
	 */
	public CTParagraphStyle createCopy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * bool CTParagraphStyleGetValueForSpecifier( CTParagraphStyleRef paragraphStyle, CTParagraphStyleSpecifier spec, size_t valueBufferSize, void* valueBuffer ) ;
	 */
	public boolean getValueForSpecifier(int spec, int valueBufferSize, byte[] valueBuffer){
		throw new RuntimeException("Stub");
	}
}
