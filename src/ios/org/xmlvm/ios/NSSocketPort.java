package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSSocketPort extends NSPort {

	/*
	 * Initialization enumerations
	 */

	public static enum Location {
		Default, Remote;
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)init;
	 */
	public NSSocketPort() {}

	/**
	 * - (id)initWithTCPPort:(unsigned short)port;
	 */
	public NSSocketPort(short port) {}

	/**
	 * - (id)initWithProtocolFamily:(int)family socketType:(int)type protocol:(int)protocol address:(NSData *)address;
	 * - (id)initRemoteWithProtocolFamily:(int)family socketType:(int)type protocol:(int)protocol address:(NSData *)address;
	 */
	public NSSocketPort(int family, int type, int protocol, NSData address, NSSocketPort.Location location) {}

	/**
	 * - (id)initWithProtocolFamily:(int)family socketType:(int)type protocol:(int)protocol socket:(NSSocketNativeHandle)sock;
	 */
	public NSSocketPort(int family, int type, int protocol, int sock) {}

	/**
	 * - (id)initRemoteWithTCPPort:(unsigned short)port host:(NSString *)hostName;
	 */
	public NSSocketPort(short port, String hostName) {}

	/*
	 * Instance methods
	 */

	/**
	 * - (int)protocolFamily;
	 */
	public int protocolFamily(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (int)socketType;
	 */
	public int socketType(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (int)protocol;
	 */
	public int protocol(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)address;
	 */
	public NSData address(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSSocketNativeHandle)socket;
	 */
	public int socket(){
		throw new RuntimeException("Stub");
	}
}
