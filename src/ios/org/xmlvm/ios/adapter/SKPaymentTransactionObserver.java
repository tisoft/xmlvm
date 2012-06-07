package org.xmlvm.ios.adapter;
import java.util.*;

import org.xmlvm.ios.*;

public class SKPaymentTransactionObserver implements org.xmlvm.ios.SKPaymentTransactionObserver {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transactions ;
	 */
	public void paymentQueueUpdatedTransactions(SKPaymentQueue queue, List transactions){};
	/**
	 * - (void)paymentQueue:(SKPaymentQueue *)queue removedTransactions:(NSArray *)transactions ;
	 */
	public void paymentQueueRemovedTransactions(SKPaymentQueue queue, List transactions){};
	/**
	 * - (void)paymentQueue:(SKPaymentQueue *)queue restoreCompletedTransactionsFailedWithError:(NSError *)error ;
	 */
	public void paymentQueue(SKPaymentQueue queue, NSError error){};
	/**
	 * - (void)paymentQueueRestoreCompletedTransactionsFinished:(SKPaymentQueue *)queue ;
	 */
	public void paymentQueueRestoreCompletedTransactionsFinished(SKPaymentQueue queue){};}
