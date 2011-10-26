package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSPropertyListSerialization extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (BOOL)propertyList:(id)plist isValidForFormat:(NSPropertyListFormat)format;
	 */
	public static boolean propertyList(Object plist, int format){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSData *)dataWithPropertyList:(id)plist format:(NSPropertyListFormat)format options:(NSPropertyListWriteOptions)opt error:(NSError **)error ;
	 */
	public static NSData dataWithPropertyList(Object plist, int format, int opt, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSInteger)writePropertyList:(id)plist toStream:(NSOutputStream *)stream format:(NSPropertyListFormat)format options:(NSPropertyListWriteOptions)opt error:(NSError **)error ;
	 */
	public static int writePropertyList(Object plist, NSOutputStream stream, int format, int opt, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)propertyListWithData:(NSData *)data options:(NSPropertyListReadOptions)opt format:(NSPropertyListFormat *)format error:(NSError **)error ;
	 */
	public static Object propertyListWithData(NSData data, int opt, int[] format, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)propertyListWithStream:(NSInputStream *)stream options:(NSPropertyListReadOptions)opt format:(NSPropertyListFormat *)format error:(NSError **)error ;
	 */
	public static Object propertyListWithStream(NSInputStream stream, int opt, int[] format, Reference<NSError> error){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSData *)dataFromPropertyList:(id)plist format:(NSPropertyListFormat)format errorDescription:(NSString **)errorString;
	 */
	public static NSData dataFromPropertyList(Object plist, int format, Reference<String> errorString){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)propertyListFromData:(NSData *)data mutabilityOption:(NSPropertyListMutabilityOptions)opt format:(NSPropertyListFormat *)format errorDescription:(NSString **)errorString;
	 */
	public static Object propertyListFromData(NSData data, int opt, int[] format, Reference<String> errorString){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	NSPropertyListSerialization() {}
}
