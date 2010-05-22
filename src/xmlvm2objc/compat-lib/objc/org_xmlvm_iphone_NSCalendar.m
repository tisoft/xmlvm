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

#import "org_xmlvm_iphone_NSCalendar.h"

/** @author teras */

@implementation NSCalendar (cat_org_xmlvm_iphone_NSCalendar)

+ (org_xmlvm_iphone_NSCalendar*) currentCalendar__
{
	return_XMLVM(currentCalendar)
}

- (org_xmlvm_iphone_NSDateComponents*) components___int_org_xmlvm_iphone_NSDate :(int)unitFlags :(org_xmlvm_iphone_NSDate*)date
{
	return_XMLVM(components:unitFlags fromDate:date)
}

- (org_xmlvm_iphone_NSDateComponents*) components___int_org_xmlvm_iphone_NSDate_org_xmlvm_iphone_NSData_int :(int)unitFlags :(org_xmlvm_iphone_NSDate*)startingDate :(org_xmlvm_iphone_NSDate*)resultDate :(int)opts
{
	return_XMLVM(components:unitFlags fromDate:startingDate toDate:resultDate options:opts)
}

- (org_xmlvm_iphone_NSDate*) dateByAddingComponents___org_xmlvm_iphone_NSDateComponents_org_xmlvm_iphone_NSDate_int :(org_xmlvm_iphone_NSDateComponents*)comps :(org_xmlvm_iphone_NSDate*)date :(int)opts
{
	return_XMLVM(dateByAddingComponents:comps toDate:date options:opts)
}

- (org_xmlvm_iphone_NSDate*) dateFromComponents___org_xmlvm_iphone_NSDateComponents :(org_xmlvm_iphone_NSDateComponents*)comps
{
	return_XMLVM(dateFromComponents:comps)
}

@end

