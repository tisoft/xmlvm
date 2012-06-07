package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AudioComponentInstance {

	/*
	 * Constructors
	 */

	/**
	 * OSStatus AudioComponentInstanceNew( AudioComponent inComponent, AudioComponentInstance * outInstance) ;
	 */
	public AudioComponentInstance(AudioComponent inComponent, Reference<ComponentInstanceRecord> outInstance) {}

	/** Default constructor */
	public AudioComponentInstance() {}

	/*
	 * Instance methods
	 */

	/**
	 * OSStatus AudioComponentInstanceDispose( AudioComponentInstance inInstance) ;
	 */
	public int dispose(){
		throw new RuntimeException("Stub");
	}

	/**
	 * AudioComponent AudioComponentInstanceGetComponent ( AudioComponentInstance inInstance) ;
	 */
	public AudioComponent getComponent(){
		throw new RuntimeException("Stub");
	}

	/**
	 * Boolean AudioComponentInstanceCanDo ( AudioComponentInstance inInstance, SInt16 inSelectorID) ;
	 */
	public byte canDo(short inSelectorID){
		throw new RuntimeException("Stub");
	}
}
