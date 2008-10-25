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
 * For more information, visit the XMLVM Home Page at
 * http://www.xmlvm.org
 */

package org.xmlvm;

public class XmlvmArguments {
  private boolean option_js = false;
  private boolean option_cpp = false;
  private boolean option_objc = false;
  private String option_objc_header = null;
  private boolean option_python = false;
  private boolean option_dfa = false;
  private boolean option_jvm = false;
  private boolean option_clr = false;
  private boolean option_exe = false;
  private boolean option_api = false;
  private boolean option_java = false;
  private boolean option_console = false;
  private String option_out = null;
  private boolean option_import = false;
  private boolean option_recursive = false;
  private String option_class = null;
  private boolean option_pack = false;
  
  private static void usage(String error)
  {
      String[] msg = {
          "Usage: xmlvm [--js|--cpp] [--import] [--recursive] [--console|--out=<file>] <class>",
          "  --js            : Generate JavaScript",
          "  --createassembly: Create assembly file",
          "  --compress      : Compress JavaScript assembly file",
          "  --cpp           : Generate C++",
          "  --import        : Generate import list of referenced externals",
          "  --console       : Output is to be written to the console.",
          "  --out           : Output directory.",
          "  --recursive     : Recursivley scan through the referenced externals",
          "  <class>         : Byte code to be translated. If <class> ends on '.exe',",
          "                    the bytecode is assumed to the a .NET executable file",
          "                    with the same name. If <class> ends on '.class', the",
          "                    bytecode is assumed to be of JVM format in a file with",
          "                    the same name. Otherwise, <class> is looked up via CLASSPATH.",
          "  If neither --js nor --cpp is specified, the output will be XMLVM.",
          "  If the option --console is not given, the output will be written to a",
          "  file with the same name as <class> and suffix one of .xmlvm, .js, or .cpp"};

      System.err.println("Error: " + error);
      for (int i = 0; i < msg.length; i++)
          System.err.println(msg[i]);
      System.exit(-1);
  }

  public XmlvmArguments(String[] argv) {
    // Read command line arguments
    for (int i = 0; i < argv.length; i++) {
        String arg = argv[i];
        if (arg.equals("--js")) {
            option_js = true;
            continue;
        }
        if (arg.equals("--cpp")) {
            option_cpp = true;
            continue;
        }
        if (arg.equals("--objc")) {
            option_objc = true;
            continue;
        }
        if (arg.startsWith("--objc-header=")) {
            option_objc_header = arg.substring(14);
            continue;
        }
        if (arg.equals("--python")) {
            option_python = true;
            continue;
        }
        if (arg.equals("--dfa")) {
            option_dfa = true;
            continue;
        }
        if (arg.equals("--jvm")) {
            option_jvm = true;
            continue;
        }
        if (arg.equals("--clr")) {
            option_clr = true;
            continue;
        }
        if (arg.equals("--exe")) {
            option_exe = true;
            continue;
        }
        if (arg.equals("--api")) {
            option_api = true;
            continue;
        }
        if (arg.equals("--java")) {
            option_java = true;
            continue;
        }
        if (arg.equals("--console")) {
            option_console = true;
            continue;
        }
        if (arg.startsWith("--out=")) {
            option_out = arg.substring(6);
            continue;
        }
        if (arg.equals("--import")) {
            option_import = true;
            continue;
        }
        if (arg.equals("--recursive")) {
            option_recursive = true;
            continue;
        }
        if (arg.equals("--pack")) {
            option_pack = true;
            return;
        }
        if (option_class != null)
            usage("Unknown parameter: " + arg);
        option_class = arg;
    }

    // Check command line arguments
    if (option_js && option_cpp)
        usage("Cannot specify --js and --cpp at the same time");
    if (option_class == null)
        usage("No class file specified");
    if (option_java && option_console)
        usage("Cannot output class file to console.  Must specify --out=<file>");
  }

  public boolean js() {
    return option_js;
  }

  public boolean option_js() {
    return option_js;
  }

  public boolean option_cpp() {
    return option_cpp;
  }

  public boolean option_objc() {
    return option_objc;
  }

  public String option_objc_header() {
    return option_objc_header;
  }

  public boolean option_python() {
    return option_python;
  }

  public boolean option_dfa() {
    return option_dfa;
  }

  public boolean option_jvm() {
    return option_jvm;
  }

  public boolean option_clr() {
    return option_clr;
  }

  public boolean option_exe() {
    return option_exe;
  }

  public boolean option_api() {
    return option_api;
  }

  public boolean option_java() {
    return option_java;
  }

  public boolean option_console() {
    return option_console;
  }

  public String option_out() {
    return option_out;
  }

  public boolean option_import() {
    return option_import;
  }

  public boolean option_recursive() {
    return option_recursive;
  }

  public String option_class() {
    return option_class;
  }

  public boolean option_pack() {
    return option_pack;
  }
}
