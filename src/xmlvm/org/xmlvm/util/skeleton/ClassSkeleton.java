
package org.xmlvm.util.skeleton;

import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/**
 * 
 * @author teras
 */
public class ClassSkeleton {

    private static final String COPYRIGHT = "/*\n"
                                                  + " * Copyright (c) 2009 Panayotis Katsaloulis\n"
                                                  + " * \n"
                                                  + " * This program is free software; you can redistribute it and/or modify it under\n"
                                                  + " * the terms of the GNU General Public License as published by the Free Software\n"
                                                  + " * Foundation; either version 2 of the License, or (at your option) any later\n"
                                                  + " * version.\n"
                                                  + " * \n"
                                                  + " * This program is distributed in the hope that it will be useful, but WITHOUT\n"
                                                  + " * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS\n"
                                                  + " * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more\n"
                                                  + " * details.\n"
                                                  + " * \n"
                                                  + " * You should have received a copy of the GNU General Public License along with\n"
                                                  + " * this program; if not, write to the Free Software Foundation, Inc., 675 Mass\n"
                                                  + " * Ave, Cambridge, MA 02139, USA.\n"
                                                  + " * \n"
                                                  + " * For more information, visit the XMLVM Home Page at http://www.xmlvm.org\n"
                                                  + " */\n\n";
    private static final String LINE      = "// ----------------------------------------------------------------------------\n";
    private static final String INIT      = "__init_";
    private static final char   DOT       = '_';
    private static final String PARAM     = "___";
    /* */
    private StringBuffer        hfile;
    private StringBuffer        mfile;
    private StringBuffer        test;
    private final Class         c;

    public ClassSkeleton(Class c) {
        this.c = c;
        hfile = new StringBuffer();
        mfile = new StringBuffer();
        test = new StringBuffer();

        String jclass = c.getName();
        String classname = fixName(jclass);
        String shortname = getShort();

        /* Create .h header */
        hfile.append(COPYRIGHT);
        hfile.append("// ").append(shortname).append('\n');
        hfile.append(LINE);
        hfile.append("typedef ").append(shortname).append(' ').append(classname).append(";\n\n");
        hfile.append("@interface ").append(shortname).append(" (cat_").append(classname).append(
                ");\n");

        /* Create .m header */
        mfile.append(COPYRIGHT);
        mfile.append("#import \"").append(classname).append(".h\"\n\n");
        mfile.append("// ").append(shortname).append('\n');
        mfile.append(LINE);
        mfile.append("@implementation ").append(shortname).append(" (cat_").append(classname)
                .append(");\n\n");

        /* Create .h * .m body */
        for (Constructor constr : c.getConstructors())
            buildMethod(INIT + classname, constr.getParameterTypes(), null, c.getModifiers());
        for (Method meth : c.getMethods())
            if (meth.getDeclaringClass().getName().equals(jclass))
                buildMethod(meth.getName(), meth.getParameterTypes(), meth.getReturnType(), meth
                        .getModifiers());

        /* Create footers */
        hfile.append("@end\n");
        mfile.append("@end\n");

        storeBuffer("out/" + classname + ".h", hfile);
        storeBuffer("out/" + classname + ".m", mfile);
    }

    private void buildMethod(String method, Class[] parameters, Class returntype, int type) {
        if ((type & Modifier.PUBLIC) == 0)
            return; // Only public elements!

        String decl = getMethodDecleration(method, parameters, returntype, type);
        hfile.append(decl).append(";\n");
        mfile.append(decl).append("\n{\n  // TODO: implement code\n}\n\n");
    }

    private String getMethodDecleration(String method, Class[] parameters, Class returntype,
            int type) {
        StringBuffer name = new StringBuffer();
        StringBuffer params = new StringBuffer();

        name.append((type & Modifier.STATIC) == 0 ? "- (" : "+ (");
        name.append(getTypeRef(returntype)).append(") ");

        name.append(fixName(method));
        for (int i = 0; i < parameters.length; i++) {
            Class cc = parameters[i];
            String pname = fixName(cc.getName());
            name.append(PARAM).append(pname);

            params.append(" :").append("(").append(getTypeRef(cc)).append(")").append("a").append(
                    i + 1);
        }
        name.append(params);
        return name.toString();
    }

    private String getTypeRef(Class type) {
        if (type == null)
            return "void";
        if (type.isPrimitive())
            return type.toString();
        else
            return fixName(type.getName()) + "*";
    }

    private String fixName(String oldname) {
        return oldname.replace('.', DOT);
    }

    private String getShort() {
        String classname = c.getName();
        int lastdot = classname.lastIndexOf('.');
        return classname.substring(lastdot + 1, classname.length());
    }

    private boolean storeBuffer(String filename, StringBuffer buffer) {
        FileWriter out = null;
        try {
            out = new FileWriter(filename);
            out.append(buffer);
            out.close();
            return true;
        } catch (IOException ex) {
        } finally {
            try {
                out.close();
            } catch (IOException ex) {
            }
        }
        return false;
    }
}
