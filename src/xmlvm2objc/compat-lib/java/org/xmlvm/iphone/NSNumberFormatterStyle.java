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

import org.xmlvm.XMLVMSkeletonOnly;

/**
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public class NSNumberFormatterStyle {

    private static final int kCFNumberFormatterNoStyle         = 0;
    private static final int kCFNumberFormatterDecimalStyle    = 1;
    private static final int kCFNumberFormatterCurrencyStyle   = 2;
    private static final int kCFNumberFormatterPercentStyle    = 3;
    private static final int kCFNumberFormatterScientificStyle = 4;
    private static final int kCFNumberFormatterSpellOutStyle   = 5;
    public static final int  NoStyle                           = kCFNumberFormatterNoStyle;
    public static final int  DecimalStyle                      = kCFNumberFormatterDecimalStyle;
    public static final int  CurrencyStyle                     = kCFNumberFormatterCurrencyStyle;
    public static final int  PercentStyle                      = kCFNumberFormatterPercentStyle;
    public static final int  ScientificStyle                   = kCFNumberFormatterScientificStyle;
    public static final int  SpellOutStyle                     = kCFNumberFormatterSpellOutStyle;
}
