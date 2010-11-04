/*
 * Copyright (c) 2004-2010 XMLVM --- An XML-based Programming Language
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

package org.xmlvm.proc.out.build;

import java.util.List;

import org.xmlvm.main.Arguments;
import org.xmlvm.proc.out.OutputFile;

/**
 * @author teras
 */

public class MakeFile extends BuildFile {

    private static final String TEMPL_PROJNAME                 = "__PROJNAME__";
    private static final String IPHONE_MAKFILE_IN_JAR_RESOURCE = "/iphone/Makefile";
    private static final String IPHONE_MAKEFILE_PATH           = "var/iphone/Makefile";


    @Override
    public String composeBuildFiles(List<OutputFile> result, Arguments arguments) {
        String makefile_data = readData(IPHONE_MAKFILE_IN_JAR_RESOURCE, IPHONE_MAKEFILE_PATH);
        if (makefile_data == null)
            return "Could not initialize Makefile";
        makefile_data = makefile_data.replace(TEMPL_PROJNAME, arguments.option_app_name());
        OutputFile makefile = new OutputFile(makefile_data);
        makefile.setFileName("Makefile");
        makefile.setLocation(arguments.option_out() + BUILDFILE_LOCATION );
        result.add(makefile);
        return null;
    }
}
