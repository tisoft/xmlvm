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

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;

import Compatlib.System.Windows.UIElement;
import Compatlib.System.Windows.Media.Visual;

/**
 * @author Markus
 * 
 */
@XMLVMSkeletonOnly
public class UIElementCollection extends PresentationFrameworkCollection<UIElement> {

    private Visual vis;


    /**
     * @param vis
     */
    public UIElementCollection() {
        super();
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * System.Windows.Controls.PresentationFrameworkCollection#Add(java.lang
     * .Object)
     */
    @Override
    public void Add(UIElement t) {
        super.Add(t);
        this.vis.xmlvmGetRenderer().add(t.xmlvmGetRenderer());
    }

    @XMLVMIgnore
    public void setVis(Visual vis) {
        this.vis = vis;
    }

    public void Clear() {

    }

    public void Insert(int index, UIElement t) {

    }

    /**
     * @return
     */
    public int getCount() {
        // TODO Auto-generated method stub
        return 0;
    }

    public UIElement __access(int i) {
        return null;
    }

    public void Remove(UIElement t) {
    }

}
