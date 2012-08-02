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

#import <StoreKit/SKPaymentQueue.h> 
#import "xmlvm.h"
#import "java_util_List.h"
#import "org_xmlvm_iphone_SKPaymentTransaction.h"
#import "org_xmlvm_iphone_SKPayment.h"

@class org_xmlvm_iphone_SKPaymentTransactionObserver;



typedef SKPaymentQueue org_xmlvm_iphone_SKPaymentQueue;
@interface SKPaymentQueue (cat_org_xmlvm_iphone_SKPaymentQueue)

+ (int) canMakePayments__;
+ (org_xmlvm_iphone_SKPaymentQueue*) defaultQueue__;
- (void) addTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver :(org_xmlvm_iphone_SKPaymentTransactionObserver*)obs;
- (void) removeTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver :(org_xmlvm_iphone_SKPaymentTransactionObserver*)obs;
- (java_util_List*) getTransactions__;
- (void) addPayment___org_xmlvm_iphone_SKPayment :(org_xmlvm_iphone_SKPayment*)payment;
- (void) finishTransaction___org_xmlvm_iphone_SKPaymentTransaction :(org_xmlvm_iphone_SKPaymentTransaction*)trans;
- (void) restoreCompletedTransactions__;

@end

