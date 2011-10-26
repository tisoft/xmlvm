package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
public interface SKPaymentTransactionObserver {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transactions ;
	 */
	public abstract void paymentQueueUpdatedTransactions(SKPaymentQueue queue, List transactions);

	/**
	 * - (void)paymentQueue:(SKPaymentQueue *)queue removedTransactions:(NSArray *)transactions ;
	 */
	public abstract void paymentQueueRemovedTransactions(SKPaymentQueue queue, List transactions);

	/**
	 * - (void)paymentQueue:(SKPaymentQueue *)queue restoreCompletedTransactionsFailedWithError:(NSError *)error ;
	 */
	public abstract void paymentQueue(SKPaymentQueue queue, NSError error);

	/**
	 * - (void)paymentQueueRestoreCompletedTransactionsFinished:(SKPaymentQueue *)queue ;
	 */
	public abstract void paymentQueueRestoreCompletedTransactionsFinished(SKPaymentQueue queue);
}
