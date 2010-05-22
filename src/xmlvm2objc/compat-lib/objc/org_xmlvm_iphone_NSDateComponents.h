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

#import "xmlvm.h"
#import "java_lang_Object.h"


typedef NSDateComponents org_xmlvm_iphone_NSDateComponents;

@interface NSDateComponents (cat_org_xmlvm_iphone_NSDateComponents)
- (int) era__;
- (int) year__;
- (int) month__;
- (int) day__;
- (int) hour__;
- (int) minute__;
- (int) second__;
- (int) week__;
- (int) weekday__;
- (int) weekdayOrdinal__;
- (void) setEra___int :(int)value;
- (void) setYear___int :(int)value;
- (void) setMonth___int :(int)value;
- (void) setDay___int :(int)value;
- (void) setHour___int :(int)value;
- (void) setMinute___int :(int)value;
- (void) setSecond___int :(int)value;
- (void) setWeek___int :(int)value;
- (void) setWeekday___int :(int)value;
- (void) setWeekdayOrdinal___int :(int)value;

@end

