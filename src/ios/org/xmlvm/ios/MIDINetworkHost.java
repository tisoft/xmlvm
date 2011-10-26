package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class MIDINetworkHost extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)hostWithName: (NSString *)name address: (NSString *)address port: (NSUInteger)port;
	 */
	public static Object hostWithName(String name, String address, int port){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)hostWithName: (NSString *)name netService: (NSNetService *)netService;
	 */
	public static Object hostWithName(String name, NSNetService netService){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)hostWithName: (NSString *)name netServiceName: (NSString *)netServiceName netServiceDomain: (NSString *)netServiceDomain;
	 */
	public static Object hostWithName(String name, String netServiceName, String netServiceDomain){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	MIDINetworkHost() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic,readonly,retain) NSString *name;
	 */
	public String getName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) NSString *address;
	 */
	public String getAddress(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly) NSUInteger port;
	 */
	public int getPort(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) NSString *netServiceName;
	 */
	public String getNetServiceName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic,readonly,retain) NSString *netServiceDomain;
	 */
	public String getNetServiceDomain(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (BOOL)hasSameAddressAs: (MIDINetworkHost *)other;
	 */
	public boolean hasSameAddressAs(MIDINetworkHost other){
		throw new RuntimeException("Stub");
	}
}
