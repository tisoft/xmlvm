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

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.XMLVMSkeletonOnly;

import Compatlib.System.Event;
import Compatlib.System.Object;

/**
 * @author Markus
 * 
 */
@XMLVMSkeletonOnly
public class RoutedEvent extends Event {

    private final List<RoutedEventHandler> eventHandler = new ArrayList<RoutedEventHandler>();


    public RoutedEvent() {
    }

    public void __add(RoutedEventHandler handler) {
        eventHandler.add(handler);
    }

    public void __fire(Object sender, RoutedEventArgs args) {
        for (RoutedEventHandler each : eventHandler) {
            each.Invoke(sender, args);
        }
    }

}
