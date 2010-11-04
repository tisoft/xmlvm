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

#import <StoreKit/SKProduct.h> 
#import "xmlvm.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_NSLocale.h"

/** @author teras */

typedef SKProduct org_xmlvm_iphone_SKProduct;
@interface SKProduct (cat_org_xmlvm_iphone_SKProduct)

- (java_lang_String*) getLocalizedDescription__;
- (java_lang_String*) getLocalizedTitle__;
- (double) getPrice__;
- (org_xmlvm_iphone_NSLocale*) getPriceLocale__;
- (java_lang_String*) getProductIdentifier__;

@end

