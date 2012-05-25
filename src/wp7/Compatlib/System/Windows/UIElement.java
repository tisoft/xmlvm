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

package Compatlib.System.Windows;

import org.xmlvm.XMLVMSkeletonOnly;

import Compatlib.System.Windows.Media.Visual;

/**
 * @author Markus
 * 
 */
@XMLVMSkeletonOnly
public class UIElement extends Visual {

    public RoutedEvent ManipulationStarted;
    public RoutedEvent ManipulationDelta;
    public RoutedEvent ManipulationCompleted;
    
    /**
     * @param rect
     */
    public void Arrange(Rect rect) {
        // TODO Auto-generated method stub

    }

    /**
	 * 
	 */
    public void InvalidateArrange() {
        // TODO Auto-generated method stub

    }
    
    public void InvalidateMeasure() {
        // TODO Auto-generated method stub

    }

    /**
     * @param size
     */
    public void Measure(Size size) {
        // TODO Auto-generated method stub

    }

    /**
     * @return
     */
    public Size getDesiredSize() {
        // TODO Auto-generated method stub
        return null;
    }

    /**
     * @param top
     * @param left
     */
    public void xmlvmSetXY(int top, int left) {
        // TODO Auto-generated method stub
        
    }

}