/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.proc.out.templates;

import static org.xmlvm.proc.out.templates.TemplateFile.Mode.BACKUP;
import static org.xmlvm.proc.out.templates.TemplateFile.Mode.KEEP;
import static org.xmlvm.proc.out.templates.TemplateFile.Mode.OVERWRITE;
import static org.xmlvm.proc.out.templates.TemplateFile.Mode.ABORT;
import static org.xmlvm.proc.out.templates.TemplateFile.Mode.IGNORE;
import static org.xmlvm.proc.out.templates.TemplateFile.Mode.NEWFILE;

import java.io.File;
import java.util.ArrayList;
import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.out.EmptyDirectory;

/**
 * Template for new Android projects
 * 
 * @author teras
 */
public class AndroidTemplateOutputProcess extends TemplateOutputProcess {

    private final String gen;


    public AndroidTemplateOutputProcess(Arguments arguments, boolean migrate) {
        super(arguments, migrate);
        gen = arguments.option_out() + File.separator + "gen";
    }

    @Override
    public boolean process() {
        if (super.process()) {
            getOutputFiles().add(new EmptyDirectory(gen));
            Log
                    .warn("Currently the Android plugin for Netbeans does not support local.properties file and has a bug which prevents the usage of GUI platform customization. It is required to MANUALLY set your platfom under \"nbproject/project.properties\" by editing property \"platform.active\" or else Netbeans might crash.");
            return true;
        }
        return false;
    }

    @Override
    ArrayList<TemplateFile> getTemplateList() {
        ArrayList<TemplateFile> list = new ArrayList<TemplateFile>();

        list.add(new TemplateFile("AndroidManifest.xml", migrate ? KEEP : ABORT));
        list.add(new TemplateFile("xcode.xml", "nbproject", migrate ? OVERWRITE : ABORT));
        list.add(new TemplateFile("build.xml", migrate ? BACKUP : ABORT));
        list.add(new TemplateFile("project.xml", "nbproject", migrate ? BACKUP : ABORT));
        list.add(new TemplateFile("build-impl.xml", "nbproject", migrate ? BACKUP : ABORT));

        list.add(new TemplateFile("project.properties", "nbproject", NEWFILE));
        list.add(new TemplateFile("androidsupport.xml", "nbproject", OVERWRITE));

        list.add(new TemplateFile("xmlvm.properties", KEEP));
        list.add(new TemplateFile("local.properties", KEEP));
        list.add(new TemplateFile("build.properties", KEEP));
        list.add(new TemplateFile("default.properties", KEEP));
        list.add(new TemplateFile(".classpath", KEEP));
        list.add(new TemplateFile(".project", KEEP));
        list.add(new TemplateFile("genfiles.properties", "nbproject", KEEP));
        list
                .add(new TemplateFile("empty.properties", "Java.properties", "nbproject/configs",
                        KEEP));
        list
                .add(new TemplateFile("empty.properties", "Xcode.properties", "nbproject/configs",
                        KEEP));
        list.add(new TemplateFile("empty.properties", "Android.properties", "nbproject/configs",
                KEEP));

        list.add(new TemplateFile("demo.png", "res/drawable", migrate ? IGNORE : KEEP));
        list.add(new TemplateFile("main.xml", "res/layout", migrate ? IGNORE : KEEP));
        list.add(new TemplateFile("strings.xml", "res/values", migrate ? IGNORE : KEEP));
        list.add(new TemplateFile("MainActivity.java", "src/" + pack_name.replace(".", "/"),
                migrate ? IGNORE : KEEP));
        return list;
    }

    @Override
    String getTemplateLocation() {
        return "/templates/android/";
    }
}
