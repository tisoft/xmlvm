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

#import "org_xmlvm_iphone_UIDatePicker.h"

/** @author teras */

@implementation UIDatePicker (cat_org_xmlvm_iphone_UIDatePicker)

- (void) __init_org_xmlvm_iphone_UIDatePicker__
{
}

- (void) __init_org_xmlvm_iphone_UIDatePicker___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect
{
	[self setFrame:[rect getCGRect]];
}

- (org_xmlvm_iphone_NSCalendar*) getCalendar__
{
	return_XMLVM(calendar)
}

- (void) setCalendar___org_xmlvm_iphone_NSCalendar :(org_xmlvm_iphone_NSCalendar*)calendar
{
	[self setCalendar:calendar];
}

- (double) getCountDownDuration__
{
	return [self countDownDuration];
}

- (void) setCountDownDuration___double :(double)countDownDuration 
{
	[self setCountDownDuration:countDownDuration];
}

- (org_xmlvm_iphone_NSDate*) getDate__
{
	return_XMLVM(date)
}

- (void) setDate___org_xmlvm_iphone_NSDate :(org_xmlvm_iphone_NSDate*)date
{
	[self setDate:date];
}

- (int) getDatePickerMode__
{
	return [self datePickerMode];
}

- (void) setDatePickerMode___int :(int)pickermode
{
	[self setDatePickerMode:pickermode];
}

- (org_xmlvm_iphone_NSLocale*) getLocale__
{
	return_XMLVM(locale)
}

- (void) setLocale___org_xmlvm_iphone_NSLocale :(org_xmlvm_iphone_NSLocale*)locale
{
	[self setLocale:locale];
}

- (org_xmlvm_iphone_NSDate*) getMaximumDate__
{
	return_XMLVM(maximumDate)
}

- (void) setMaximumDate___org_xmlvm_iphone_NSDate :(org_xmlvm_iphone_NSDate*)maxdate
{
	[self setMaximumDate:maxdate];
}

- (org_xmlvm_iphone_NSDate*) getMinimumDate__
{
	return_XMLVM(minimumDate)
}

- (void) setMinimumDate___org_xmlvm_iphone_NSDate :(org_xmlvm_iphone_NSDate*)mindate
{
	[self setMinimumDate:mindate];
}

- (int) getMinuteInterval__
{
	return [self minuteInterval];
}

- (void) setMinuteInterval___int :(int)interval
{
	[self setMinuteInterval:interval];
}

- (org_xmlvm_iphone_NSTimeZone*) getTimeZone__
{
	return_XMLVM(timeZone)
}

- (void) setTimeZone___org_xmlvm_iphone_NSTimeZone :(org_xmlvm_iphone_NSTimeZone*)timezone
{
	[self setTimeZone:timezone];
}

- (void) setDate___org_xmlvm_iphone_NSDate_boolean :(org_xmlvm_iphone_NSDate*)date :(int)animated
{
	[self setDate:date animated:animated];
}


@end

