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

/** @author teras */

#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_NSCalendar.h"
#import "org_xmlvm_iphone_NSDate.h"
#import "org_xmlvm_iphone_NSLocale.h"
#import "org_xmlvm_iphone_NSTimeZone.h"

typedef UIDatePicker org_xmlvm_iphone_UIDatePicker;

@interface UIDatePicker (cat_org_xmlvm_iphone_UIDatePicker)
- (void) __init_org_xmlvm_iphone_UIDatePicker__;
- (void) __init_org_xmlvm_iphone_UIDatePicker___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect;
- (org_xmlvm_iphone_NSCalendar*) getCalendar__;
- (void) setCalendar___org_xmlvm_iphone_NSCalendar :(org_xmlvm_iphone_NSCalendar*)calendar;
- (double) getCountDownDuration__;
- (void) setCountDownDuration___double :(double)countDownDuration ;
- (org_xmlvm_iphone_NSDate*) getDate__;
- (void) setDate___org_xmlvm_iphone_NSDate :(org_xmlvm_iphone_NSDate*)date;
- (int) getDatePickerMode__;
- (void) setDatePickerMode___int :(int)pickermode;
- (org_xmlvm_iphone_NSLocale*) getLocale__;
- (void) setLocale___org_xmlvm_iphone_NSLocale :(org_xmlvm_iphone_NSLocale*)locale;
- (org_xmlvm_iphone_NSDate*) getMaximumDate__;
- (void) setMaximumDate___org_xmlvm_iphone_NSDate :(org_xmlvm_iphone_NSDate*)maxdate;
- (org_xmlvm_iphone_NSDate*) getMinimumDate__;
- (void) setMinimumDate___org_xmlvm_iphone_NSDate :(org_xmlvm_iphone_NSDate*)mindate;
- (int) getMinuteInterval__;
- (void) setMinuteInterval___int :(int)interval;
- (org_xmlvm_iphone_NSTimeZone*) getTimeZone__;
- (void) setTimeZone___org_xmlvm_iphone_NSTimeZone :(org_xmlvm_iphone_NSTimeZone*)timezone;
- (void) setDate___org_xmlvm_iphone_NSDate_boolean :(org_xmlvm_iphone_NSDate*)date :(int)animated;

@end

