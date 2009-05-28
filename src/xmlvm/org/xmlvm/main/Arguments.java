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

package org.xmlvm.main;

import java.util.ArrayList;
import java.util.List;

/**
 * This class parses the arguments given in a string array and makes them easily
 * accessible for the application to use.
 */
public class Arguments {
    // The arguments that are given by the user on the command line.
    public static final String ARG_IN            = "--in=";
    public static final String ARG_OUT           = "--out=";
    public static final String ARG_TARGET        = "--target=";
    public static final String ARG_IPHONE_APP    = "--iphone-app=";
    public static final String ARG_QX_APP        = "--qx-app=";
    public static final String ARG_QX_MAIN       = "--qx-main=";
    public static final String ARG_QX_DEBUG      = "--qx-debug";
    public static final String ARG_VERSION       = "--version";
    public static final String ARG_QUIET         = "--quiet";

    // The parsed values will be stored here.
    private List<String>       option_in         = new ArrayList<String>();
    private String             option_out        = null;
    private Targets            option_target     = Targets.NONE;
    private String             option_iphone_app = null;
    private String             option_qx_app     = null;
    private String             option_qx_main    = null;
    private boolean            option_qx_debug   = false;
    private boolean            option_version    = false;
    private boolean            option_quiet      = false;

    /**
     * Prints usage information and exits the applications.
     * 
     * @param error
     *            An additional error message to be printed before the usage
     *            table is printed.
     */
    private static void usage(String error) {
        String[] msg = {
                "Usage: xmlvm [--in=<path>]",
                "             [--out=<dir>]",
                "              --target=[xmlvm|jvm|clr|dfa|class|exe|js|cpp|python|objc|iphone|qooxdoo|android-on-iphone]",
                "             [--iphone-app=<app-name>]",
                "             [--qx-app=<app-name> --qx-main=<main-class> [--qx-debug]]",
                "             [--quiet] [--version]" };

        System.err.println("Error: " + error);
        for (int i = 0; i < msg.length; i++) {
            System.err.println(msg[i]);
        }
        System.exit(-1);
    }

    /**
     * Creates a new instance that will parse the arguments of the given array.
     */
    public Arguments(String[] argv) {
        // Read command line arguments
        for (int i = 0; i < argv.length; i++) {
            String arg = argv[i];
            if (arg.startsWith(ARG_IN)) {
                option_in.add(arg.substring(ARG_IN.length()));
            } else if (arg.startsWith(ARG_OUT)) {
                if (option_out != null)
                    usage("--out can only be used once");
                option_out = arg.substring(ARG_OUT.length());
            } else if (arg.startsWith(ARG_TARGET)) {
                if (option_target != Targets.NONE)
                    usage("--target can only be specified once");
                String target = arg.substring(ARG_TARGET.length());
                if (target.equals("xmlvm"))
                    option_target = Targets.XMLVM;
                else if (target.equals("jvm"))
                    option_target = Targets.JVM;
                else if (target.equals("clr"))
                    option_target = Targets.CLR;
                else if (target.equals("dfa"))
                    option_target = Targets.DFA;
                else if (target.equals("class"))
                    option_target = Targets.CLASS;
                else if (target.equals("exe"))
                    option_target = Targets.EXE;
                else if (target.equals("js"))
                    option_target = Targets.JS;
                else if (target.equals("cpp"))
                    option_target = Targets.CPP;
                else if (target.equals("python"))
                    option_target = Targets.PYTHON;
                else if (target.equals("objc"))
                    option_target = Targets.OBJC;
                else if (target.equals("iphone"))
                    option_target = Targets.IPHONE;
                else if (target.equals("qooxdoo"))
                    option_target = Targets.QOOXDOO;
                else if (target.equals("android-on-iphone"))
                    option_target = Targets.ANDROIDONIPHONE;
                else
                    usage("Unkown target: " + target);
            } else if (arg.startsWith(ARG_IPHONE_APP)) {
                option_iphone_app = arg.substring(ARG_IPHONE_APP.length());
            } else if (arg.startsWith(ARG_QX_APP)) {
                option_qx_app = arg.substring(ARG_QX_APP.length());
            } else if (arg.startsWith(ARG_QX_MAIN)) {
                option_qx_main = arg.substring(ARG_QX_MAIN.length());
            } else if (arg.equals(ARG_QX_DEBUG)) {
                option_qx_debug = true;
            } else if (arg.equals(ARG_VERSION)) {
                option_version = true;
            } else if (arg.equals(ARG_QUIET)) {
                option_quiet = true;
            } else {
                usage("Unknown parameter: " + arg);
            }
        }

        // Sanity check command line arguments
        performSanityChecks();
    }

    private void performSanityChecks() {
        if (option_target == Targets.NONE)
            option_target = Targets.XMLVM;
        if (option_in.size() == 0)
            usage("Need at least one --in argument");
        if (option_out == null)
            option_out = ".";
        if (((option_target == Targets.IPHONE) || (option_target == Targets.ANDROIDONIPHONE))
                && option_iphone_app == null)
            usage("--target=iphone requires option --iphone-app");
        if (option_qx_app != null && option_qx_main == null)
            usage("--qx-app requires --qx-main");
    }

    public List<String> option_in() {
        return option_in;
    }

    public String option_out() {
        return option_out;
    }

    public Targets option_target() {
        return option_target;
    }

    public String option_iphone_app() {
        return option_iphone_app;
    }

    public String option_qx_app() {
        return option_qx_app;
    }

    public String option_qx_main() {
        return option_qx_main;
    }

    public boolean option_qx_debug() {
        return option_qx_debug;
    }

    public boolean option_version() {
        return option_version;
    }

    public boolean option_quiet() {
        return option_quiet;
    }
}