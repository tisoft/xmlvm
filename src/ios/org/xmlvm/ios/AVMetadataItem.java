package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class AVMetadataItem extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (NSArray *)metadataItemsFromArray:(NSArray *)array withLocale:(NSLocale *)locale;
	 */
	public static List metadataItemsFromArray(List array, NSLocale locale){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (NSArray *)metadataItemsFromArray:(NSArray *)array withKey:(id)key keySpace:(NSString *)keySpace;
	 */
	public static List metadataItemsFromArray(List array, Object key, String keySpace){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public AVMetadataItem() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(readonly, copy) id<NSObject, NSCopying> key;
	 */
	public NSObject getKey(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, copy) NSString *commonKey;
	 */
	public String getCommonKey(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, copy) NSString *keySpace;
	 */
	public String getKeySpace(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, copy) NSLocale *locale;
	 */
	public NSLocale getLocale(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) CMTime time;
	 */
	public CMTime getTime(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) CMTime duration ;
	 */
	public CMTime getDuration(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, copy) id<NSObject, NSCopying> value;
	 */
	public NSObject getValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly, copy) NSDictionary *extraAttributes;
	 */
	public Map getExtraAttributes(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSString *stringValue;
	 */
	public String getStringValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSNumber *numberValue;
	 */
	public NSNumber getNumberValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSDate *dateValue;
	 */
	public NSDate getDateValue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(readonly) NSData *dataValue;
	 */
	public NSData getDataValue(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (AVKeyValueStatus)statusOfValueForKey:(NSString *)key error:(NSError **)outError ;
	 */
	public int statusOfValueForKey(String key, Reference<NSError> outError){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)loadValuesAsynchronouslyForKeys:(NSArray *)keys completionHandler:(void (^)(void))handler ;
	 */
	public void loadValuesAsynchronouslyForKeys(List keys, Object handler){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
