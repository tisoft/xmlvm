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

#import "xmlvm.h"
#import "java_lang_Object.h"


#define org_xmlvm_iphone_NSDateComponents NSDateComponents

@interface NSDateComponents (cat_org_xmlvm_iphone_NSDateComponents)
- (void) __init_org_xmlvm_iphone_NSDateComponents__;
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

