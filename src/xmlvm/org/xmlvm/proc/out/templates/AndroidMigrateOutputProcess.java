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

package org.xmlvm.proc.out.templates;

import java.util.ArrayList;
import org.xmlvm.main.Arguments;

import static org.xmlvm.proc.out.templates.TemplateFile.Mode.BACKUP;
import static org.xmlvm.proc.out.templates.TemplateFile.Mode.KEEP;
import static org.xmlvm.proc.out.templates.TemplateFile.Mode.OVERWRITE;

/**
 * Template to migrate Android projects
 * 
 * @author teras
 */
public class AndroidMigrateOutputProcess extends TemplateOutputProcess {

    public AndroidMigrateOutputProcess(Arguments arguments) {
        super(arguments);
    }

    @Override
    ArrayList<TemplateFile> getTemplateList() {
        ArrayList<TemplateFile> list = new ArrayList<TemplateFile>();
        list.add(new TemplateFile("build.xml", "", BACKUP));
        list.add(new TemplateFile("xcode.properties", ""));
        list.add(new TemplateFile("local.properties", "", KEEP));
        list.add(new TemplateFile("build-impl.xml", "nbproject"));
        list.add(new TemplateFile("xcode.xml", "nbproject"));
        list.add(new TemplateFile("androidsupport.xml", "nbproject"));
        list.add(new TemplateFile("project.properties", "nbproject"));
        return list;
    }

    @Override
    String getTemplateLocation() {
        return "/templates/android/";
    }
}
