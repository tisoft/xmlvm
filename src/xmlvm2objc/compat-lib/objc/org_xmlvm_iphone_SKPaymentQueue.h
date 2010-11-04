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
#import "java_util_ArrayList.h"
#import "org_xmlvm_iphone_SKPaymentTransaction.h"
#import "org_xmlvm_iphone_SKPayment.h"

@class org_xmlvm_iphone_SKPaymentTransactionObserver;

/** @author teras */

typedef SKPaymentQueue org_xmlvm_iphone_SKPaymentQueue;
@interface SKPaymentQueue (cat_org_xmlvm_iphone_SKPaymentQueue)

+ (int) canMakePayments__;
+ (org_xmlvm_iphone_SKPaymentQueue*) defaultQueue__;
- (void) addTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver :(org_xmlvm_iphone_SKPaymentTransactionObserver*)obs;
- (void) removeTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver :(org_xmlvm_iphone_SKPaymentTransactionObserver*)obs;
- (java_util_ArrayList*) getTransactions__;
- (void) addPayment___org_xmlvm_iphone_SKPayment :(org_xmlvm_iphone_SKPayment*)payment;
- (void) finishTransaction___org_xmlvm_iphone_SKPaymentTransaction :(org_xmlvm_iphone_SKPaymentTransaction*)trans;
- (void) restoreCompletedTransactions__;

@end

