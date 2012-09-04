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

package org.xmlvm.ant;

import org.xmlvm.ant.xcode.TrimmerAction;
import org.xmlvm.ant.utils.ReplacementList;
import java.io.File;
import java.io.FileNotFoundException;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.xmlvm.ant.xcode.XcodeSkeleton;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.Comparator;
import java.io.FileReader;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

/**
 * This is an ant task which makes thinner Xcode projects from existing ones.
 * Ths Xcode project should have been built already with XMLVM Xcode project
 * builder.
 */
public class Trimmer extends Task implements Comparator {

    private boolean       shorten   = true;
    private boolean       cleanup   = true;
    private long          seed      = Long.MAX_VALUE;
    private XcodeSkeleton target    = XcodeSkeleton.IPHONE;
    private String        home;
    private String        template  = ReplacementList.DEFAULT_TEMPLATE;
    private String        resources = "";
    private String        resourceroot;
    private final SortedMap<String, String> replacements = new TreeMap<String, String>(this);

    /**
     * Set the home directory of the Xcode project. If the default ant tasks of
     * xmlvm are used, it should be set to build/xcode
     * 
     * @param home
     *            home directory of the Xcode project
     */
    public void setHome(File home) {
        this.home = home.getAbsolutePath();
    }

    /**
     * Whether we want to make more compact code. Long variable types will be
     * trimmed to shorter ones (usually 2-letter words). It is encouraged to
     * enable this feature.
     * 
     * @param shorten
     *            enable compact code. Defaults to true
     */
    public void setShorten(boolean shorten) {
        this.shorten = shorten;
    }

    /**
     * Whether we want to remove unused source files. It is encouraged to enable
     * this feature, although sometimes the dependencies might not work as
     * expected. In this case, change this option to false and try again.
     * 
     * @param cleanup
     *            enable removal of unused source files. Defaults to true
     */
    public void setCleanup(boolean cleanup) {
        this.cleanup = cleanup;
    }

    /**
     * Use a specific text instead of XMLVM
     * 
     * @param template
     *            The text to use. Defaults to "My"
     */
    public void setTemplate(String template) {
        this.template = template;
    }

    /**
     * Set the random seed when creating compact code.
     * 
     * @param seed
     *            The random seed to use. Defaults to a seed based by system
     *            clock.
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

    /**
     * Set a specified Xcode project target
     * 
     * @param target
     *            Could be one of iphone, ipad, ios (both iphone and ipad),
     *            iphone3 (legacy project)
     */
    public void setTarget(String target) {
        this.target = XcodeSkeleton.getTarget(target);
    }

    /**
     * Set the list of resources, to use with this project
     * 
     * @param resources
     *            colon separated list of resources. When an item is directory,
     *            if ends with "/" then the contents of this location is used,
     *            if not a verbatim copy of this directory is used.
     */
    public void setResources(String resources) {
        this.resources = resources;
    }

    /**
     * Set the resource root of this project. In the case the home directory is
     * other from resource directory, with this optional property will set the
     * correct resource directory.
     * 
     * @param resourceroot
     *            The root of resource directory. Defaults to "home"
     */
    public void setResourceroot(String resourceroot) {
        this.resourceroot = resourceroot;
    }

    public void setExtrareplacements(String replacementsFileName) {
        try {
            if (replacementsFileName.length() > 0) {
                BufferedReader in = new BufferedReader(new FileReader(replacementsFileName));
                String line;
                Pattern pattern = Pattern.compile("^\\s*\"([^\\\"]+)\"\\s*->\\s*\"([^\\\"]*)\"");
                while ((line = in.readLine()) != null) {
                    Matcher matcher = pattern.matcher(line);
                    if (matcher.find()) {
                    this.replacements.put(matcher.group(1), matcher.group(2));
                    }
		        }
            in.close();
	        }
        }
        catch (IOException e) {
            System.err.println(e);
        }
    }

    public int compare (Object lhs, Object rhs) {
        String left = (String)lhs;
        String right = (String)rhs;
        return right.compareTo(left);
    }

    @Override
    /**
     * Execute the ant task
     */
    public void execute() throws BuildException {
        if (home == null)
            throw new BuildException("Home directory should be defined.");
        if (resourceroot == null)
            resourceroot = getProject().getBaseDir().getAbsolutePath();
        TrimmerAction trim = new TrimmerAction(shorten, cleanup, home, template, seed, target,
					       resources, resourceroot, replacements);
        try {
            String seedtext = (seed == Long.MAX_VALUE) ? "random seed" : "seed=" + seed;
            System.out.println("Trimming project at path " + home + " with template \"" + template
                    + "\", target \"" + target.name().toLowerCase() + "\" and " + seedtext);
            trim.trim();
        } catch (FileNotFoundException ex) {
            throw new BuildException(ex);
        }
    }
}
