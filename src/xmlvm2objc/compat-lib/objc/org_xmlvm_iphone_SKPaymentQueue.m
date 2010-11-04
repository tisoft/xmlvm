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

#import "org_xmlvm_iphone_SKPaymentQueue.h"
#import "org_xmlvm_iphone_NSObject.h"
#import "org_xmlvm_iphone_SKPaymentTransactionObserver.h"

/** @author teras */

@implementation SKPaymentQueue (cat_org_xmlvm_iphone_SKPaymentQueue)

+ (int) canMakePayments__
{
	return [SKPaymentQueue canMakePayments];
}

+ (org_xmlvm_iphone_SKPaymentQueue*) defaultQueue__
{
	return_XMLVM(defaultQueue)
}

- (void) addTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver :(org_xmlvm_iphone_SKPaymentTransactionObserver*)obs
{
	[self addTransactionObserver:obs];
}

- (void) removeTransactionObserver___org_xmlvm_iphone_SKPaymentTransactionObserver :(org_xmlvm_iphone_SKPaymentTransactionObserver*)obs
{
	[self removeTransactionObserver:obs];
}

- (java_util_ArrayList*) getTransactions__
{
	return_XMLVM(transactions)
}

- (void) addPayment___org_xmlvm_iphone_SKPayment :(org_xmlvm_iphone_SKPayment*)payment
{
	[self addPayment:payment];
}

- (void) finishTransaction___org_xmlvm_iphone_SKPaymentTransaction :(org_xmlvm_iphone_SKPaymentTransaction*)trans
{
	[self finishTransaction:trans];
}

- (void) restoreCompletedTransactions__
{
	[self restoreCompletedTransactions];
}


@end

