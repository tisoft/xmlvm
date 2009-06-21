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

package org.xmlvm.proc.in;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcess;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.in.file.XFile;

public abstract class InputProcess<T extends XFile> extends XmlvmProcess<XmlvmProcess<?>> {
    protected T input;

    public InputProcess(Arguments arguments, T input) {
        super(arguments);
        this.input = input;
        Log.debug("Instantiated: " + this.getClass().getName() + " for \"" + input + "\"");
    }

    /**
     * Returns the generated XMLVM resource.
     */
    public abstract XmlvmResource getXmlvm();

    @Override
    public boolean isActive() {
        return true;
    }
}
