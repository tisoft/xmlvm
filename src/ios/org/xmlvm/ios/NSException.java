package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class NSException extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSException *)exceptionWithName:(NSString *)name reason:(NSString *)reason userInfo:(NSDictionary *)userInfo;
	 */
	public static NSException exceptionWithName(String name, String reason, Map userInfo){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)raise:(NSString *)name format:(NSString *)format, ... ;
	 */
	public static void raise(String name, String... format){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (void)raise:(NSString *)name format:(NSString *)format arguments:(va_list)argList ;
	 */
	public static void raise(String name, String format, byte[] argList){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/**
	 * - (id)initWithName:(NSString *)aName reason:(NSString *)aReason userInfo:(NSDictionary *)aUserInfo;
	 */
	public NSException(String aName, String aReason, Map aUserInfo) {}

	/** Default constructor */
	public NSException() {
		super();
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (NSString *)name;
	 */
	public String name(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSString *)reason;
	 */
	public String reason(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSDictionary *)userInfo;
	 */
	public Map userInfo(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)callStackReturnAddresses ;
	 */
	public List callStackReturnAddresses(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (NSArray *)callStackSymbols ;
	 */
	public List callStackSymbols(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)raise;
	 */
	public void raise(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
