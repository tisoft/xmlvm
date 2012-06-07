package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSNetService extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSDictionary *)dictionaryFromTXTRecordData:(NSData *)txtData;
	 */
	public static Map dictionaryFromTXTRecordData(NSData txtData){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSData *)dataFromTXTRecordDictionary:(NSDictionary *)txtDictionary;
	 */
	public static NSData dataFromTXTRecordDictionary(Map txtDictionary){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithDomain:(NSString *)domain type:(NSString *)type name:(NSString *)name port:(int)port;
	 */
	public NSNetService(String domain, String type, String name, int port) {}

	/**
	 * - (id)initWithDomain:(NSString *)domain type:(NSString *)type name:(NSString *)name;
	 */
	public NSNetService(String domain, String type, String name) {}

	/** Default constructor */
	public NSNetService() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (id <NSNetServiceDelegate>)delegate;
	 */
	public org.xmlvm.ios.NSNetServiceDelegate delegate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setDelegate:(id <NSNetServiceDelegate>)delegate;
	 */
	public void setDelegate(org.xmlvm.ios.NSNetServiceDelegate delegate){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)scheduleInRunLoop:(NSRunLoop *)aRunLoop forMode:(NSString *)mode;
	 */
	public void scheduleInRunLoop(NSRunLoop aRunLoop, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeFromRunLoop:(NSRunLoop *)aRunLoop forMode:(NSString *)mode;
	 */
	public void removeFromRunLoop(NSRunLoop aRunLoop, String mode){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)domain;
	 */
	public String domain(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)type;
	 */
	public String type(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)name;
	 */
	public String name(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)addresses;
	 */
	public List addresses(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSInteger)port;
	 */
	public int port(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)publish;
	 */
	public void publish(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)publishWithOptions:(NSNetServiceOptions)options;
	 */
	public void publishWithOptions(int options){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)resolve ;
	 */
	public void resolve(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stop;
	 */
	public void stop(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)hostName;
	 */
	public String hostName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)resolveWithTimeout:(NSTimeInterval)timeout;
	 */
	public void resolveWithTimeout(double timeout){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)getInputStream:(NSInputStream **)inputStream outputStream:(NSOutputStream **)outputStream;
	 */
	public boolean getInputStream(Reference<NSInputStream> inputStream, Reference<NSOutputStream> outputStream){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (BOOL)setTXTRecordData:(NSData *)recordData;
	 */
	public boolean setTXTRecordData(NSData recordData){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSData *)TXTRecordData;
	 */
	public NSData TXTRecordData(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)startMonitoring;
	 */
	public void startMonitoring(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)stopMonitoring;
	 */
	public void stopMonitoring(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)protocolSpecificInformation ;
	 */
	public String protocolSpecificInformation(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setProtocolSpecificInformation:(NSString *)specificInformation ;
	 */
	public void setProtocolSpecificInformation(String specificInformation){
		throw new RuntimeException("Stub");
	}
}
