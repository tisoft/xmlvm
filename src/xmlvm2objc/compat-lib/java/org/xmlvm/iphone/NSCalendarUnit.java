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
public class NSCalendarUnit {

    private static final int kCFCalendarUnitEra            = (1 << 1);
    private static final int kCFCalendarUnitYear           = (1 << 2);
    private static final int kCFCalendarUnitMonth          = (1 << 3);
    private static final int kCFCalendarUnitDay            = (1 << 4);
    private static final int kCFCalendarUnitHour           = (1 << 5);
    private static final int kCFCalendarUnitMinute         = (1 << 6);
    private static final int kCFCalendarUnitSecond         = (1 << 7);
    private static final int kCFCalendarUnitWeek           = (1 << 8);
    private static final int kCFCalendarUnitWeekday        = (1 << 9);
    private static final int kCFCalendarUnitWeekdayOrdinal = (1 << 10);
    public static final int  Era                           = kCFCalendarUnitEra;
    public static final int  Year                          = kCFCalendarUnitYear;
    public static final int  Month                         = kCFCalendarUnitMonth;
    public static final int  Day                           = kCFCalendarUnitDay;
    public static final int  Hour                          = kCFCalendarUnitHour;
    public static final int  Minute                        = kCFCalendarUnitMinute;
    public static final int  Second                        = kCFCalendarUnitSecond;
    public static final int  Week                          = kCFCalendarUnitWeek;
    public static final int  Weekday                       = kCFCalendarUnitWeekday;
    public static final int  WeekdayOrdinal                = kCFCalendarUnitWeekdayOrdinal;
    // public static final int Quarter= kCFCalendarUnitQuarter;
}
