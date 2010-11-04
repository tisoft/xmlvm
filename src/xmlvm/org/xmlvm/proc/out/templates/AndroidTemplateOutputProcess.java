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

import java.io.File;
import java.util.ArrayList;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.out.EmptyDirectory;

/**
 * Template for new Android projects
 * 
 * @author teras
 */
public class AndroidTemplateOutputProcess extends AndroidMigrateOutputProcess {

    private final String gen;


    public AndroidTemplateOutputProcess(Arguments arguments) {
        super(arguments);
        gen = arguments.option_out() + File.separator + "gen";
    }

    @Override
    public boolean process() {
        if (super.process()) {
            getOutputFiles().add(new EmptyDirectory(gen));
            return true;
        }
        return false;
    }

    @Override
    ArrayList<TemplateFile> getTemplateList() {
        ArrayList<TemplateFile> list = super.getTemplateList();
        list.add(new TemplateFile("AndroidManifest.xml", ""));
        list.add(new TemplateFile("build.properties", ""));
        list.add(new TemplateFile("default.properties", ""));
        list.add(new TemplateFile(".classpath", ""));
        list.add(new TemplateFile(".project", ""));
        list.add(new TemplateFile("demo.png", "res/drawable"));
        list.add(new TemplateFile("main.xml", "res/layout"));
        list.add(new TemplateFile("strings.xml", "res/values"));
        list.add(new TemplateFile("MainActivity.java", "src/" + pack_name.replace(".", "/")));
        return list;
    }
}
