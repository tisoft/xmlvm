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

package Compatlib.System.Windows.Controls;

import org.xmlvm.XMLVMSkeletonOnly;

import Compatlib.System.String;
import Compatlib.System.Windows.FrameworkElement;
import Compatlib.System.Windows.Media.Brush;
import Compatlib.System.Windows.Media.FontFamily;

/**
 * @author Markus
 * 
 */
@XMLVMSkeletonOnly
public class TextBlock extends FrameworkElement {

    private Brush      Foreground;
    private String     Text       = new String("");
    private FontFamily FontFamily = new FontFamily();
    private double     FontSize   = 11d;


    /**
     * @return the foreground
     */
    public Brush getForeground() {
        return Foreground;
    }

    /**
     * @param foreground
     *            the foreground to set
     */
    public void setForeground(Brush foreground) {
        Foreground = foreground;
    }

    /**
     * @return the text
     */
    public String getText() {
        return Text;
    }

    /**
     * @param text
     *            the text to set
     */
    public void setText(String text) {
        Text = text;
        xmlvmGetRenderer().repaint();
    }

    /**
     * @return the fontFamily
     */
    public FontFamily getFontFamily() {
        return FontFamily;
    }

    /**
     * @param fontFamily
     *            the fontFamily to set
     */
    public void setFontFamily(FontFamily fontFamily) {
        FontFamily = fontFamily;
        xmlvmGetRenderer().repaint();
    }

    /**
     * @return the fontSize
     */
    public double getFontSize() {
        return FontSize;
    }

    /**
     * @param fontSize
     *            the fontSize to set
     */
    public void setFontSize(double fontSize) {
        FontSize = fontSize;
        xmlvmGetRenderer().repaint();
    }

    public TextBlock() {
//        xmlvmSetRenderer(new TextBlockRenderer(this));
    }

}
