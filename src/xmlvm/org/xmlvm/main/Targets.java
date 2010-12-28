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

package org.xmlvm.main;

import static org.xmlvm.main.Targets.Affinity.SKELETON;
import static org.xmlvm.main.Targets.Affinity.TARGET;

import org.xmlvm.Log;

/**
 * All possible targets for the cross-compilation.
 */
public enum Targets {

    NONE, XMLVM, DEXMLVM, JVM, CLR, DFA, CLASS, EXE, DEX, JS, JAVA, JSANDROID, C, GENCWRAPPERS, PYTHON,
    OBJC, QOOXDOO, IPHONE, IPHONEC, IPHONEANDROID, VTABLE, WEBOS, IPHONETEMPLATE(SKELETON),
    ANDROIDTEMPLATE(SKELETON), ANDROIDMIGRATETEMPLATE(SKELETON), IPHONEUPDATETEMPLATE(SKELETON),
    ANDROIDUPDATETEMPLATE(SKELETON);

    /**
     * Returns a target with the given name.
     * 
     * @param target
     *            the name of the target
     * @return The target or <code>null</code>, if a target by that name cannot
     *         be found.
     */
    public static Targets getTarget(String target) {
        try {
            return Targets.valueOf(target.toUpperCase().replace("_", "").replace("-", "")
                    .replace(":", ""));
        } catch (IllegalArgumentException ex) {
            Log.error(Targets.class.getSimpleName(), "Could not find target by name: " + target);
        }
        return null;
    }


    /** The affinity of the target. */
    public final Affinity affinity;


    /**
     * Creates a new target with the default affinity TARGET.
     */
    private Targets() {
        affinity = TARGET;
    }

    /**
     * Creates a new target with the given affinity.
     */
    private Targets(Affinity af) {
        affinity = af;
    }


    /**
     * Note if a target has to do with an actual output target or is a skeleton
     */
    public enum Affinity {

        TARGET, SKELETON;
    }
}
