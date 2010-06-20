/*
 * Copyright (c) 2004-2008 XMLVM --- An XML-based Programming Language
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
package org.xmlvm.ant;

import org.xmlvm.ant.xcode.TrimmerAction;
import org.xmlvm.ant.utils.ReplacementList;
import java.io.File;
import java.io.FileNotFoundException;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;

/**
 * This is an ant task which makes thinner Xcode projects from existing ones.
 * Ths Xcode project should have been built already with XMLVM Xcode project builder.
 * @author teras
 */
public class Trimmer extends Task {

    private File home;
    private boolean shorten = true;
    private boolean cleanup = true;
    private long seed = Long.MAX_VALUE;
    private String template = ReplacementList.DEFAULT_TEMPLATE;

    /**
     * Set the home directory of the Xcode project.
     * If the default ant tasks of xmlvm are used, it should be set to build/xcode
     * @param home home directory of the Xcode project
     */
    public void setHome(File home) {
        this.home = home;
    }

    /**
     * Whether we want to make more compact code. Long variable types will be
     * trimmed to shorter ones (usually 2-letter words).
     * It is encouraged to enable this feature.
     * @param shorten enable compact code. Defaults to true
     */
    public void setShorten(boolean shorten) {
        this.shorten = shorten;
    }

    /**
     * Whether we want to remove unused source files. It is encouraged to enable
     * this feature, although sometimes the dependencies might not work as expected.
     * In this case, change this option to false and try again.
     * @param cleanup enable removal of unused source files. Defaults to true
     */
    public void setCleanup(boolean cleanup) {
        this.cleanup = cleanup;
    }

    /**
     * Use a specific text instead of XMLVM
     * @param template The text to use. Defaults to "My"
     */
    public void setTemplate(String template) {
        this.template = template;
    }

    /**
     * Set the random seed when creating compact code.
     * @param seed The random seed to  use. Defaults to a seed based by system clock.
     */
    public void setSeed(String seed) {
        if (!seed.equals("")) {
            try {
                this.seed = Long.parseLong(seed);
            } catch (NumberFormatException ex) {
                System.err.println("Unable to parse " + seed + " as a long number");
                throw (ex);
            }
        }
    }

    @Override
    /**
     * Execute the ant task
     */
    public void execute() throws BuildException {
        if (home == null) {
            throw new BuildException("Home directory should be defined.");
        }
        TrimmerAction trim = new TrimmerAction(shorten, cleanup, home.getPath(), template, seed);
        try {
            String seedtext = (seed == Long.MAX_VALUE) ? "random seed" : "seed=" + seed;
            System.out.println("Trimming project at path " + home.getPath() + " with template \"" + template + "\" and " + seedtext);
            trim.trim();
        } catch (FileNotFoundException ex) {
            throw new BuildException(ex);
        }
    }
}
