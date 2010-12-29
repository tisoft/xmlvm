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
