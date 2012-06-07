package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AudioComponent {

	/*
	 * Static methods
	 */

	/**
	 * UInt32 AudioComponentCount ( const AudioComponentDescription * inDesc) ;
	 */
	public static int count(Reference<AudioComponentDescription> inDesc){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AudioComponent() {}

	/*
	 * Instance methods
	 */

	/**
	 * AudioComponent AudioComponentFindNext ( AudioComponent inComponent, const AudioComponentDescription * inDesc) ;
	 */
	public AudioComponent findNext(Reference<AudioComponentDescription> inDesc){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioComponentCopyName ( AudioComponent inComponent, CFStringRef * outName) ;
	 */
	public int copyName(String outName){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioComponentGetDescription( AudioComponent inComponent, AudioComponentDescription * outDesc) ;
	 */
	public int getDescription(Reference<AudioComponentDescription> outDesc){
		throw new RuntimeException("Stub");
	}

	/**
	 * OSStatus AudioComponentGetVersion( AudioComponent inComponent, UInt32 * outVersion) ;
	 */
	public int getVersion(int[] outVersion){
		throw new RuntimeException("Stub");
	}
}
