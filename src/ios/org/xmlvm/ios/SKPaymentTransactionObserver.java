package org.xmlvm.ios;
import java.util.*;

import org.xmlvm.XMLVMSkeletonOnly;
@XMLVMSkeletonOnly
@org.xmlvm.XMLVMDelegate(protocolType = "SKPaymentTransactionObserver")
public interface SKPaymentTransactionObserver {

	/*
	 * Instance methods
	 */

	/**
	 * - (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transactions ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "paymentQueue", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "SKPaymentQueue"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "updatedTransactions")
	})
	public abstract void paymentQueueUpdatedTransactions(SKPaymentQueue queue, List transactions);

	/**
	 * - (void)paymentQueue:(SKPaymentQueue *)queue removedTransactions:(NSArray *)transactions ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "paymentQueue", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "SKPaymentQueue"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSArray", convert = true, name = "removedTransactions")
	})
	public abstract void paymentQueueRemovedTransactions(SKPaymentQueue queue, List transactions);

	/**
	 * - (void)paymentQueue:(SKPaymentQueue *)queue restoreCompletedTransactionsFailedWithError:(NSError *)error ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "paymentQueue", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "SKPaymentQueue"),
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "NSError", name = "restoreCompletedTransactionsFailedWithError")
	})
	public abstract void paymentQueue(SKPaymentQueue queue, NSError error);

	/**
	 * - (void)paymentQueueRestoreCompletedTransactionsFinished:(SKPaymentQueue *)queue ;
	 */
	@org.xmlvm.XMLVMDelegateMethod(selector = "paymentQueueRestoreCompletedTransactionsFinished", params = {
		@org.xmlvm.XMLVMDelegateMethod.Param(type = "SKPaymentQueue")
	})
	public abstract void paymentQueueRestoreCompletedTransactionsFinished(SKPaymentQueue queue);
}
