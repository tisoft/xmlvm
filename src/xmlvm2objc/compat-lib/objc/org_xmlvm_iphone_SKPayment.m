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

#import "org_xmlvm_iphone_NSObject.h"
#import "org_xmlvm_iphone_SKPayment.h"

/** @author teras */

@implementation SKPayment (cat_org_xmlvm_iphone_SKPayment)


+ (org_xmlvm_iphone_SKPayment*) paymentWithProduct___org_xmlvm_iphone_SKProduct :(org_xmlvm_iphone_SKProduct*)prod
{
	return_XMLVM(paymentWithProduct:prod)
}

+ (org_xmlvm_iphone_SKPayment*) paymentWithProductIdentifier___java_lang_String :(java_lang_String*)ident
{
	return_XMLVM(paymentWithProductIdentifier:ident)
}

- (java_lang_String*) getProductIdentifier__
{
	return_XMLVM(productIdentifier)
}

- (int) getQuantity__
{
	return [self quantity];
}

- (org_xmlvm_iphone_NSData*) getRequestData__
{
	return_XMLVM(requestData)
}

@end

