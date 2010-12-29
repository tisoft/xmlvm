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

#import "org_xmlvm_iphone_NSObject.h"
#import "org_xmlvm_iphone_SKPayment.h"



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

