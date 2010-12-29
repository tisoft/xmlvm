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

