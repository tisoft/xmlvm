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

#import "org_xmlvm_iphone_CLHeading.h"

@implementation CLHeading (cat_org_xmlvm_iphone_CLHeading)

- (double) getHeadingAccuracy__
{
	return [self headingAccuracy];
}

- (double) getMagneticHeading__
{
	return [self magneticHeading];
}

- (org_xmlvm_iphone_NSDate*) getTimestamp__
{
	return_XMLVM(timestamp);
}

- (double) getTrueHeading__
{
	return [self trueHeading];
}

- (double) getX__
{
	return [self x];
}

- (double) getY__
{
	return [self y];
}

- (double) getZ__
{
	return [self z];
}

- (java_lang_String*) description__
{
	return_XMLVM(description);
}

- (java_lang_String*) toString__
{
	return_XMLVM(description);
}



@end

