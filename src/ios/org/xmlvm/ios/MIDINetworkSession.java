package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDINetworkSession extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (MIDINetworkSession *)defaultSession;
	 */
	public static MIDINetworkSession defaultSession(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	MIDINetworkSession() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,getter=isEnabled) BOOL enabled;
	 */
	public boolean isEnabled(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,getter=isEnabled) BOOL enabled;
	 */
	public void setEnabled(boolean enabled){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSUInteger networkPort;
	 */
	public int getNetworkPort(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSString *networkName;
	 */
	public String getNetworkName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSString *localName;
	 */
	public String getLocalName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MIDINetworkConnectionPolicy connectionPolicy;
	 */
	public int getConnectionPolicy(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic) MIDINetworkConnectionPolicy connectionPolicy;
	 */
	public void setConnectionPolicy(int connectionPolicy){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSSet *)contacts;
	 */
	public Set contacts(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)addContact: (MIDINetworkHost *)contact;
	 */
	public boolean addContact(MIDINetworkHost contact){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)removeContact: (MIDINetworkHost *)contact;
	 */
	public boolean removeContact(MIDINetworkHost contact){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSet *)connections;
	 */
	public Set connections(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)addConnection: (MIDINetworkConnection *)connection;
	 */
	public boolean addConnection(MIDINetworkConnection connection){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)removeConnection: (MIDINetworkConnection *)connection;
	 */
	public boolean removeConnection(MIDINetworkConnection connection){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (MIDIEndpointRef)sourceEndpoint;
	 */
	public MIDIEndpoint sourceEndpoint(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (MIDIEndpointRef)destinationEndpoint;
	 */
	public MIDIEndpoint destinationEndpoint(){
		throw new RuntimeException("Stub");
	}
}
