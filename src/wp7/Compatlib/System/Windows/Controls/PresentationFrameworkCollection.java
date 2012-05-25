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

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;

import Compatlib.System.Collections.Generics.IEnumerator;
import Compatlib.System.Windows.DependencyObject;

/**
 * @author Markus
 * 
 */
@XMLVMSkeletonOnly
public class PresentationFrameworkCollection<T> extends DependencyObject {

    private List<T> elements = new ArrayList<T>();


    public void Add(T t) {
        elements.add(t);
    }

    public IEnumerator<T> GetEnumerator() {
        return new PresentationFrameworkCollectionEnumerator(elements);
    }


    private class PresentationFrameworkCollectionEnumerator implements IEnumerator<T> {

        private int     index;
        private List<T> elements;


        /**
         * 
         */
        @XMLVMIgnore
        public PresentationFrameworkCollectionEnumerator(List<T> elements) {
            this.elements = elements;
        }

        @Override
        public T getCurrent() {
            return this.elements.get(index);
        }

        @Override
        public boolean MoveNext() {
            index++;
            return index < this.elements.size();
        }
    };


    public void Clear() {

    }

    public void Insert(int index, T t) {

    }

    /**
     * @return
     */
    public int getCount() {
        // TODO Auto-generated method stub
        return 0;
    }

    public T __access(int i) {
        return null;
    }

    public void Remove(T t) {
    }
}