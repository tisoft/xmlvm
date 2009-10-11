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

package org.xmlvm.proc.out;

import java.util.List;

import org.xmlvm.main.Arguments;

/**
 * Takes the output of a {@link QooxdooOutputProcess} and makes sure an app
 * developed on the Android can be run on a Palm Pre.
 * <p>
 * IN DEVELOPMENT: PARDON THE DUST :)
 */
public class Android2PalmPreOutputProcess extends OutputProcess<QooxdooOutputProcess> {

    public Android2PalmPreOutputProcess(Arguments arguments) {
        super(arguments);
        // We only support QooxdooOutputProcesses as input.
        addSupportedInput(QooxdooOutputProcess.class);
    }

    @Override
    public List getOutputFiles() {
        return null;
    }

    @Override
    public boolean process() {
        return false;
    }
}
