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

import java.util.List;

import org.xmlvm.XMLVMSkeletonOnly;

import Compatlib.System.Windows.Threading.DispatcherObject;

/**
 * @author Markus
 * 
 */
@XMLVMSkeletonOnly
public class Application extends DispatcherObject {

//    private SimpleSimulator   simulator;

    // Properties
    private UIElement         RootVisual;

    // Events
    public final StartUpEvent Startup = new StartUpEvent();


    public Application() {
//        simulator = new SimpleSimulator(this);
    }

    /**
     * @return the rootVisual
     */
    public UIElement getRootVisual() {
        return RootVisual;
    }

    /**
     * @param rootVisual
     *            the rootVisual to set
     */
    public void setRootVisual(UIElement rootVisual) {
//        RootVisual = rootVisual;
//        simulator.setRootRenderer(rootVisual.xmlvmGetRenderer());
//        simulator.repaint();
    }

    public static Application getCurrent() {
        return null;
    }

    /**
     * @param orientation
     */
    public void setOrientation(int orientation) {
        // TODO Auto-generated method stub
        
    }

    /**
     * @param b
     */
    public void setStatusBarHidden(boolean b) {
        // TODO Auto-generated method stub
        
    }

    /**
     * @return
     */
    public int getOrientation() {
        // TODO Auto-generated method stub
        return 0;
    }

    /**
     * @param path 
     * @return 
     * 
     */
    public static List<String> listFileSystem() {
        return null;
    }
}
