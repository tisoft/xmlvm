package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SKPaymentTransaction extends NSObject {

	/*
	 * Constructors
	 */

	/** Default constructor */
	SKPaymentTransaction() {}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSError *error ;
	 */
	public NSError getError(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) SKPaymentTransaction *originalTransaction ;
	 */
	public SKPaymentTransaction getOriginalTransaction(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) SKPayment *payment ;
	 */
	public SKPayment getPayment(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSDate *transactionDate ;
	 */
	public NSDate getTransactionDate(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSString *transactionIdentifier ;
	 */
	public String getTransactionIdentifier(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) NSData *transactionReceipt ;
	 */
	public NSData getTransactionReceipt(){
		throw new RuntimeException("Stub");
	}

	/**
	 * @property(nonatomic, readonly) SKPaymentTransactionState transactionState ;
	 */
	public int getTransactionState(){
		throw new RuntimeException("Stub");
	}
}
