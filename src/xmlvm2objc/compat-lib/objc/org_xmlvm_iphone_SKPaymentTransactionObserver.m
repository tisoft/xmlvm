/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

#import "org_xmlvm_iphone_SKPaymentTransactionObserver.h"
#import "org_xmlvm_iphone_NSObject.h"



@implementation org_xmlvm_iphone_SKPaymentTransactionObserver

// Default protocol implementation
- (void)paymentQueue:(SKPaymentQueue *)queue removedTransactions:(NSArray *)transactions
{
	[self removedTransactions___org_xmlvm_iphone_SKPaymentQueue_java_util_ArrayList:queue :transactions];
}

- (void)paymentQueue:(SKPaymentQueue *)queue restoreCompletedTransactionsFailedWithError:(NSError *)error
{
	[self restoreCompletedTransactionsFailedWithError___org_xmlvm_iphone_SKPaymentQueue_org_xmlvm_iphone_NSError:queue :error];
}

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transactions
{
	[self updatedTransactions___org_xmlvm_iphone_SKPaymentQueue_java_util_ArrayList:queue :transactions];
}

- (void)paymentQueueRestoreCompletedTransactionsFinished:(SKPaymentQueue *)queue
{
	[self paymentQueueRestoreCompletedTransactionsFinished___org_xmlvm_iphone_SKPaymentQueue:queue];
}


// Object initialization
- (void) __init_org_xmlvm_iphone_SKPaymentTransactionObserver__
{
}

// Java implementation
- (void) updatedTransactions___org_xmlvm_iphone_SKPaymentQueue_java_util_ArrayList :(org_xmlvm_iphone_SKPaymentQueue*)queue :(java_util_ArrayList*)transactions
{
}

- (void) removedTransactions___org_xmlvm_iphone_SKPaymentQueue_java_util_ArrayList :(org_xmlvm_iphone_SKPaymentQueue*)queue :(java_util_ArrayList*)transactions
{
}

- (void) restoreCompletedTransactionsFailedWithError___org_xmlvm_iphone_SKPaymentQueue_org_xmlvm_iphone_NSError :(org_xmlvm_iphone_SKPaymentQueue*)queue :(org_xmlvm_iphone_NSError*)error
{
}

- (void) paymentQueueRestoreCompletedTransactionsFinished___org_xmlvm_iphone_SKPaymentQueue :(org_xmlvm_iphone_SKPaymentQueue*)queue
{
}

@end
