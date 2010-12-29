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
package org.xmlvm.iphone;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class UIDatePicker extends UIControl {

    private NSCalendar calendar;
    private NSDate     date;
    private NSLocale   locale;
    private NSTimeZone timeZone;
    private int        datePickerMode;
    private NSDate     maximumDate;
    private NSDate     minimumDate;
    private int        minuteInterval;
    private double     countDownDuration;


    public UIDatePicker() {
        this(CGRect.Zero());
    }

    public UIDatePicker(CGRect rect) {
        super(rect);
    }

    public NSCalendar getCalendar() {
        return calendar;
    }

    public void setCalendar(NSCalendar calendar) {
        this.calendar = calendar;
    }

    public double getCountDownDuration() {
        return countDownDuration;
    }

    public void setCountDownDuration(double countDownDuration) {
        this.countDownDuration = countDownDuration;
    }

    public NSDate getDate() {
        return date;
    }

    public void setDate(NSDate date) {
        this.date = date;
    }

    public int getDatePickerMode() {
        return datePickerMode;
    }

    public void setDatePickerMode(int uiDatePickerMode) {
        this.datePickerMode = uiDatePickerMode;
    }

    public NSLocale getLocale() {
        return locale;
    }

    public void setLocale(NSLocale locale) {
        this.locale = locale;
    }

    public NSDate getMaximumDate() {
        return maximumDate;
    }

    public void setMaximumDate(NSDate maximumDate) {
        this.maximumDate = maximumDate;
    }

    public NSDate getMinimumDate() {
        return minimumDate;
    }

    public void setMinimumDate(NSDate minimumDate) {
        this.minimumDate = minimumDate;
    }

    public int getMinuteInterval() {
        return minuteInterval;
    }

    public void setMinuteInterval(int minuteInterval) {
        this.minuteInterval = minuteInterval;
    }

    public NSTimeZone getTimeZone() {
        return timeZone;
    }

    public void setTimeZone(NSTimeZone timeZone) {
        this.timeZone = timeZone;
    }

    public void setDate(NSDate date, boolean animated) {
    }
}
