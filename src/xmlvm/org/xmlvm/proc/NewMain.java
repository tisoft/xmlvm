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

package org.xmlvm.proc;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;

/**
 * This is a new starting point of the suggested refactoring of the old
 * Main.java.
 * 
 * <p>
 * NOTE(shaeberling): This is work in progress and somewhat experimental as
 * well. Use this only of you know what you are doing.
 */
public class NewMain {
    /**
     * XMLVM entry point.
     */
    public static void main(String[] args) {

        // Initialize arguments.
        Arguments arguments = new Arguments(args);

        // Print version if requested.
        if (arguments.option_version()) {
            printVersion();
        }

        // Sets whether log messages should be shown or not.
        Log.setQuiet(arguments.option_quiet());

        // Instantiate the processor.
        XmlvmProcessor processor = new XmlvmProcessor(arguments);

        // 1) Processing.
        if (processor.process()) {
            Log.debug("Processing finished successfully.");
            // 2) Wirting files.
            if (processor.writeOutputFiles()) {
                Log.debug("Files written successfully.");
                // 3) Post-Processing.
                if (processor.postProcess()) {
                    Log.debug("Post-Processing successful.");
                } else {
                    Log.error("Something went wrong during post-processing.");
                }
            } else {
                Log.error("Something went wrong while writing files.");
            }
        } else {
            Log.error("Something went wrong during processing.");
        }
    }

    /**
     * Prints version information.
     */
    public static void printVersion() {
        System.out.println("XMLVM 2 alpha (experimental rebuild)");
        System.out.println("Note: Not all command like arguments activated yet.");
    }
}
