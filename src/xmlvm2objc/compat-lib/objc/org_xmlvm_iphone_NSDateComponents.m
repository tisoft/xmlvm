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

#import "org_xmlvm_iphone_NSDateComponents.h"

@implementation NSDateComponents (cat_org_xmlvm_iphone_NSDateComponents)

- (int) era__
{
	return [self era];
}


- (int) year__
{
	return [self year];
}


- (int) month__
{
	return [self month];
}


- (int) day__
{
	return [self day];
}


- (int) hour__
{
	return [self hour];
}


- (int) minute__
{
	return [self minute];
}


- (int) second__
{
	return [self second];
}


- (int) week__
{
	return [self week];
}


- (int) weekday__
{
	return [self weekday];
}


- (int) weekdayOrdinal__
{
	return [self weekdayOrdinal];
}


- (void) setEra___int :(int)value
{
	[self setEra:value];
}

- (void) setYear___int :(int)value
{
	[self setYear:value];
}

- (void) setMonth___int :(int)value
{
	[self setMonth:value];
}

- (void) setDay___int :(int)value
{
	[self setDay:value];
}

- (void) setHour___int :(int)value
{
	[self setHour:value];
}

- (void) setMinute___int :(int)value
{
	[self setMinute:value];
}

- (void) setSecond___int :(int)value
{
	[self setSecond:value];
}

- (void) setWeek___int :(int)value
{
	[self setWeek:value];
}

- (void) setWeekday___int :(int)value
{
	[self setWeekday:value];
}

- (void) setWeekdayOrdinal___int :(int)value
{
	[self setWeekdayOrdinal:value];
}


@end

