package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public class SKPaymentQueue extends NSObject {

	/*
	 * Static methods
	 */

	/**
	 * + (SKPaymentQueue *)defaultQueue ;
	 */
	public static SKPaymentQueue defaultQueue(){
		throw new RuntimeException("Stub");
	}

	/**
	 * + (BOOL)canMakePayments ;
	 */
	public static boolean canMakePayments(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Constructors
	 */

	/** Default constructor */
	public SKPaymentQueue() {
		super();
	}

	/*
	 * Properties
	 */

	/**
	 * @property(nonatomic, readonly) NSArray *transactions ;
	 */
	public List getTransactions(){
		throw new RuntimeException("Stub");
	}

	/*
	 * Instance methods
	 */

	/**
	 * - (void)addPayment:(SKPayment *)payment ;
	 */
	public void addPayment(SKPayment payment){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)restoreCompletedTransactions ;
	 */
	public void restoreCompletedTransactions(){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)finishTransaction:(SKPaymentTransaction *)transaction ;
	 */
	public void finishTransaction(SKPaymentTransaction transaction){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)addTransactionObserver:(id <SKPaymentTransactionObserver>)observer ;
	 */
	public void addTransactionObserver(org.xmlvm.ios.SKPaymentTransactionObserver observer){
		throw new RuntimeException("Stub");
	}

	/**
	 * - (void)removeTransactionObserver:(id <SKPaymentTransactionObserver>)observer ;
	 */
	public void removeTransactionObserver(org.xmlvm.ios.SKPaymentTransactionObserver observer){
		throw new RuntimeException("Stub");
	}
}
