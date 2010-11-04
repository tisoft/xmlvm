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
import java.util.List;
import java.util.Random;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.in.InputProcess.EmptyInputProcess;
import org.xmlvm.proc.out.OutputFile;
import org.xmlvm.util.JarUtil;

/**
 * Creates a template project.
 */
public abstract class TemplateOutputProcess extends XmlvmProcessImpl<EmptyInputProcess> {

    private static final String TEMPL_PROJNAME = "__PROJNAME__";
    private static final String TEMPL_PACKNAME = "__PACKNAME__";
    private static final String TEMPL_SAFENAME = "__SAFENAME__";
    private static final String TEMPL_TRIMSEED = "__XMLVMTRIMMERSEED__";
    private static final String TEMPL_XVMLSDK  = "__XMLVMSDK__";
    //
    private List<OutputFile>    result         = new ArrayList<OutputFile>();
    protected String            safe_name;
    protected String            pack_name;


    public TemplateOutputProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(EmptyInputProcess.class);
    }

    @Override
    public List<OutputFile> getOutputFiles() {
        return result;
    }

    @Override
    public boolean process() {
        String projname = arguments.option_app_name();
        String outpath = arguments.option_out() + "/";
        safe_name = getSafeName(projname);
        if (safe_name.length() < 1) {
            Log.error("Project name should contain at least one ASCII letter");
            return false;
        }
        pack_name = "my." + safe_name;

        Log.debug("Size is " + getTemplateList().size());
        for (TemplateFile file : getTemplateList())
            if (!addFile(file.source, file.dest, outpath + file.path, projname, file.mode))
                return false;
        return true;
    }

    private boolean addFile(String source, String dest, String path, String projname,
            TemplateFile.Mode mode) {
        OutputFile file = new OutputFile();
        file.setFileName(dest);
        file.setLocation(path);
        Log.debug("Adding template file " + source + " to destination " + path + dest);

        if (mode != TemplateFile.Mode.OVERWRITE) {
            File destfileref = new File(path, dest);
            if (destfileref.exists()) {
                if (mode == TemplateFile.Mode.KEEP)
                    return true;
                else {
                    String backupname = dest + ".back";
                    Log.warn("Renaming " + dest + " to " + backupname);
                    destfileref.renameTo(new File(path, backupname));
                }
            }
        }

        if (!file.setDataFromStream(JarUtil.getStream(getTemplateLocation() + source))) {
            Log.error("Unable to find input file " + source);
            return false;
        }
        if (!source.endsWith(".png")) {
            file.setData(file.getData().replace(TEMPL_PROJNAME, projname).replace(TEMPL_PACKNAME,
                    pack_name).replace(TEMPL_SAFENAME, safe_name));
        }
        if (source.endsWith(".properties") || source.endsWith(".classpath")) {
            file.setData(file.getData().replace(TEMPL_TRIMSEED,
                    String.valueOf(new Random().nextLong())).replace(TEMPL_XVMLSDK,
                    JarUtil.findSelfJar()));
        }
        result.add(file);
        return true;
    }

    private String getSafeName(String appname) {
        String safe = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String others = "1234567890_";
        StringBuilder b = new StringBuilder();
        for (char c : appname.toCharArray()) {
            if (b.length() > 0) {
                if (safe.indexOf(c) >= 0 || others.indexOf(c) >= 0)
                    b.append(c);
            } else {
                if (safe.indexOf(c) >= 0)
                    b.append(c);
            }
        }
        return b.toString().toLowerCase();
    }

    abstract ArrayList<TemplateFile> getTemplateList();

    abstract String getTemplateLocation();
}