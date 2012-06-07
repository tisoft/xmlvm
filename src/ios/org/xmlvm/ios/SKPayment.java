package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SKPayment extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (id)paymentWithProduct:(SKProduct *)product ;
	 */
	public static SKPayment paymentWithProduct(SKProduct product){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (id)paymentWithProductIdentifier:(NSString *)identifier ;
	 */
	public static SKPayment paymentWithProductIdentifier(String identifier){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public SKPayment() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, copy, readonly) NSString *productIdentifier ;
	 */
	public String getProductIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, copy, readonly) NSData *requestData ;
	 */
	public NSData getRequestData(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSInteger quantity ;
	 */
	public int getQuantity(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Interface Properties
	 */
}
