package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSProcessInfo extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSProcessInfo *)processInfo;
	 */
	public static NSProcessInfo processInfo(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public NSProcessInfo() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSDictionary *)environment;
	 */
	public Map environment(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)arguments;
	 */
	public List arguments(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)hostName;
	 */
	public String hostName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)processName;
	 */
	public String processName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (int)processIdentifier;
	 */
	public int processIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)setProcessName:(NSString *)newName;
	 */
	public void setProcessName(String newName){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)globallyUniqueString;
	 */
	public String globallyUniqueString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)operatingSystem;
	 */
	public int operatingSystem(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)operatingSystemName;
	 */
	public String operatingSystemName(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)operatingSystemVersionString ;
	 */
	public String operatingSystemVersionString(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)processorCount ;
	 */
	public int processorCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSUInteger)activeProcessorCount ;
	 */
	public int activeProcessorCount(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (unsigned long long)physicalMemory ;
	 */
	public long physicalMemory(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSTimeInterval)systemUptime ;
	 */
	public double systemUptime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)disableSuddenTermination ;
	 */
	public void disableSuddenTermination(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)enableSuddenTermination ;
	 */
	public void enableSuddenTermination(){
		throw new RuntimeException("Stub");
	}
}
