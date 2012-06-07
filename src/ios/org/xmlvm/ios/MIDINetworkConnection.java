package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDINetworkConnection extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)connectionWithHost: (MIDINetworkHost *)host;
	 */
	public static Object connectionWithHost(MIDINetworkHost host){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public MIDINetworkConnection() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,retain,readonly) MIDINetworkHost *host;
	 */
	public MIDINetworkHost getHost(){
		throw new RuntimeException("Stub");
	}
}
