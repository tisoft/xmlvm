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

package org.xmlvm.demo.afireworks;

import org.xmlvm.demo.afireworks.AndroidFireworks.Environment;

import android.view.ViewGroup;

/**
 * A bomb is a logical group of sparks. A bomb defines where a group of stars
 * start to animate upon an "explosion".
 */
public class Bomb {
    private Spark sparks[];

    public Bomb(ViewGroup viewGroup, Environment environment) {
        sparks = new Spark[Const.SPARKS_PER_BOMB];
        for (int i = 0; i < Const.SPARKS_PER_BOMB; i++)
            sparks[i] = new Spark(viewGroup, environment);
    }

    /**
     * Returns the requested Spark.
     */
    public Spark getSpark(int n) {
        return sparks[n];
    }

    /**
     * Resets all client {@link Spark}s contained in this Bomb to the given
     * location.
     */
    public void reset(int x, int y) {
        int i;
        for (i = 0; i < Const.SPARKS_PER_BOMB; ++i) {
            sparks[i].reset(x, y);
        }
    }

    /**
     * Returns whether all sparks are out of sight.
     */
    public boolean allOutOfSight() {
        int i, count = 0;
        for (i = 0; i < Const.SPARKS_PER_BOMB; ++i) {
            if (sparks[i].isOutOfSight()) {
                count++;
            }
        }
        return count == Const.SPARKS_PER_BOMB;
    }
}
