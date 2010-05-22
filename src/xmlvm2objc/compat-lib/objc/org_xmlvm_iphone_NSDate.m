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

#import "org_xmlvm_iphone_NSDate.h"

/** @author teras */

@implementation NSDate (cat_org_xmlvm_iphone_NSDate)

+ (org_xmlvm_iphone_NSDate*) date__
{
    return_XMLVM(date)
}


+ (org_xmlvm_iphone_NSDate*) dateWithTimeIntervalSince1970___double :(double)secs
{
	return_XMLVM(dateWithTimeIntervalSince1970:secs)
}

+ (NSDate*) dateWithTimeIntervalSinceReferenceDate___double:(double)secs
{
	return_XMLVM(dateWithTimeIntervalSinceReferenceDate:secs)
}

- (NSTimeInterval) timeIntervalSinceReferenceDate__
{
	return [self timeIntervalSinceReferenceDate];
}

@end

