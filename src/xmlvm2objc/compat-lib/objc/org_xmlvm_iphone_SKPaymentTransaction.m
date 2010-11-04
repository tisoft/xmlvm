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

#import "org_xmlvm_iphone_SKPaymentTransaction.h"
#import "org_xmlvm_iphone_NSObject.h"

/** @author teras */

@implementation SKPaymentTransaction (cat_org_xmlvm_iphone_SKPaymentTransaction)

- (org_xmlvm_iphone_NSError*) getError__
{
	return_XMLVM(error)
}

- (org_xmlvm_iphone_SKPaymentTransaction*) getOriginalTransaction__
{
	return_XMLVM(originalTransaction)
}

- (org_xmlvm_iphone_SKPayment*) getPayment__
{
	return_XMLVM(payment)
}

- (org_xmlvm_iphone_NSDate*) getTransactionDate__
{
	return_XMLVM(transactionDate)
}

- (java_lang_String*) getTransactionIdentifier__
{
	return_XMLVM(transactionIdentifier)
}

- (org_xmlvm_iphone_NSData*) getTransactionReceipt__
{
	return_XMLVM(transactionReceipt)
}

- (int) getTransactionState__
{
	return [self transactionState];
}

@end

