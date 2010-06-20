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
package org.xmlvm.iphone;

/**
 * 
 * @author teras
 */
public class NSDateComponents extends NSObject {

    private final static int kCFCalendarComponentsWrap = (1 << 0);
    public final static int  Wrap                      = kCFCalendarComponentsWrap;

    private int              era;
    private int              year;
    private int              month;
    private int              day;
    private int              hour;
    private int              minute;
    private int              second;
    private int              week;
    private int              weekday;
    private int              weekdayOrdinal;

    private NSDateComponents() {
    }

    public int era() {
        return era;
    }

    public int year() {
        return year;
    }

    public int month() {
        return month;
    }

    public int day() {
        return day;
    }

    public int hour() {
        return hour;
    }

    public int minute() {
        return minute;
    }

    public int second() {
        return second;
    }

    public int week() {
        return week;
    }

    public int weekday() {
        return weekday;
    }

    public int weekdayOrdinal() {
        return weekdayOrdinal;
    }

    public void setEra(int value) {
        this.era = value;
    }

    public void setYear(int value) {
        this.year = value;
    }

    public void setMonth(int value) {
        this.month = value;
    }

    public void setDay(int value) {
        this.day = value;
    }

    public void setHour(int value) {
        this.hour = value;
    }

    public void setMinute(int value) {
        this.minute = value;
    }

    public void setSecond(int value) {
        this.second = value;
    }

    public void setWeek(int value) {
        this.week = value;
    }

    public void setWeekday(int value) {
        this.weekday = value;
    }

    public void setWeekdayOrdinal(int value) {
        this.weekdayOrdinal = value;
    }
}
