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

/**
 * Template for new iPhone projects
 * 
 * @author teras
 */
public class IPhoneTemplateOutputProcess extends TemplateOutputProcess {

    public IPhoneTemplateOutputProcess(Arguments arguments) {
        super(arguments);
    }

    @Override
    ArrayList<TemplateFile> getTemplateList() {
        ArrayList<TemplateFile> list = new ArrayList<TemplateFile>();
        list.add(new TemplateFile("build.xml", ""));
        list.add(new TemplateFile("manifest.mf", ""));
        list.add(new TemplateFile("xcode.properties", ""));
        list.add(new TemplateFile(".classpath", ""));
        list.add(new TemplateFile(".project", ""));
        list.add(new TemplateFile("build-impl.xml", "nbproject"));
        list.add(new TemplateFile("xcode.xml", "nbproject"));
        list.add(new TemplateFile("genfiles.properties", "nbproject"));
        list.add(new TemplateFile("project.properties", "nbproject"));
        list.add(new TemplateFile("project.xml", "nbproject"));
        list.add(new TemplateFile("empty.properties", "Java.properties", "nbproject/configs"));
        list.add(new TemplateFile("empty.properties", "Xcode.properties", "nbproject/configs"));
        list.add(new TemplateFile("org.eclipse.jdt.core.prefs", ".settings"));
        list.add(new TemplateFile("demo.png", "resources"));
        list.add(new TemplateFile("Main.java", "src/java/" + pack_name.replace(".", "/")));
        return list;
    }

    @Override
    String getTemplateLocation() {
        return "/templates/iphone/";
    }
}
