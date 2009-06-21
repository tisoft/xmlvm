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

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.in.file.ExeFile;

import edu.arizona.cs.mbel.mbel.ClassParser;
import edu.arizona.cs.mbel.mbel.Module;
import edu.arizona.cs.mbel.parse.MSILParseException;

public class ExeInputProcess extends InputProcess<ExeFile> {
    private Module cilClass;
    private String className;

    public ExeInputProcess(Arguments arguments, ExeFile input) {
        super(arguments, input);
    }

    @Override
    public boolean process() {
        Log.debug("ExeInputProcess.process()");
        init();
        return false;
    }

    private boolean init() {
        try {
            FileInputStream fin;
            fin = new FileInputStream(input.getFile());
            ClassParser parser = new ClassParser(fin);
            cilClass = parser.parseModule();
            className = input.getFile().getName().substring(0,
                    input.getFile().getName().length() - 4);
            return true;
        } catch (FileNotFoundException e) {
            Log.error("File not found: " + input);
        } catch (IOException e) {
            Log.error("Could not read: " + input);
        } catch (MSILParseException e) {
            Log.error("Not valid IL format: " + input);
        }
        return false;
    }

    @Override
    public XmlvmResource getXmlvm() {
        // TODO Auto-generated method stub
        return null;
    }
}
