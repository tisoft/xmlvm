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

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;

import org.xmlvm.Log;

/**
 * This class parses the arguments given in a string array and makes them easily
 * accessible for the application to use.
 */
public class Arguments {
    // The arguments that are given by the user on the command line.

    public static final String    ARG_IN          = "--in=";
    public static final String    ARG_OUT         = "--out=";
    public static final String    ARG_TARGET      = "--target=";
    public static final String    ARG_RESOURCE    = "--resource=";
    public static final String    ARG_LIB         = "--lib=";
    public static final String    ARG_APP_NAME    = "--app-name=";
    public static final String    ARG_QX_MAIN     = "--qx-main=";
    public static final String    ARG_QX_DEBUG    = "--qx-debug";
    public static final String    ARG_DEBUG       = "--debug=";
    public static final String    ARG_VERSION     = "--version";
    public static final String    ARG_HELP        = "--help";
    public static final String    ARG_SKELETON    = "--skeleton=";
    // These are obsolete arguments, being here for compatibility reasons
    public static final String    ARG_IPHONE_APP  = "--iphone-app=";
    public static final String    ARG_QX_APP      = "--qx-app=";
    public static final String    ARG_QUIET       = "--quiet";
    // This is just temporary for activating the new DEX processing.
    public static final String    ARG_USE_DEX     = "--use-dex";
    // The parsed values will be stored here.
    private List<String>          option_in       = new ArrayList<String>();
    private String                option_out      = null;
    private Targets               option_target   = Targets.NONE;
    private List<String>          option_resource = new ArrayList<String>();
    private List<String>          option_lib      = new ArrayList<String>();
    private String                option_app_name = null;
    private String                option_qx_main  = null;
    private boolean               option_qx_debug = false;
    private Log.Level             option_debug    = Log.Level.WARNING;
    private String                option_skeleton = null;
    private boolean               option_use_dex  = false;

    private static final String[] shortUsage      = {
            "Usage: ",
            "xmlvm [--in=<path> [--out=<dir>]]",
            "      [--target=[xmlvm|dexmlvm|jvm|clr|dfa|class|exe|dex|js|cpp|python|objc|iphone|qooxdoo|palmpre]]",
            "      [--skeleton=<type>]", "      [--lib=<name>", "      [--app-name=<app-name>]",
            "      [--resource=<path>]", "      [--qx-main=<main-class> [--qx-debug]]",
            "      [--debug=[none|error|warning|all]]", "      [--version] [--help]" };
    private static final String[] longUsage       = {
            "Detailed usage:",
            "===============",
            "",
            " --in=<path>       Pathname of input files. Can be *.class *.exe and *.xmlvm",
            "",
            " --out=<dir>       Directory of output files (defaults to \".\")",
            "",
            " --target=<target> Desired target, could be one of the following:",
            "    xmlvm            XMLVM output, depending on the input (default)",
            "    dexmlvm          XMLVM_dex output",
            "    jvm              XMLVM_jvm output",
            "    clr              XMLVM_clr output",
            "    dfa              Data Flow Analysis on input files",
            "    class            Java class bytecode",
            "    exe              .NET executable",
            "    dex              DEX bytecode",
            "    js               JavaScript",
            "    cpp              C++ source code",
            "    python           Python",
            "    objc             Objective C source code",
            "    iphone           iPhone Objective-C",
            "    qooxdoo          JavaScript Qooxdoo web application",
            "    palmpre          Palm Pre Javascript",
            " --skeleton=<type> Skeleton to create a new template project:",
            "    iphone            iPhone project skeleton",
            " --lib=<name>      Extra libraries required for the specified target:",
            "    android          Support of android applications",
            " --app-name=<name> Application name, required for iphone, android-on-iphone and qooxdoo targets",
            "",
            " --resource=<path> External non parsable files. Used in iphone and android-on-iphone templates to register auxilliary files",
            "", " --qx-main=<class> Entry point of Qooxdoo application", "",
            " --qx-debug        Create debug information of Qooxdoo target", "",
            " --debug=<level>   Debug information level",
            "    none             Be completely quiet, no information is printed",
            "    error            Only errors will be printed",
            "    warning          Warning and errors will be printed",
            "    all              All debug information (including errors and warnings)", "",
            " --version         Display version information", "",
            " --help            This message", "" };
    private static final String[] Version         = { "XMLVM 2 alpha (experimental rebuild)",
            "Note: Not all command like arguments activated yet." };

    public static void printVersion() {
        printText(Version, System.out);
        System.exit(0);
    }

    private static void longUsage() {
        System.out.println("XMLVM: a flexible and extensible cross-compiler toolchain");
        printText(Version, System.out);
        System.out.println();
        printText(shortUsage, System.out);
        System.out.println();
        printText(longUsage, System.out);
        System.exit(0);
    }

    private static void parseError(String error) {
        System.err.println("Error: " + error);
        printText(shortUsage, System.err);
        System.err.println("Give --help parameter to see more detailed command line instructions.");
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
                    parseError("--out can only be used once");
                option_out = arg.substring(ARG_OUT.length());
            } else if (arg.startsWith(ARG_TARGET)) {
                if (option_target != Targets.NONE)
                    parseError("--target can only be specified once");
                String target = arg.substring(ARG_TARGET.length());
                option_target = Targets.getTarget(target);
                if (option_target == null)
                    parseError("Unkown target: " + target);
            } else if (arg.startsWith(ARG_RESOURCE)) {
                option_resource.add(arg.substring(ARG_RESOURCE.length()));
            } else if (arg.startsWith(ARG_LIB)) {
                option_lib.add(arg.substring(ARG_LIB.length()));
            } else if (arg.startsWith(ARG_APP_NAME)) {
                option_app_name = arg.substring(ARG_APP_NAME.length());
            } else if (arg.startsWith(ARG_QX_MAIN)) {
                option_qx_main = arg.substring(ARG_QX_MAIN.length());
            } else if (arg.equals(ARG_QX_DEBUG)) {
                option_qx_debug = true;
            } else if (arg.equals(ARG_VERSION)) {
                printVersion();
            } else if (arg.startsWith(ARG_DEBUG)) {
                option_debug = Log.Level.getLevel(arg.substring(ARG_DEBUG.length()));
            } else if (arg.equals(ARG_HELP)) {
                longUsage();
            } else if (arg.startsWith(ARG_SKELETON)) {
                if (option_skeleton != null)
                    parseError("--skeleton can only be specified once");
                option_skeleton = arg.substring(ARG_SKELETON.length());
                if (!option_skeleton.equals("iphone"))
                    parseError("Unknown skeleton: " + option_skeleton);
                // Obsolete arguments
            } else if (arg.startsWith(ARG_IPHONE_APP)) {
                option_app_name = arg.substring(ARG_IPHONE_APP.length());
            } else if (arg.startsWith(ARG_QX_APP)) {
                option_app_name = arg.substring(ARG_QX_APP.length());
            } else if (arg.equals(ARG_QUIET)) {
                option_debug = Log.Level.ERROR;
            } else if (arg.equals(ARG_USE_DEX)) {
                option_use_dex = true;
            } else {
                parseError("Unknown parameter: " + arg);
            }
        }

        // Sanity check command line arguments
        performSanityChecks();
    }

    private void performSanityChecks() {
        if (option_skeleton != null && option_target != Targets.NONE) {
            parseError("Only one argument of '--target' or '--project-skeleton' is allowed");
        }
        if (option_skeleton != null && option_lib.size() > 0) {
            parseError("Argument '--project-skeleton' does not support '--lib'");
        }
        if (option_skeleton != null)
            option_target = Targets.IPHONETEMPLATE;
        if (option_target == Targets.IPHONETEMPLATE) {
            // Clearing all inputs will force the EmptyInputProcess to be
            // created.
            option_in.clear();
            if (option_app_name == null)
                parseError("--skeleton=iphone requires option --app-name");
        }
        if (option_target == Targets.NONE)
            option_target = Targets.XMLVM;

        if (option_lib.contains("android")) {
            option_lib.remove("android");
            if (option_target == Targets.IPHONE)
                option_target = Targets.IPHONEANDROID;
            else if (option_target == Targets.PREANDROID) {
            } else
                parseError("--lib=android is meaningless when not --target=[iphone|palmpre]");
        }
        if (option_lib.size() > 0)
            parseError("--lib=" + option_lib.get(0) + " is not supported");

        // Only skeleton creation mode supports empty inputs.
        if ((option_skeleton == null || option_skeleton.isEmpty()) && option_in.size() == 0)
            parseError("Need at least one --in argument");
        if (option_out == null)
            option_out = ".";
        if ((option_target == Targets.IPHONE || option_target == Targets.IPHONEANDROID || option_target == Targets.PREANDROID)
                && option_app_name == null)
            parseError("--target=[iphone|palmpre] requires option --app-name");
        if (option_target == Targets.QOOXDOO && option_app_name != null && option_qx_main == null)
            parseError("--target=qooxdoo with --qx-app requires --qx-main");
        if (option_debug == null)
            parseError("Unknown --debug level");
    }

    public List<String> option_in() {
        return option_in;
    }

    public String option_out() {
        return option_out;
    }

    public List<String> option_resource() {
        return option_resource;
    }

    public Targets option_target() {
        return option_target;
    }

    public String option_app_name() {
        return option_app_name;
    }

    public String option_qx_main() {
        return option_qx_main;
    }

    public boolean option_qx_debug() {
        return option_qx_debug;
    }

    public Log.Level option_debug() {
        return option_debug;
    }

    public boolean option_use_dex() {
        return option_use_dex;
    }

    private static final void printText(String[] txt, PrintStream out) {
        for (int i = 0; i < txt.length; i++)
            out.println(txt[i]);
    }
}
