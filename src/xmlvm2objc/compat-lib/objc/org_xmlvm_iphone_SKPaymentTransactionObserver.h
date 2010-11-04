/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

#import <StoreKit/SKPaymentQueue.h> 
#import "xmlvm.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_SKPaymentQueue.h"
#import "java_util_ArrayList.h"

/** @author teras */
	
@interface org_xmlvm_iphone_SKPaymentTransactionObserver : java_lang_Object<SKPaymentTransactionObserver>

- (void) __init_org_xmlvm_iphone_SKPaymentTransactionObserver__;
- (void) updatedTransactions___org_xmlvm_iphone_SKPaymentQueue_java_util_ArrayList :(org_xmlvm_iphone_SKPaymentQueue*)queue :(java_util_ArrayList*)transactions;
- (void) removedTransactions___org_xmlvm_iphone_SKPaymentQueue_java_util_ArrayList :(org_xmlvm_iphone_SKPaymentQueue*)queue :(java_util_ArrayList*)transactions;
- (void) restoreCompletedTransactionsFailedWithError___org_xmlvm_iphone_SKPaymentQueue_org_xmlvm_iphone_NSError :(org_xmlvm_iphone_SKPaymentQueue*)queue :(org_xmlvm_iphone_NSError*)error;
- (void) paymentQueueRestoreCompletedTransactionsFinished___org_xmlvm_iphone_SKPaymentQueue :(org_xmlvm_iphone_SKPaymentQueue*)queue;

@end

