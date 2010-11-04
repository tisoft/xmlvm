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

package org.xmlvm.proc;

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.proc.XmlvmClass.XmlvmField;
import org.xmlvm.proc.XmlvmClass.XmlvmMethod;

/**
 * The abstract base class for all XMLVM entities
 * <p>
 * <b>Known subclasses:</b> {@link XmlvmClass}, {@link XmlvmField},
 * {@link XmlvmMethod}.
 * 
 */
public abstract class XmlvmEntity {
    protected String           name;
    protected List<AccessFlag> accessFlags = new ArrayList<AccessFlag>();


    /**
     * Get the name of this entity.
     */
    public String getName() {
        return name;
    }

    /**
     * Set the name of this entity.
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * Sets the flags for this entity.
     * 
     * @param modifiers
     *            An array containing the modifier names such as "public",
     *            "static" etc.
     */
    public void setFlags(String[] modifiers) {
        for (String modifier : modifiers) {
            accessFlags.add(AccessFlag.valueOf(modifier.toUpperCase()));
        }
    }

    /**
     * Returns the flags of this class.
     */
    public AccessFlag[] getFlags() {
        return accessFlags.toArray(new AccessFlag[0]);
    }

    /**
     * Returns {@code true}, if this entity has the given flag, {@code false}
     * otherwise.
     */
    public boolean hasFlag(AccessFlag flag) {
        return accessFlags.contains(flag);
    }


    /**
     * Defines access flags for {@link XmlvmEntity} instances.
     */
    public static enum AccessFlag {
        PUBLIC("isPublic"), PRIVATE("isPrivate"), PROTECTED("isProtected"), STATIC("isStatic"), FINAL(
                "isFinal"), SYNCHRONIZED("isSynchronized"), VOLATILE("isVolatile"), TRANSIENT(
                "isTransient"), NATIVE("isNative"), INTERFACE("isInterface"), ABSTRACT("isAbstract"), STRICTFP(
                "isStrictfp");

        private final String flagName;


        private AccessFlag(String flagName) {
            this.flagName = flagName;
        }

        public String flagName() {
            return flagName;
        }
    }
}
