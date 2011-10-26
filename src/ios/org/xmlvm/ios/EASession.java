package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class EASession extends NSObject {

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithAccessory:(EAAccessory *)accessory forProtocol:(NSString *)protocolString ;
	 */
	public EASession(EAAccessory accessory, String protocolString) {}

	/** Default constructor */
	EASession() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) EAAccessory *accessory ;
	 */
	public EAAccessory getAccessory(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *protocolString ;
	 */
	public String getProtocolString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSInputStream *inputStream ;
	 */
	public NSInputStream getInputStream(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSOutputStream *outputStream ;
	 */
	public NSOutputStream getOutputStream(){
		throw new RuntimeException("Stub");
	}
}
