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

package org.xmlvm;

import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessor;
import org.xmlvm.util.Timer;

/**
 * This is a new starting point of the suggested refactoring of the old
 * Main.java.
 */
public class Main {
    /**
     * XMLVM entry point.
     */
    public static void main(String[] args) {

        // Initialize arguments.
        Arguments arguments = new Arguments(args);

        // Sets whether log messages should be shown or not.
        Log.setLevel(arguments.option_debug());

        // Enable a timer if wanted.
        Timer timer = null;
        if (arguments.option_enable_timer()) {
            (timer = new Timer("XMLVM total execution time")).start();
        }

        // Instantiate the processor.
        XmlvmProcessor processor = new XmlvmProcessor(arguments);

        try {
            // 1) Processing.
            if (processor.process()) {
                Log.debug("Processing finished successfully.");
                // 2) Writing files.
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
        } catch (OutOfMemoryError e) {
            Log.error("Oh no, XMLVM needs more memory. Try running with -Xmx1G.");
            return;
        }

        // If timer was configured, print result.
        if (timer != null) {
            Log.debug(timer.stop().toString());
        }
    }
}
